/*
 ledshirt.c
 * main file for blinky led shirt.
 * https://github.com/noahp/ledshirt.git
 */

// PIC12F1822 Configuration Bit Settings

#include <xc.h>

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = ON        // Internal/External Switchover (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config PLLEN = ON       // PLL Enable (4x PLL enabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)

#include <stdlib.h>
#include <stdint.h>

//config main clock
void config_clock(void)
{
    // set high speed internal oscillator @ 16MHz
    OSCCONbits.IRCF = 0b1111;

    // wait for osc. to be ready to use
    while(!OSCSTATbits.HFIOFR);
}

//config port pins
void config_port(void)
{
    // porta
    PORTA = 0;
    LATA = 0;
    ANSELA = 0;
    TRISA = 0b11111011;     // A5 input, A2 output

    // pwm P1A on pin A2
    //APFCONbits.CCP1SEL = 0;
}

//config timer
void config_timer(void)
{
    // setup timer0
    TMR0 = 0;
    OPTION_REGbits.TMR0CS = 0;
    OPTION_REGbits.PSA = 1;
    //OPTION_REGbits.PS = 0b111;  // 1:256 scale
    // we want to overflow after 250 instruction cycles to make math nicer
    TMR0bits.TMR0 = 5;
}

//config pwm
void config_pwm(void)
{
    // tmr2 config
    T2CONbits.T2CKPS = 0b00;    //prescale is 1
    PR2bits.PR2 = 19;           //19+1 for 50kHz operation
    T2CONbits.TMR2ON = 1;       //tmr2 on

    // pwm1A on A2
    CCP1CONbits.CCP1M = 0b1100; //PWM mode: P1A, P1C active-high
    CCP1CONbits.P1M = 0b00;     //00 = Single output; P1A modulated
    CCPR1Lbits.CCPR1L = 0b00000111; //pwm duty cycle msb's
    CCP1CONbits.DC1B = 0b11;    //pwm duty cycle lsb's
}

//config interrupts
void config_interrupts(void)
{
    // clear and get ready for tmr0 interrupt
    INTCONbits.TMR0IF = 0;
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    
    
    INTCONbits.TMR0IE = 1;      //tmr0 interrupt on
}

void sleepy(void)
{
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 0;
    TRISAbits.TRISA2 = 1;       //pwm output disable
    T2CONbits.TMR2ON = 0;       //tmr2 off
    LATAbits.LATA5 = 0;
}

void wakey(void)
{
    INTCONbits.TMR0IE = 1;      //tmr0 interrupt on
    T2CONbits.TMR2ON = 1;       //tmr2 on
}

void enable_ext_interrupts(void)
{
    IOCAFbits.IOCAF5 = 0;
    IOCANbits.IOCAN5 = 1;
    INTCONbits.IOCIF = 0;
    INTCONbits.IOCIE = 1;
}

void disable_ext_interrupts(void)
{
    INTCONbits.IOCIE = 1;
    INTCONbits.IOCIF = 0;
    IOCANbits.IOCAN5 = 1;
    IOCAFbits.IOCAF5 = 0;
}

#define NUM_MODES 3
unsigned int blinkMode = 1; // on reset, blink is active
unsigned int wakeUp = 0;
char LED_ON = 1;

void interrupt ISR(void)
{
    static unsigned char blinkStage = 0;
    static unsigned int counter = 0;
    static unsigned int buttonPress = 0;
#define BUTTONDEBOUNCE 320

    if(IOCAFbits.IOCAF5){
        IOCAFbits.IOCAF5 = 0;
        disable_ext_interrupts();
        wakeUp = 500;
        wakey();
    }
    
    if(INTCONbits.TMR0IF){
        INTCONbits.TMR0IF = 0;

        // we want to overflow after 250 instruction cycles to make math nicer
        TMR0bits.TMR0 = 5;

        // control pwm here
        if(LED_ON){
            //LATAbits.LATA2 = 1;
            //TRISAbits.TRISA2 = 0;       // pwm output enable
            // set output high
            PORTAbits.RA2 = 1;
            LATAbits.LATA2 = 1;
        }
        else{
            //LATAbits.LATA2 = 0;
            //TRISAbits.TRISA2 = 1;       // pwm output disable
            // set output low too
            PORTAbits.RA2 = 0;
            LATAbits.LATA2 = 0;
        }

        // run mode managed here (every 10ms)
        if(counter++ > 160){
            counter = 0;

            // wakeUp timeout
            if(wakeUp){
                wakeUp--;
            }

            // run button check here
            if(0){//!PORTAbits.RA5){
                if(buttonPress++ > 30){
                    buttonPress = 0;
                    blinkMode = (blinkMode + 1)%NUM_MODES;
                }
            }
            else{
                buttonPress = 0;
            }

            switch(blinkMode){
                default:
                    blinkMode = 0;
                case 0:
                    LED_ON = 0;
                    break;
                case 1:
                    if(blinkStage < 3){
                        LED_ON = 1;
                    }
                    else{
                        LED_ON = 0;
                    }

                    blinkStage = (blinkStage+1)%15;
                    break;
                case 2:
                    LED_ON = 1;
                    break;
            }
        }
    }
}

void main(int argc, char** argv) {
    // init
    config_clock();
    config_port();
    
    // below is probably redundant
    PORTAbits.RA2 = 1;
    LATAbits.LATA2 = 1;
            
    config_timer();
    config_interrupts();
    //config_pwm();

    while(1){
        // sleep when led is off, until ext interrupt wakes us up
        if((blinkMode == 0) && (wakeUp == 0)){
            // enable external interrupt on A5
            enable_ext_interrupts();
            sleepy();
            asm("SLEEP");
        }
    }
}
