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

//config interrupts
void config_interrupts(void)
{
    // enable external interrupts
    INTCONbits.IOCIE = 1;
    IOCANbits.IOCAN5 = 1;   // enable A5 negative interrupt
}

#define NUM_MODES 2
void main(int argc, char** argv) {
    unsigned int running = 0;

    // init
    config_clock();
    config_port();
    config_interrupts();

    while(1){
        // check for button interrupt
        if(IOCAFbits.IOCAF5){
            // enable pos interrupt while we debounce
            IOCAFbits.IOCAF5 = 0;
            IOCAPbits.IOCAP5 = 1;
            // wait some time and check the pin
            __delay_ms(100);
            if((!LATAbits.LATA5) && (!IOCAFbits.IOCAF5)){
                running = (running+1)%NUM_MODES;
            }

            // clear the interrupt flag and disable pos int
            IOCAPbits.IOCAP5 = 0;
            IOCAFbits.IOCAF5 = 0;
        }
        //LATAbits.LATA2 = 1;
        switch(running){
            default:
                running = 0;
            case 0:
                LATAbits.LATA2 = 0;
                break;
            case 1:
                LATAbits.LATA2 = 1;
                __delay_ms(100);
                LATAbits.LATA2 = 0;
                __delay_ms(200);
                break;
            case 2:
                LATAbits.LATA2 = 1;
                break;
        }

    }
}
