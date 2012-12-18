/*
 ledshirt.c
 * main file for blinky led shirt.
 * https://github.com/noahp/ledshirt.git
 */

#include <stdlib.h>
#include <stdint.h>
#include <xc.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ  16000000
#endif

// PIC16F1503 Configuration Bit Settings

#pragma config WDTE=OFF, MCLRE=ON, CP=OFF, FOSC=INTOSC

//__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_OFF & MCLRE_ON & CP_OFF & BOREN_ON & CLKOUTEN_OFF);
//__CONFIG(WRT_OFF & STVREN_ON & BORV_LO & LPBOR_OFF & LVP_ON);


//config clock
void config_clock(void)
{
    OSCCONbits.IRCF = 0b1111;   // HF internal osc @ 16MHz
    //OSCCONbits.SCS = 0b11;      // internal osc block
}

//config port pins
void config_port(void)
{
    // porta
    PORTA = 0;
    LATA = 0;
    ANSELA = 0;
    TRISA = 0b11111011;     // A2, output, A5, input

    // portc
    PORTC = 0;
    LATC = 0;
    TRISC = 0b11111000;     // C0, C1, C2, output
}

//config timer
void config_timer(void)
{
    // setup timer0 for 100ms
    TMR0 = 0;
    OPTION_REGbits.TMR0CS = 0;
    OPTION_REGbits.PSA = 1;
    //OPTION_REGbits.PS = 0b111;  // 1:256 scale
}

//config interrupts
void config_interrupts(void)
{
    // enable timer interrupts
    INTCONbits.TMR0IF = 0;
    INTCONbits.TMR0IE = 1;
    INTCONbits.GIE = 1;
}

unsigned int blinkMode = 1;

void interrupt Timer0_ISR(void)
{
    static unsigned char blinkStage = 0;
    static unsigned int counter = 0;
    if(INTCONbits.TMR0IF){
        INTCONbits.TMR0IF = 0;

        if(counter++ > 1000){
            counter = 0;

            switch(blinkMode){
                default:
                    blinkMode = 0;
                case 0:
                    LATAbits.LATA2 = 0;
                    break;
                case 1:
                    if(blinkStage < 1){
                        LATAbits.LATA2 = 1;
                    }
                    else{
                        LATAbits.LATA2 = 0;
                    }

                    blinkStage = (blinkStage+1)%3;
                    break;
                case 2:
                    LATAbits.LATA2 = 1;
                    break;
            }
        }
    }
}

#define NUM_MODES 3
void main(int argc, char** argv) {
    // init
    config_clock();
    config_port();
    config_timer();
    config_interrupts();

    while(1){
//        if(!LATAbits.LATA5){
//            __delay_ms(20);
//            if(!LATAbits.LATA5){
//                blinkMode = (blinkMode+1)%2;
//            }
//        }
    }
}
