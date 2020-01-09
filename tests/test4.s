	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"test4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Pas encore fini,\000"
	.align	2
.LC1:
	.ascii	"Programme fini avec la valeur i=%d\000"
	.align	2
.LC2:
	.ascii	"i<10\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r0, .L6
	bl	puts
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #4
	ble	.L3
	ldr	r0, .L6+4
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	bgt	.L5
	ldr	r0, .L6+8
	bl	printf
.L5:
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (GNU) 4.5.3"
