.include"/home/imran/m328Pdef.inc"

start:
ldi r16,0b11110000
out DDRB,r16
ldi r16,0b11111111
out PORTB,r16
in r16,PINB

ldi r30,0b00000100
out DDRD,r30

ldi r17,0b00000001
ldi r18,0b00000001
ldi r19,0b00000001
ldi r20,0b00000001

AND r17,r16   ;r17=s0
LSR r16
AND r18,r16   ;r18=s1
LSR r16
AND r19,r16   ;r19=s2
LSR r16
AND r20,r16   ;r20=s3
LSR r16

ldi r21,0b00000001
eor r21,r17   ;r21=s0'

ldi r22,0b00000001
eor r22,r18   ;r22=s1'

ldi r23,0b00000001
eor r23,r19   ;r23=s2'

ldi r24,0b00000001
eor r24,r20   ;r24=s3'

mov r0,r20
AND r0,r19
AND r0,r22
mov r1,r24
AND r1,r22
AND r1,r17
mov r2,r24
AND r2,r19
AND r2,r18
mov r3,r20
AND r3,r18
AND r3,r17
OR r3,r2
OR r3,r1
OR r3,r0

LSL r3
LSL r3
out PortD,r3

rjmp Start
