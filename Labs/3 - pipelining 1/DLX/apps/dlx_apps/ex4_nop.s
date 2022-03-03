.data

values:	.word 1,2,3,4,5,6,7,8,9,10	; values to be ordered
nelem: 	.word 10			; array size

.text
.global main

main:	addi r5,r0,nelem	; r5 = add(nelem)
	nop
	nop
	lw r5,0(r5)		; r5 = val(nelem)
	addi r1,r0,values	; r1 = add(values[0])
	add r6,r0,r0		; r6 = i = 0 (counting variable)
	addi r10,r5,-1		; r10 = nelem-1
	nop
	nop

loop1:	slt r9,r6,r10		; r9 = (i < nelem-1)
	nop
	nop
	beqz r9, end		; r9 == 0 => end
	nop
	nop
	nop
	addi r3,r1,4		; r3 = add(values[j])
	lw r2,0(r1)		; r2 = val(value[i])
	addi r7,r6,1		; r7 = j = i+1 (counting variable)
	
loop2:	lw r4,0(r3)		; r4 = val(value[j])
	nop
	nop
	slt r9,r2,r4		; r9 = val(value[i]) < val(value[j])
	nop
	nop
	beqz r9,skip		; r9 == 0 => skip
	nop
	nop
	nop
	add r8,r2,r0		; r8 = tmp = val(value[i])
	add r2,r4,r0		; val(value[i]) = val(value[j])
	add r4,r8,r0 		; val(value[j]) = tmp
	nop
	sw 0(r1),r2		; r2 = val(value[i])
	nop
	sw 0(r3),r4		; r4 = val(value[j])
	
skip:	addi r7,r7,1		; j = j+1
	nop
	addi r3,r3,4		; r3 = add(values[j])
	slt r9,r7,r5		; r9 = (j < nelem)
	nop
	nop
	bnez r9,loop2		; r9 != 0 => loop2
	nop
	nop
	nop
	addi r6,r6,1		; i = i+1
	addi r1,r1,4		; r1 = add(values[i])
	j loop1
	nop
	nop
	nop

end:	trap 0
