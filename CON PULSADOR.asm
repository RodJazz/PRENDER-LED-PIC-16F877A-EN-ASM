   __CONFIG _XT_OSC & _WDTE_OFF & _PWRTE_ON & _CP_OFF & _BOREN_OFF & _LVP_OFF 

   LIST p=16F877A
   INCLUDE <P16F877A.INC>
              ORG    0X00
              GOTO   CONFIGURAR
              ORG    0X05
CONFIGURAR:
           BCF     STATUS,RP1        ;INGRESAMOS AL BANCO 1, DONDE RP1=0 Y RP0=1          
           BSF     STATUS,RP0
           MOVLW   B'11111110'       ;CONFIGURAMOS EL BIT RA0 COMO SALIDA
           MOVWF   TRISD
           MOVLW   B'11111110'            
           MOVWF   TRISB                  
           BCF     STATUS,RP0             
           CLRF    PORTD                  
           CLRF    PORTB                  
MAIN:
           BTFSS   PORTD,1
           GOTO    MAIN  
           BSF     PORTD,0
           BSF     PORTB,0
           GOTO    MAIN
           END