  __CONFIG _XT_OSC & _WDTE_OFF & _PWRTE_ON & _CP_OFF

  LIST  P=16F84A
  INCLUDE <P16F84A.INC>
  
                   ORG   0X00
                   GOTO  CONFIGURACION

CONFIGURACION:
                   BSF   STATUS,RP0
                   CLRF  TRISA
                   CLRF  TRISB
                   BCF   STATUS,RP0
                   CLRF  PORTA
                   CLRF  PORTB

MAIN:
                   BSF   PORTA,0
                   BSF   PORTB,0
                   GOTO  MAIN
                   END     