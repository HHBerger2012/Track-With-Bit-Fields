	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$0, -4(%rbp)
	callq	_fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	LBB0_2
## BB#1:
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$1, %edi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_exit
LBB0_2:
	jmp	LBB0_3
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	$22, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	callq	_fread
	cmpq	$0, %rax
	je	LBB0_33
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.3(%rip), %rdi
	cvtss2sd	-32(%rbp), %xmm0
	cvtss2sd	-28(%rbp), %xmm1
	movswl	-24(%rbp), %esi
	movb	$2, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	$0, -44(%rbp)
	movl	%eax, -64(%rbp)         ## 4-byte Spill
LBB0_5:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$5, -44(%rbp)
	jge	LBB0_8
## BB#6:                                ##   in Loop: Header=BB0_5 Depth=2
	leaq	L_.str.5(%rip), %rdi
	movslq	-44(%rbp), %rax
	movsbl	-22(%rbp,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
## BB#7:                                ##   in Loop: Header=BB0_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_5
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	movzbl	-17(%rbp), %eax
	movl	%eax, %ecx
	movb	%cl, %dl
	andb	$3, %dl
	movl	%ecx, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	subb	$3, %dl
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	movb	%dl, -81(%rbp)          ## 1-byte Spill
	ja	LBB0_13
## BB#34:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	LJTI0_0(%rip), %rax
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	jmp	LBB0_13
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -92(%rbp)         ## 4-byte Spill
	jmp	LBB0_13
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -96(%rbp)         ## 4-byte Spill
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -100(%rbp)        ## 4-byte Spill
LBB0_13:                                ##   in Loop: Header=BB0_3 Depth=1
	movb	-17(%rbp), %al
	shrb	$2, %al
	andb	$3, %al
	movzbl	%al, %ecx
	movl	%ecx, -104(%rbp)        ## 4-byte Spill
	je	LBB0_14
	jmp	LBB0_35
LBB0_35:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-104(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	je	LBB0_15
	jmp	LBB0_36
LBB0_36:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-104(%rbp), %eax        ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	je	LBB0_16
	jmp	LBB0_17
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	jmp	LBB0_17
LBB0_15:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	jmp	LBB0_17
LBB0_16:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -124(%rbp)        ## 4-byte Spill
LBB0_17:                                ##   in Loop: Header=BB0_3 Depth=1
	movb	-17(%rbp), %al
	shrb	$4, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$1, %ecx
	jne	LBB0_19
## BB#18:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -128(%rbp)        ## 4-byte Spill
LBB0_19:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-16(%rbp), %eax
	andl	$127, %eax
	leaq	L_.str.14(%rip), %rdi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %esi
	movb	%dl, %al
	callq	_printf
	movl	-16(%rbp), %ecx
	shrl	$7, %ecx
	andl	$15, %ecx
	decl	%ecx
	movl	%ecx, %edi
	subl	$11, %ecx
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	movq	%rdi, -144(%rbp)        ## 8-byte Spill
	movl	%ecx, -148(%rbp)        ## 4-byte Spill
	ja	LBB0_32
## BB#37:                               ##   in Loop: Header=BB0_3 Depth=1
	leaq	LJTI0_1(%rip), %rax
	movq	-144(%rbp), %rcx        ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_20:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -152(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_21:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -156(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_22:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -160(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_23:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.18(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -164(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_24:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.19(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -168(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_25:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.20(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -172(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_26:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -176(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_27:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.22(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -180(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_28:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.23(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -184(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_29:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.24(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -188(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_30:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.25(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -192(%rbp)        ## 4-byte Spill
	jmp	LBB0_32
LBB0_31:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.26(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -196(%rbp)        ## 4-byte Spill
LBB0_32:                                ##   in Loop: Header=BB0_3 Depth=1
	leaq	L_.str.27(%rip), %rdi
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	andl	$31, %ecx
	movl	%eax, %edx
	shrl	$16, %edx
	andl	$31, %edx
	shrl	$21, %eax
	andl	$63, %eax
	movzbl	-12(%rbp), %esi
	movb	%sil, %r8b
	andb	$127, %r8b
	andl	$127, %esi
	movw	%si, %r9w
	movzwl	%r9w, %esi
	movl	%esi, -200(%rbp)        ## 4-byte Spill
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	-200(%rbp), %eax        ## 4-byte Reload
	movb	%r8b, -201(%rbp)        ## 1-byte Spill
	movl	%eax, %r8d
	movb	$0, %al
	callq	_printf
	leaq	L_.str.28(%rip), %rdi
	movl	%eax, -208(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -212(%rbp)        ## 4-byte Spill
	jmp	LBB0_3
LBB0_33:
	movq	-40(%rbp), %rdi
	callq	_fclose
	xorl	%ecx, %ecx
	movl	%eax, -216(%rbp)        ## 4-byte Spill
	movl	%ecx, %eax
	addq	$224, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_9 = LBB0_9-LJTI0_0
L0_0_set_10 = LBB0_10-LJTI0_0
L0_0_set_11 = LBB0_11-LJTI0_0
L0_0_set_12 = LBB0_12-LJTI0_0
LJTI0_0:
	.long	L0_0_set_9
	.long	L0_0_set_10
	.long	L0_0_set_11
	.long	L0_0_set_12
L0_1_set_20 = LBB0_20-LJTI0_1
L0_1_set_21 = LBB0_21-LJTI0_1
L0_1_set_22 = LBB0_22-LJTI0_1
L0_1_set_23 = LBB0_23-LJTI0_1
L0_1_set_24 = LBB0_24-LJTI0_1
L0_1_set_25 = LBB0_25-LJTI0_1
L0_1_set_26 = LBB0_26-LJTI0_1
L0_1_set_27 = LBB0_27-LJTI0_1
L0_1_set_28 = LBB0_28-LJTI0_1
L0_1_set_29 = LBB0_29-LJTI0_1
L0_1_set_30 = LBB0_30-LJTI0_1
L0_1_set_31 = LBB0_31-LJTI0_1
LJTI0_1:
	.long	L0_1_set_20
	.long	L0_1_set_21
	.long	L0_1_set_22
	.long	L0_1_set_23
	.long	L0_1_set_24
	.long	L0_1_set_25
	.long	L0_1_set_26
	.long	L0_1_set_27
	.long	L0_1_set_28
	.long	L0_1_set_29
	.long	L0_1_set_30
	.long	L0_1_set_31
	.end_data_region

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"tracks2.dat"

L_.str.1:                               ## @.str.1
	.asciz	"rb"

L_.str.2:                               ## @.str.2
	.asciz	"Could not open file"

L_.str.3:                               ## @.str.3
	.asciz	"lat:%.1f long:%.1f alt:%hd"

L_.str.4:                               ## @.str.4
	.asciz	" name:"

L_.str.5:                               ## @.str.5
	.asciz	"%c"

L_.str.6:                               ## @.str.6
	.asciz	" id:unknows"

L_.str.7:                               ## @.str.7
	.asciz	" id:friend"

L_.str.8:                               ## @.str.8
	.asciz	" id:foe"

L_.str.9:                               ## @.str.9
	.asciz	" id:neutral"

L_.str.10:                              ## @.str.10
	.asciz	" cat:ship"

L_.str.11:                              ## @.str.11
	.asciz	" cat:ground vehicle"

L_.str.12:                              ## @.str.12
	.asciz	" cat:airplane"

L_.str.13:                              ## @.str.13
	.asciz	" engaged"

L_.str.14:                              ## @.str.14
	.asciz	" reported: 20%d/"

L_.str.15:                              ## @.str.15
	.asciz	"jan/"

L_.str.16:                              ## @.str.16
	.asciz	"feb/"

L_.str.17:                              ## @.str.17
	.asciz	"mar/"

L_.str.18:                              ## @.str.18
	.asciz	"apr/"

L_.str.19:                              ## @.str.19
	.asciz	"may/"

L_.str.20:                              ## @.str.20
	.asciz	"jun/"

L_.str.21:                              ## @.str.21
	.asciz	"jul/"

L_.str.22:                              ## @.str.22
	.asciz	"aug/"

L_.str.23:                              ## @.str.23
	.asciz	"sep/"

L_.str.24:                              ## @.str.24
	.asciz	"oct/"

L_.str.25:                              ## @.str.25
	.asciz	"nov/"

L_.str.26:                              ## @.str.26
	.asciz	"dec/"

L_.str.27:                              ## @.str.27
	.asciz	"%.2d %02d:%02d:%02d"

L_.str.28:                              ## @.str.28
	.asciz	"\n"


.subsections_via_symbols
