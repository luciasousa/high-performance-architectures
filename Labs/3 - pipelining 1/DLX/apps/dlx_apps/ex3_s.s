.global main

.data

values:		.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ; integer array
nelem: 		.word 10		           ; array size
sum:		.space 4

main:
	addi r1, r0, values		; r1 = address(values[0])
	lw r2, 0(r1)			; values[0]
	lw r3, 4(r1)			; values[1]
	lw r4, 8(r1)			; values[2]
	nop
	nop
	add r12,r4,r3			; r12=2+1=3 mas r12=0
	lw r5, 12(r1)			; values[3] 
	lw r6, 16(r1)			; values[4]
	nop
	nop
	add r13,r5,r6			; 3+4=7
	lw r7, 20(r1)			; values[5]
	lw r8, 24(r1)			; values[6]
	lw r9, 28(r1)			; values[7]
	lw r10, 32(r1)			; values[8]
	lw r11, 36(r1)			; values[9]
	trap 0