.global main

.data

values:		.word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ; integer array
nelem: 		.word 10		           ; array size
sum:		.space 4

main:
	lw r2, 0(r1)
	trap 0