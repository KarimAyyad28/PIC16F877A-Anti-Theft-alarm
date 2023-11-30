#line 1 "C:/Users/KarimAyyad28/Desktop/Anti-Theft alarm/mikroC/Anti-Theft alarm.c"
void main() {
TRISB=0b01111111;
TRISC=0b00000000;
PORTC=0;
while (PORTB.RB6==0);

while (PORTB.RB0==0&&PORTB.RB1==0&&PORTB.RB2==0&&PORTB.RB3==0&&PORTB.RB4==0&&PORTB.RB5==0);
PORTC=0b00000011;




}
