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

//config port pins
void config_port(void)
{
    // porta
    PORTA = 0;
    LATA = 0;
    ANSELA = 0;
    TRISA = 0b11111111;     // A5, input
/*
    // portc
    PORTC = 0;
    LATC = 0;
    TRISC = 0b11111000;     // C0, C1, C2, output*/
}

//config timer
void config_timer(void)
{/*
    // setup timer0
    TMR0 = 0;
    OPTION_REGbits.TMR0CS = 0;
    OPTION_REGbits.PSA = 1;
    //OPTION_REGbits.PS = 0b111;  // 1:256 scale
    // we want to overflow after 250 instruction cycles to make math nicer
    TMR0bits.TMR0 = 5;*/

    /*// setup timer1
    TMR1 = 0;
    T1CONbits.TMR1CS = 0b01;    // fosc source
    T1CONbits.TMR1ON = 1;
    TMR1Hbits.TMR1H = 0xFF;     // load for 100kHz operation @ fosc = 16MHz
    TMR1Lbits.TMR1L = 0x5F;*/
}

//config pwm
void config_pwm(void)
{/*
    // tmr2 config
    T2CONbits.T2CKPS = 0b00;    //prescale is 1
    PR2bits.PR2 = 39;           //39+1 for 100kHz operation
    T2CONbits.TMR2ON = 1;       //tmr2 on

    // pwm3 on A2
    PWM3CONbits.PWM3POL = 0;    //active high
    PWM3DCHbits.PWM3DCH = 0b00000100;    //load duty cycle of 16/(4*(pr2+1)) = 0.1, 10%
    PWM3DCHbits.PWM3DCH = 0b00010100;    //load duty cycle of 80/(4*(pr2+1)) = 0.5, 50%
    PWM3DCLbits.PWM3DCL = 0;
    PWM3CONbits.PWM3EN = 1;     //turn it on
    PWM3CONbits.PWM3OE = 1;     //output enable

    // pwm4 on C1
    PWM4CONbits.PWM4POL = 0;    //active high
    PWM4DCHbits.PWM4DCH = 0b00000100;    //load duty cycle of 16/(4*(pr2+1)) = 0.1, 10%
    PWM4DCHbits.PWM4DCH = 0b00010100;    //load duty cycle of 80/(4*(pr2+1)) = 0.5, 50%
    PWM4DCLbits.PWM4DCL = 0;
    PWM4CONbits.PWM4EN = 1;     //turn it on
    PWM4CONbits.PWM4OE = 1;     //output enable*/
}

//config interrupts
void config_interrupts(void)
{/*
    // enable timer interrupts
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 1;
    /*PIR1bits.TMR1IF = 0;
    PIE1bits.TMR1IE = 1;*/
    INTCONbits.GIE = 1;
    //INTCONbits.PEIE = 1;
}

void sleepy(void)
{/*
    //INTCONbits.PEIE = 0;
    //PIE1bits.TMR1IE = 0;
    //T1CONbits.TMR1ON = 0;
    INTCONbits.TMR0IE = 0;
    PWM3CONbits.PWM3OE = 0;     //output disable
    PWM3CONbits.PWM3EN = 0;
    PWM4CONbits.PWM4OE = 0;     //output disable
    PWM4CONbits.PWM4EN = 0;
    T2CONbits.TMR2ON = 0;       //tmr2 off*/
    LATAbits.LATA5 = 0;
}

void wakey(void)
{/*
    //PIE1bits.TMR1IE = 1;
    //T1CONbits.TMR1ON = 1;
    INTCONbits.TMR0IE = 1;
    T2CONbits.TMR2ON = 1;       //tmr2 on
    PWM3CONbits.PWM3EN = 1;
    PWM4CONbits.PWM4EN = 1;*/
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
unsigned int blinkMode = 0;
unsigned int wakeUp = 0;
char LED_ON = 0;

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

    while(1);

//    if(PIR1bits.TMR1IF){
//        PIR1bits.TMR1IF = 0;
//        TMR1Hbits.TMR1H = 0xFF;     // load for 100kHz operation @ fosc = 16MHz
//        TMR1Lbits.TMR1L = 0x5F;
//
//        if(LED_ON){
//            LATAbits.LATA2 = 1;//!PORTAbits.RA2;
//        }
//        else{
//            LATAbits.LATA2 = 0;
//        }
//    }
    
    /*if(INTCONbits.TMR0IF){
        INTCONbits.TMR0IF = 0;

        // we want to overflow after 250 instruction cycles to make math nicer
        TMR0bits.TMR0 = 5;

        // control pwm here
        if(LED_ON){
            PWM3CONbits.PWM3OE = 1;     //output enable
            PWM4CONbits.PWM4OE = 1;
        }
        else{
            PWM3CONbits.PWM3OE = 0;     //output disable
            PWM4CONbits.PWM4OE = 0;
        }

        // run mode managed here (every 10ms)
        if(counter++ > 160){
            counter = 0;

            // wakeUp timeout
            if(wakeUp){
                wakeUp--;
            }

            // run button check here
            if(!PORTAbits.RA5){
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
                    if(blinkStage < 5){
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
    }*/
}

void main(int argc, char** argv) {
    // init
    config_port();
    config_timer();
    config_interrupts();
    config_pwm();

    enable_ext_interrupts();
    sleepy();

    while(1);

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
