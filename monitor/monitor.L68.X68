*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
STACK       EQU     $80800      RAM location for stack

    DC.L STACK ;
    DC.L MAIN ;
    
    ORG $64
    DC.L IRQ1
    ORG $68
    DC.L IRQ2
    ORG $6C
    DC.L IRQ3
    ORG $70
    DC.L IRQ4
    ORG $74
    DC.L IRQ5
    ORG $78
    DC.L IRQ5
    ORG $7C
    DC.L IRQ6
    ORG $80
    DC.L IRQ7
    
 
    ORG $BC
    DC.L PRINTCHAR


   ORG    $0500
START:                  ; first instruction of program
MAIN:   
    MOVEA.L #PA,A4
loop:
    
    MOVE.B #$AA,D0
    MOVE.W #INT_ON,SR
    MOVE.B D0,(RAM)
    MOVE.B (RAM),D0
    MOVE.B D0,(A4)
    BSR PRINTBANNER
DO_NOTHING:
    
    JMP DO_NOTHING
    
    STOP #$2700    ;enable Supervisor mode and Interrupt
    
    
    
PRINTCHAR:  ; Prints the char in D1
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
READ_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE READ_STATUS
    MOVE.B D1,(A1)
    RTE


PRINTBANNER:  
    LEA BOOT_MESSAGE(PC),A0
    
PRINTCHARLOOP1:
    MOVE.B (A0)+,D1 
    CMP.B #0,D1
    BEQ NULL_CHAR
    MOVE.B #6,D0
    TRAP #15
    JMP PRINTCHARLOOP1
NULL_CHAR
    MOVE.B #6,D0
    TRAP #15 
    RTS 
    

IRQ1:  ;
     MOVE.B #3,D0
     LEA IRQ_1(PC),A0
IRQ1_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ1
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ1_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ1_STATUS
    MOVE.B D1,(A1)
    JMP IRQ1_LOOP
SALIR_IRQ1:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ1_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ1_STATUS2
    MOVE.B D1,(A1)
    RTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ2:  ;_rdf from FIFO
     MOVE.B #3,D0
     LEA IRQ_2(PC),A0
IRQ2_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ2
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ2_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ2_STATUS
    MOVE.B D1,(A1)
    JMP IRQ2_LOOP
SALIR_IRQ2:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ2_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ2_STATUS2
    MOVE.B D1,(A1)
    RTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ3:  ;From IPL0 
     MOVE.B #3,D0
     LEA IRQ_3(PC),A0
IRQ3_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ3
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ3_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ3_STATUS
    MOVE.B D1,(A1)
    JMP IRQ3_LOOP
SALIR_IRQ3:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ3_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ3_STATUS2
    MOVE.B D1,(A1)
    RTE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ4:  ;From IPL0 
     MOVE.B #3,D0
     LEA IRQ_4(PC),A0
IRQ4_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ4
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ4_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ4_STATUS
    MOVE.B D1,(A1)
    JMP IRQ4_LOOP
SALIR_IRQ4:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ4_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ4_STATUS2
    MOVE.B D1,(A1)
    RTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ5:  ;From IPL2 timer Interrupt
     MOVE.B #5,D0
       RTE
     LEA IRQ_5(PC),A0
IRQ5_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ5
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ5_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ5_STATUS
    MOVE.B D1,(A1)
    JMP IRQ5_LOOP
SALIR_IRQ5:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ5_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ5_STATUS2
    MOVE.B D1,(A1)
    RTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ6:  ;From IPL0 
     MOVE.B #3,D0
     LEA IRQ_6(PC),A0
IRQ6_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ6
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ6_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ6_STATUS
    MOVE.B D1,(A1)
    JMP IRQ6_LOOP
SALIR_IRQ6:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ6_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ6_STATUS2
    MOVE.B D1,(A1)
    RTE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IRQ7:  ;From IPL0 
     MOVE.B #3,D0
     LEA IRQ_7(PC),A0
IRQ7_LOOP:
     MOVE.B (A0)+,D1 
     CMP.B #0,D1
     BEQ SALIR_IRQ7
     MOVEA.L #SERSTATUS_TXE,A3
     MOVEA.L #SEROUT,A1
IRQ7_STATUS:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ7_STATUS
    MOVE.B D1,(A1)
    JMP IRQ7_LOOP
SALIR_IRQ7:
    MOVEA.L #SERSTATUS_TXE,A3
    MOVEA.L #SEROUT,A1
IRQ7_STATUS2:
    MOVE.B (A3),D0
    BTST #0,D0 ;is TXE 0?
    BNE IRQ7_STATUS2
    MOVE.B D1,(A1)
    RTE
    


LOADADDR    EQU $00000

; 68Katy memory map
ROMBASE	    EQU $00000
PA          EQU $58000
SERIN       EQU $78000
SEROUT      EQU $7A000
SERSTATUS_RDF   EQU $7C000
SERSTATUS_TXE   EQU $7D000
DOUT        EQU $7E000
RAM         EQU $80000
RAMTOP      EQU $FFFFF
SALTO       EQU $803
INT_ON   EQU  $2000
IRQ_1 DC.B  'IRQ1',13,0
IRQ_2 DC.B  'IRQ2',13,0
IRQ_3 DC.B  'IRQ3',13,0
IRQ_4 DC.B  'IRQ4',13,0
IRQ_5 DC.B  'IRQ5',13,0
IRQ_6 DC.B  'IRQ6',13,0
IRQ_7 DC.B  'IRQ7',13,0
KEYPUSHED DC.B  'KEY',13,0
BOOT_MESSAGE DC.B 'DaliSoft 68008 Based Computer v0.1 9 June 2017',13,0

    END    START        ; last line of source





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
