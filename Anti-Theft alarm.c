void main() {
TRISB=0b01111111; //PORTB input , the first 6 pins for sensors
                  //the 7th pin for start switch
                  //Reset or stop with MCLR
TRISC=0b00000000; //PORTC output
PORTC=0;          //Clearing portC
while (PORTB.RB6==0);  //waiting for start

while (PORTB.RB0==0&&PORTB.RB1==0&&PORTB.RB2==0&&PORTB.RB3==0&&PORTB.RB4==0&&PORTB.RB5==0); 
// waiting for a sensor to catch
PORTC=0b00000011; // Turn on the alarms and still on until reset or stop




}