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
	.file	"test2.c"
	.text
	.align	2
	.global	soustraction
	.type	soustraction, %function
soustraction:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	soustraction, .-soustraction
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Donnez deux entr\303\251es:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Le r\303\251sultat de soustraction:%d\012\000"
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
	ldr	r0, .L3
	bl	puts
	sub	r3, fp, #8
	ldr	r0, .L3+4
	mov	r1, r3
	bl	scanf
	sub	r3, fp, #12
	ldr	r0, .L3+4
	mov	r1, r3
	bl	scanf
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r0, r2
	mov	r1, r3
	bl	soustraction
	mov	r3, r0
	ldr	r0, .L3+8
	mov	r1, r3
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (GNU) 4.5.3"
