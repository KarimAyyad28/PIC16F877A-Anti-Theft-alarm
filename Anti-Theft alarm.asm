
_main:

;Anti-Theft alarm.c,1 :: 		void main() {
;Anti-Theft alarm.c,2 :: 		TRISB=0b01111111;
	MOVLW      127
	MOVWF      TRISB+0
;Anti-Theft alarm.c,3 :: 		TRISC=0b00000000;
	CLRF       TRISC+0
;Anti-Theft alarm.c,4 :: 		PORTC=0;
	CLRF       PORTC+0
;Anti-Theft alarm.c,5 :: 		while (PORTB.RB6==0);
L_main0:
	BTFSC      PORTB+0, 6
	GOTO       L_main1
	GOTO       L_main0
L_main1:
;Anti-Theft alarm.c,7 :: 		while (PORTB.RB0==0&&PORTB.RB1==0&&PORTB.RB2==0&&PORTB.RB3==0&&PORTB.RB4==0&&PORTB.RB5==0);
L_main2:
	BTFSC      PORTB+0, 0
	GOTO       L_main3
	BTFSC      PORTB+0, 1
	GOTO       L_main3
	BTFSC      PORTB+0, 2
	GOTO       L_main3
	BTFSC      PORTB+0, 3
	GOTO       L_main3
	BTFSC      PORTB+0, 4
	GOTO       L_main3
	BTFSC      PORTB+0, 5
	GOTO       L_main3
L__main6:
	GOTO       L_main2
L_main3:
;Anti-Theft alarm.c,8 :: 		PORTC=0b00000011;
	MOVLW      3
	MOVWF      PORTC+0
;Anti-Theft alarm.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
