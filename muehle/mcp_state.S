#ifdef __linux__
#ifdef __i386__
	.file	"mcp_state.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	start_game
	.type	start_game, @function
start_game:
.LFB15:
	.cfi_startproc
	movl	$9, game.2251
	movl	$game.2251, %eax
	movl	$9, game.2251+4
	movl	$0, game.2251+8
	movl	$0, game.2251+12
	movl	$0, game.2251+16
	movl	$0, game.2251+20
	movl	$0, game.2251+24
	ret
	.cfi_endproc
.LFE15:
	.size	start_game, .-start_game
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"mcp_state.c"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	"(game->board[0] & game->board[1]) == 0"
	.section	.rodata.str1.1
.LC3:
	.string	"%u %u %u\n"
.LC4:
	.string	"0"
.LC5:
	.string	"1"
.LC6:
	.string	"."
.LC7:
	.string	"\n"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	serialize_state
	.type	serialize_state, @function
serialize_state:
.LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	40(%esp), %ebp
	movl	8(%ebp), %eax
	testl	%eax, 12(%ebp)
	jne	.L15
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	4(%ebp)
	.cfi_def_cfa_offset 48
	pushl	0(%ebp)
	.cfi_def_cfa_offset 52
	pushl	56(%esp)
	.cfi_def_cfa_offset 56
	pushl	$.LC3
	.cfi_def_cfa_offset 60
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	call	fprintf
	addl	$32, %esp
	.cfi_def_cfa_offset 32
	cmpl	$6, %eax
	je	.L4
.L10:
	xorl	%eax, %eax
.L5:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movl	$24, %esi
	xorl	%edi, %edi
	movl	$1, %ebx
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L18:
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	40(%esp)
	.cfi_def_cfa_offset 44
	pushl	$.LC5
	.cfi_def_cfa_offset 48
.L13:
	call	fputs
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$-1, %eax
	setne	%al
	addl	%ebx, %ebx
	movzbl	%al, %eax
	addl	%eax, %edi
	subl	$1, %esi
	je	.L16
.L9:
	testl	%ebx, 8(%ebp)
	jne	.L17
	testl	%ebx, 12(%ebp)
	jne	.L18
	subl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pushl	40(%esp)
	.cfi_def_cfa_offset 44
	pushl	$.LC6
	.cfi_def_cfa_offset 48
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pushl	40(%esp)
	.cfi_def_cfa_offset 44
	pushl	$.LC4
	.cfi_def_cfa_offset 48
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	40(%esp)
	.cfi_def_cfa_offset 44
	pushl	$.LC7
	.cfi_def_cfa_offset 48
	call	fputs
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edi
	cmpl	$25, %edi
	jne	.L10
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	fflush
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$1, %eax
	jmp	.L5
.L15:
	pushl	$__PRETTY_FUNCTION__.2259
	.cfi_def_cfa_offset 36
	pushl	$92
	.cfi_def_cfa_offset 40
	pushl	$.LC1
	.cfi_def_cfa_offset 44
	pushl	$.LC2
	.cfi_def_cfa_offset 48
	call	__assert_fail
	.cfi_endproc
.LFE16:
	.size	serialize_state, .-serialize_state
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"%3c%c"
	.section	.rodata.str1.4
	.align 4
.LC10:
	.string	"[MCP] Move was not terminated by a newline character."
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	deserialize_move
	.type	deserialize_move, @function
deserialize_move:
.LFB17:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edi
	leal	12(%esp), %esi
	leal	13(%esp), %ebx
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L27:
	call	__errno_location
	cmpl	$4, (%eax)
	jne	.L24
.L21:
	pushl	%esi
	.cfi_def_cfa_offset 36
	pushl	%ebx
	.cfi_def_cfa_offset 40
	pushl	$.LC9
	.cfi_def_cfa_offset 44
	pushl	%edi
	.cfi_def_cfa_offset 48
	call	__isoc99_fscanf
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$-1, %eax
	je	.L27
	cmpl	$2, %eax
	jne	.L24
	cmpb	$10, 12(%esp)
	je	.L23
	pushl	stderr
	.cfi_def_cfa_offset 36
	pushl	$53
	.cfi_def_cfa_offset 40
	pushl	$1
	.cfi_def_cfa_offset 44
	pushl	$.LC10
	.cfi_def_cfa_offset 48
	call	fwrite
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L23:
	call	__ctype_toupper_loc
	movl	(%eax), %ebx
	movsbl	13(%esp), %eax
	movl	(%ebx,%eax,4), %edx
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edi
	leal	-65(%edx), %ecx
	subl	$65, %edx
	sall	%cl, %esi
	cmpb	$24, %dl
	sbbl	%edx, %edx
	movl	%esi, %ecx
	andl	%edx, %ecx
	movsbl	14(%esp), %edx
	movl	%ecx, move.2266
	movl	(%ebx,%edx,4), %edx
	leal	-65(%edx), %ecx
	subl	$65, %edx
	sall	%cl, %edi
	cmpb	$24, %dl
	sbbl	%edx, %edx
	movl	%edi, %ecx
	andl	%edx, %ecx
	movsbl	15(%esp), %edx
	movl	%ecx, move.2266+4
	movl	(%ebx,%edx,4), %edx
	leal	-65(%edx), %ecx
	sall	%cl, %eax
	cmpb	$24, %cl
	sbbl	%edx, %edx
	andl	%edx, %eax
	movl	%eax, move.2266+8
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$move.2266, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE17:
	.size	deserialize_move, .-deserialize_move
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	dump_move
	.type	dump_move, @function
dump_move:
.LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$65, %edx
	movl	$32, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movb	$32, dump.2282+2
	movl	24(%esp), %eax
	movb	$32, dump.2282+1
	movb	$32, dump.2282
	movb	$0, 2(%esp)
	movb	$32, 1(%esp)
	movl	(%eax), %esi
	movb	$0, (%esp)
	movl	4(%eax), %ebx
	movb	$32, 3(%esp)
	movl	8(%eax), %ecx
	movl	$1, %eax
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L29:
	cmpl	%eax, %ebx
	je	.L50
.L30:
	cmpl	%ecx, %eax
	je	.L51
.L31:
	addl	$1, %edx
	addl	%eax, %eax
	cmpb	$89, %dl
	je	.L52
.L32:
	cmpl	%eax, %esi
	jne	.L29
	movl	%edx, %ebp
	movl	$1, %edi
	cmpl	%eax, %ebx
	jne	.L30
.L50:
	movb	%dl, 3(%esp)
	movb	$1, (%esp)
	cmpl	%ecx, %eax
	jne	.L31
.L51:
	movb	%dl, 1(%esp)
	addl	$1, %edx
	addl	%eax, %eax
	movb	$1, 2(%esp)
	cmpb	$89, %dl
	jne	.L32
.L52:
	movl	%edi, %eax
	testb	%al, %al
	jne	.L53
.L33:
	cmpb	$0, (%esp)
	je	.L34
	movzbl	3(%esp), %eax
	movb	%al, dump.2282+1
.L34:
	cmpb	$0, 2(%esp)
	je	.L35
	movzbl	1(%esp), %eax
	movb	%al, dump.2282+2
.L35:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$dump.2282, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L53:
	.cfi_restore_state
	movl	%ebp, %eax
	movb	%al, dump.2282
	jmp	.L33
	.cfi_endproc
.LFE18:
	.size	dump_move, .-dump_move
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	apply_move
	.type	apply_move, @function
apply_move:
.LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	24(%esp), %eax
	movl	20(%esp), %edi
	leal	(%eax,%edi,4), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L55
	movl	28(%esp), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	jne	.L59
	subl	$1, %eax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%eax, (%edx)
	movl	%ebx, %eax
.L58:
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	je	.L59
	movl	24(%esp), %eax
	testl	%ebx, 8(%eax)
	jne	.L59
	orl	12(%eax), %esi
	testl	%ebx, %esi
	jne	.L59
	testl	%ecx, %ecx
	je	.L62
	movl	%ecx, %edi
	xorl	%eax, %eax
	movl	%edx, %ebp
	orl	%ebx, %edi
	.p2align 4,,10
	.p2align 3
.L63:
	movl	edges(,%eax,4), %esi
	addl	$1, %eax
	cmpl	$31, %eax
	setbe	%dl
	cmpl	%edi, %esi
	sete	%cl
	cmpb	%cl, %dl
	ja	.L63
	movl	%ebp, %edx
	cmpl	%edi, %esi
	jne	.L59
.L62:
	movl	8(%edx), %edi
	xorl	%ebx, %edi
	movl	%edi, 8(%edx)
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L64:
	movl	mills(,%edx,4), %ecx
	movl	%edi, %eax
	andl	%ecx, %eax
	cmpl	%ecx, %eax
	sete	%al
	andl	%ebx, %ecx
	cmpl	$1, %ecx
	movl	%eax, %esi
	sbbl	%eax, %eax
	addl	$1, %edx
	notl	%eax
	andl	%esi, %eax
	cmpl	$15, %edx
	setbe	%cl
	cmpb	%cl, %al
	jb	.L64
	testb	%al, %al
	movl	28(%esp), %eax
	je	.L65
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	.L99
	movl	20(%esp), %ecx
	xorl	%eax, %eax
	movl	24(%esp), %ebx
	testl	%ecx, %ecx
	sete	%al
	leal	(%ebx,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %edx
	je	.L59
	movl	%eax, %ecx
	movl	%eax, %edi
	andl	$7, %ecx
	cmpl	$7, %ecx
	setne	%cl
	andl	$8404996, %edi
	movzbl	%cl, %ecx
	subl	$1, %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	orl	$8404996, %esi
	cmpl	$8404996, %edi
	je	.L68
	movl	%ecx, %esi
.L68:
	movl	%eax, %ecx
	movl	%esi, %edi
	andl	$14680064, %ecx
	orl	$14680064, %edi
	cmpl	$14680064, %ecx
	je	.L133
.L70:
	movl	%eax, %ecx
	movl	%esi, %edi
	andl	$2097665, %ecx
	orl	$2097665, %edi
	cmpl	$2097665, %ecx
	je	.L72
	movl	%esi, %edi
.L72:
	movl	%eax, %esi
	movl	%edi, %ecx
	andl	$56, %esi
	orl	$56, %ecx
	cmpl	$56, %esi
	je	.L74
	movl	%edi, %ecx
.L74:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$1056800, %edi
	orl	$1056800, %esi
	cmpl	$1056800, %edi
	je	.L76
	movl	%ecx, %esi
.L76:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$1835008, %edi
	orl	$1835008, %ecx
	cmpl	$1835008, %edi
	je	.L78
	movl	%esi, %ecx
.L78:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$263176, %edi
	orl	$263176, %esi
	cmpl	$263176, %edi
	je	.L80
	movl	%ecx, %esi
.L80:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$448, %edi
	orl	$448, %ecx
	cmpl	$448, %edi
	je	.L82
	movl	%esi, %ecx
.L82:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$135424, %edi
	orl	$135424, %esi
	cmpl	$135424, %edi
	je	.L84
	movl	%ecx, %esi
.L84:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$229376, %edi
	orl	$229376, %ecx
	cmpl	$229376, %edi
	je	.L86
	movl	%esi, %ecx
.L86:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$34880, %edi
	orl	$34880, %esi
	cmpl	$34880, %edi
	je	.L88
	movl	%ecx, %esi
.L88:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$146, %edi
	orb	$-110, %cl
	cmpl	$146, %edi
	je	.L90
	movl	%esi, %ecx
.L90:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$3584, %edi
	orl	$3584, %esi
	cmpl	$3584, %edi
	je	.L92
	movl	%ecx, %esi
.L92:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$28672, %edi
	orb	$112, %ch
	cmpl	$28672, %edi
	je	.L94
	movl	%esi, %ecx
.L94:
	movl	%eax, %esi
	movl	%ecx, %edi
	andl	$4784128, %esi
	orl	$4784128, %edi
	cmpl	$4784128, %esi
	je	.L134
.L96:
	cmpl	%eax, %ecx
	je	.L97
	testl	%edx, %ecx
	jne	.L59
.L97:
	xorl	%edx, %eax
	movl	%eax, 8(%ebx)
	movl	24(%esp), %eax
	movl	$0, 20(%eax)
	movl	$1, %eax
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L55:
	movl	28(%esp), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	.L135
.L59:
	xorl	%eax, %eax
.L131:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	movl	8(%edx), %edi
	testl	%edi, %esi
	je	.L59
	movl	%edi, %eax
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L60:
	leal	-1(%eax), %ecx
	addl	$1, %ebx
	andl	%ecx, %eax
	jne	.L60
	cmpl	$4, %ebx
	movl	28(%esp), %eax
	sbbl	%ecx, %ecx
	xorl	%esi, %edi
	notl	%ecx
	movl	%edi, 8(%edx)
	andl	%esi, %ecx
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L65:
	movl	8(%eax), %eax
.L66:
	testl	%eax, %eax
	sete	%al
	jmp	.L131
.L99:
	xorl	%eax, %eax
	jmp	.L66
.L134:
	movl	%edi, %ecx
	jmp	.L96
.L133:
	movl	%edi, %esi
	jmp	.L70
	.cfi_endproc
.LFE19:
	.size	apply_move, .-apply_move
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	is_final_state
	.type	is_final_state, @function
is_final_state:
.LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %edi
.L141:
	movl	8(%edi,%ebx,4), %eax
	xorl	%ecx, %ecx
	movl	(%edi,%ebx,4), %esi
	testl	%eax, %eax
	je	.L137
	.p2align 4,,10
	.p2align 3
.L138:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	.L138
.L137:
	addl	%esi, %ecx
	cmpl	$2, %ecx
	je	.L174
	addl	$1, %ebx
	cmpl	$2, %ebx
	jne	.L141
	movl	32(%esp), %eax
	leal	(%edi,%eax,4), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	jne	.L142
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	.L142
	movl	%ebp, %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L143:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	.L143
	xorl	%ebx, %ebx
	cmpl	$3, %ecx
	jbe	.L142
	.p2align 4,,10
	.p2align 3
.L161:
	movl	edges(,%ebx,4), %esi
	movl	%ebp, %eax
	andl	%esi, %eax
	je	.L156
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L146:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	.L146
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.L175
.L145:
	addl	$1, %ebx
	cmpl	$31, %ebx
	setbe	%dl
	cmpb	%dl, %al
	jb	.L161
	testb	%al, %al
	je	.L176
	.p2align 4,,10
	.p2align 3
.L142:
	movl	4(%edi), %eax
	addl	(%edi), %eax
	jne	.L158
	movl	20(%edi), %ecx
	xorl	%eax, %eax
	movl	16(%edi), %edx
	testl	%ecx, %ecx
	je	.L149
	movl	8(%edi), %ebx
	xorl	%eax, %eax
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L150:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	.L177
.L151:
	cmpl	(%edx,%eax,8), %ebx
	jne	.L150
	movl	12(%edi), %esi
	cmpl	%esi, 4(%edx,%eax,8)
	jne	.L150
	movl	40(%esp), %eax
	movl	$-1, (%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L177:
	.cfi_restore_state
	movl	%ecx, %eax
.L149:
	cmpl	%eax, 24(%edi)
	je	.L178
.L152:
	leal	(%edx,%ecx,8), %eax
	movl	8(%edi), %edx
	addl	$1, %ecx
	movl	%edx, (%eax)
	movl	12(%edi), %edx
	movl	%edx, 4(%eax)
	xorl	%eax, %eax
	movl	%ecx, 20(%edi)
.L169:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L175:
	.cfi_restore_state
	movl	32(%esp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	testl	%esi, 8(%edi,%eax,4)
	sete	%al
	jmp	.L145
.L156:
	xorl	%eax, %eax
	jmp	.L145
.L158:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
.L176:
	.cfi_restore_state
	movl	32(%esp), %edx
	xorl	%eax, %eax
	movl	40(%esp), %edi
	testl	%edx, %edx
	sete	%al
	movl	%eax, (%edi)
	movl	$1, %eax
	jmp	.L169
.L174:
	movl	40(%esp), %eax
	xorl	$1, %ebx
	movl	%ebx, (%eax)
	movl	$1, %eax
	jmp	.L169
.L178:
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	addl	$4096, %eax
	movl	%eax, 24(%edi)
	pushl	%eax
	.cfi_def_cfa_offset 44
	pushl	%edx
	.cfi_def_cfa_offset 48
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 16(%edi)
	testl	%eax, %eax
	je	.L153
	movl	20(%edi), %ecx
	movl	%eax, %edx
	jmp	.L152
.L153:
	call	abort
	.cfi_endproc
.LFE20:
	.size	is_final_state, .-is_final_state
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.local	dump.2282
	.comm	dump.2282,4,4
	.local	move.2266
	.comm	move.2266,12,4
	.section	.rodata
	.align 4
	.type	__PRETTY_FUNCTION__.2259, @object
	.size	__PRETTY_FUNCTION__.2259, 16
__PRETTY_FUNCTION__.2259:
	.string	"serialize_state"
	.local	game.2251
	.comm	game.2251,28,4
	.align 32
	.type	mills, @object
	.size	mills, 64
mills:
	.long	7
	.long	8404996
	.long	14680064
	.long	2097665
	.long	56
	.long	1056800
	.long	1835008
	.long	263176
	.long	448
	.long	135424
	.long	229376
	.long	34880
	.long	146
	.long	3584
	.long	28672
	.long	4784128
	.align 32
	.type	edges, @object
	.size	edges, 128
edges:
	.long	3
	.long	6
	.long	16388
	.long	8404992
	.long	12582912
	.long	6291456
	.long	2097664
	.long	513
	.long	24
	.long	48
	.long	8224
	.long	1056768
	.long	1572864
	.long	786432
	.long	263168
	.long	1032
	.long	192
	.long	384
	.long	4352
	.long	135168
	.long	196608
	.long	98304
	.long	34816
	.long	2112
	.long	18
	.long	144
	.long	1536
	.long	3072
	.long	12288
	.long	24576
	.long	589824
	.long	4718592
	.ident	"GCC: (GNU) 5.1.0"
	.section	.note.GNU-stack,"",@progbits
#endif
#ifdef __x86_64__
	.file	"mcp_state.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	start_game
	.type	start_game, @function
start_game:
.LFB15:
	.cfi_startproc
	movl	$9, game.2600(%rip)
	movl	$game.2600, %eax
	movl	$9, game.2600+4(%rip)
	movq	$0, game.2600+8(%rip)
	movq	$0, game.2600+16(%rip)
	movq	$0, game.2600+24(%rip)
	movl	$0, game.2600+32(%rip)
	movl	$0, game.2600+36(%rip)
	ret
	.cfi_endproc
.LFE15:
	.size	start_game, .-start_game
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"mcp_state.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"(game->board[0] & game->board[1]) == 0"
	.section	.rodata.str1.1
.LC3:
	.string	"%u %u %u\n"
.LC4:
	.string	"0"
.LC5:
	.string	"1"
.LC6:
	.string	"."
.LC7:
	.string	"\n"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	serialize_state
	.type	serialize_state, @function
serialize_state:
.LFB16:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	8(%rdx), %rax
	testq	%rax, 16(%rdx)
	jne	.L15
	movl	4(%rdx), %r8d
	xorl	%eax, %eax
	movq	%rdx, %r12
	movq	%rdi, %r14
	movl	(%rdx), %ecx
	movl	%esi, %edx
	movl	$.LC3, %esi
	call	fprintf
	cmpl	$6, %eax
	je	.L4
.L10:
	xorl	%eax, %eax
.L5:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movl	$24, %ebp
	xorl	%r13d, %r13d
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L9:
	testq	%rbx, 8(%r12)
	movq	%r14, %rsi
	movl	$.LC4, %edi
	jne	.L13
	testq	%rbx, 16(%r12)
	movl	$.LC5, %edi
	jne	.L13
	movl	$.LC6, %edi
.L13:
	call	fputs
	cmpl	$-1, %eax
	setne	%al
	addq	%rbx, %rbx
	movzbl	%al, %eax
	addl	%eax, %r13d
	subl	$1, %ebp
	jne	.L9
	movq	%r14, %rsi
	movl	$.LC7, %edi
	call	fputs
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %r13d
	cmpl	$25, %r13d
	jne	.L10
	movq	%r14, %rdi
	call	fflush
	movl	$1, %eax
	jmp	.L5
.L15:
	movl	$__PRETTY_FUNCTION__.2608, %ecx
	movl	$92, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
	.cfi_endproc
.LFE16:
	.size	serialize_state, .-serialize_state
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"%3c%c"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"[MCP] Move was not terminated by a newline character."
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	deserialize_move
	.type	deserialize_move, @function
deserialize_move:
.LFB17:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L24:
	call	__errno_location
	cmpl	$4, (%rax)
	jne	.L21
.L18:
	xorl	%eax, %eax
	movl	$.LC9, %esi
	movq	%rbx, %rdi
	leaq	15(%rsp), %rcx
	leaq	16(%rsp), %rdx
	call	__isoc99_fscanf
	cmpl	$-1, %eax
	je	.L24
	cmpl	$2, %eax
	jne	.L21
	cmpb	$10, 15(%rsp)
	je	.L20
	movl	$53, %edx
	movl	$1, %esi
	movl	$.LC10, %edi
	movq	stderr(%rip), %rcx
	call	fwrite
.L20:
	call	__ctype_toupper_loc
	xorl	%esi, %esi
	movq	(%rax), %rdi
	movsbq	16(%rsp), %rax
	movl	(%rdi,%rax,4), %edx
	movl	$1, %eax
	movl	%eax, %ebx
	leal	-65(%rdx), %ecx
	subl	$65, %edx
	sall	%cl, %ebx
	cmpb	$23, %dl
	movsbq	17(%rsp), %rdx
	movq	%rbx, %rcx
	movl	%eax, %ebx
	cmova	%rsi, %rcx
	movq	%rcx, move.2615(%rip)
	movl	(%rdi,%rdx,4), %edx
	leal	-65(%rdx), %ecx
	subl	$65, %edx
	sall	%cl, %ebx
	cmpb	$23, %dl
	movsbq	18(%rsp), %rdx
	movq	%rbx, %rcx
	cmova	%rsi, %rcx
	movq	%rcx, move.2615+8(%rip)
	movl	(%rdi,%rdx,4), %edx
	leal	-65(%rdx), %ecx
	sall	%cl, %eax
	cmpb	$23, %cl
	cmova	%rsi, %rax
	movq	%rax, move.2615+16(%rip)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$move.2615, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.size	deserialize_move, .-deserialize_move
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	dump_move
	.type	dump_move, @function
dump_move:
.LFB18:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$32, %r9d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	xorl	%esi, %esi
	movl	$32, %r11d
	movl	$65, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	$1, %eax
	movq	(%rdi), %r12
	movl	$1, %ecx
	movq	8(%rdi), %rbp
	movb	$32, dump.2631+2(%rip)
	movq	16(%rdi), %rbx
	movb	$32, dump.2631+1(%rip)
	movl	$32, %edi
	movb	$32, dump.2631(%rip)
	.p2align 4,,10
	.p2align 3
.L29:
	cmpq	%rax, %r12
	cmove	%edx, %r11d
	cmove	%ecx, %esi
	cmpq	%rax, %rbp
	cmove	%edx, %r9d
	cmove	%ecx, %r10d
	cmpq	%rbx, %rax
	cmove	%edx, %edi
	cmove	%ecx, %r8d
	addl	$1, %edx
	addq	%rax, %rax
	cmpb	$89, %dl
	jne	.L29
	testb	%sil, %sil
	jne	.L47
.L30:
	testb	%r10b, %r10b
	je	.L31
	movb	%r9b, dump.2631+1(%rip)
.L31:
	testb	%r8b, %r8b
	je	.L32
	movb	%dil, dump.2631+2(%rip)
.L32:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$dump.2631, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L47:
	.cfi_restore_state
	movb	%r11b, dump.2631(%rip)
	jmp	.L30
	.cfi_endproc
.LFE18:
	.size	dump_move, .-dump_move
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	apply_move
	.type	apply_move, @function
apply_move:
.LFB19:
	.cfi_startproc
	movl	%edi, %r11d
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	(%rsi,%r11,4), %rcx
	movl	(%rcx), %eax
	testl	%eax, %eax
	je	.L49
	cmpq	$0, (%rdx)
	jne	.L53
	subl	$1, %eax
	xorl	%r9d, %r9d
	movl	%eax, (%rcx)
	xorl	%eax, %eax
.L52:
	movq	8(%rdx), %r10
	testq	%r10, %r10
	je	.L53
	testq	%r10, 8(%rsi)
	jne	.L53
	orq	16(%rsi), %r9
	testq	%r10, %r9
	jne	.L53
	testq	%rax, %rax
	je	.L56
	orq	%r10, %rax
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L57:
	movq	edges(,%rcx,8), %r8
	addq	$1, %rcx
	cmpq	$31, %rcx
	setbe	%bl
	cmpq	%rax, %r8
	sete	%r9b
	cmpb	%r9b, %bl
	ja	.L57
	cmpq	%rax, %r8
	jne	.L53
.L56:
	leaq	(%rsi,%r11,8), %rax
	movq	%r10, %r9
	xorl	%r11d, %r11d
	xorq	8(%rax), %r9
	movq	%r9, 8(%rax)
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	movq	mills(,%rax,8), %r8
	movq	%r9, %rcx
	andq	%r8, %rcx
	cmpq	%r8, %rcx
	sete	%cl
	testq	%r8, %r10
	cmove	%r11d, %ecx
	addq	$1, %rax
	cmpq	$15, %rax
	setbe	%r8b
	cmpb	%r8b, %cl
	jb	.L58
	testb	%cl, %cl
	je	.L59
	movq	16(%rdx), %rcx
	testq	%rcx, %rcx
	je	.L63
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	(%rsi,%rax,8), %rdi
	movq	8(%rdi), %rdx
	testq	%rdx, %rcx
	je	.L53
	movq	%rdx, %rax
	movl	$0, %r8d
	movq	%rdx, %r9
	andl	$7, %eax
	cmpq	$7, %rax
	movl	$7, %eax
	cmovne	%r8, %rax
	andl	$8404996, %r9d
	movq	%rax, %r8
	orq	$8404996, %r8
	cmpq	$8404996, %r9
	movq	%rdx, %r9
	cmovne	%rax, %r8
	andl	$14680064, %r9d
	movq	%r8, %rax
	orq	$14680064, %rax
	cmpq	$14680064, %r9
	movq	%rdx, %r9
	cmovne	%r8, %rax
	andl	$2097665, %r9d
	movq	%rax, %r8
	orq	$2097665, %r8
	cmpq	$2097665, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$56, %r9d
	movq	%rax, %r8
	orq	$56, %r8
	cmpq	$56, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$1056800, %r9d
	movq	%rax, %r8
	orq	$1056800, %r8
	cmpq	$1056800, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$1835008, %r9d
	movq	%rax, %r8
	orq	$1835008, %r8
	cmpq	$1835008, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$263176, %r9d
	movq	%rax, %r8
	orq	$263176, %r8
	cmpq	$263176, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$448, %r9d
	movq	%rax, %r8
	orq	$448, %r8
	cmpq	$448, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$135424, %r9d
	movq	%rax, %r8
	orq	$135424, %r8
	cmpq	$135424, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$229376, %r9d
	movq	%rax, %r8
	orq	$229376, %r8
	cmpq	$229376, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$34880, %r9d
	movq	%rax, %r8
	orq	$34880, %r8
	cmpq	$34880, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$146, %r9d
	movq	%rax, %r8
	orb	$-110, %r8b
	cmpq	$146, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$3584, %r9d
	movq	%rax, %r8
	orq	$3584, %r8
	cmpq	$3584, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$28672, %r9d
	movq	%rax, %r8
	orq	$28672, %r8
	cmpq	$28672, %r9
	movq	%rdx, %r9
	cmove	%r8, %rax
	andl	$4784128, %r9d
	movq	%rax, %r8
	orq	$4784128, %r8
	cmpq	$4784128, %r9
	cmove	%r8, %rax
	cmpq	%rdx, %rax
	je	.L61
	testq	%rcx, %rax
	jne	.L53
.L61:
	xorq	%rcx, %rdx
	movl	$1, %eax
	movq	%rdx, 8(%rdi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$0, 32(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	movq	(%rdx), %r9
	testq	%r9, %r9
	jne	.L84
.L53:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	.cfi_restore_state
	leaq	(%rsi,%r11,8), %rbx
	movq	8(%rbx), %r10
	testq	%r10, %r9
	je	.L53
	movq	%r10, %rax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L54:
	leaq	-1(%rax), %rcx
	addl	$1, %r8d
	andq	%rcx, %rax
	jne	.L54
	cmpl	$3, %r8d
	cmova	%r9, %rax
	xorq	%r9, %r10
	movq	%r10, 8(%rbx)
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L59:
	movq	16(%rdx), %rax
.L60:
	testq	%rax, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	sete	%al
	ret
.L63:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L60
	.cfi_endproc
.LFE19:
	.size	apply_move, .-apply_move
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	is_final_state
	.type	is_final_state, @function
is_final_state:
.LFB20:
	.cfi_startproc
	xorl	%r9d, %r9d
.L90:
	movq	8(%rsi,%r9,8), %rax
	xorl	%r8d, %r8d
	movl	(%rsi,%r9,4), %r10d
	testq	%rax, %rax
	je	.L86
	.p2align 4,,10
	.p2align 3
.L87:
	leaq	-1(%rax), %rcx
	addl	$1, %r8d
	andq	%rcx, %rax
	jne	.L87
.L86:
	addl	%r10d, %r8d
	cmpl	$2, %r8d
	je	.L123
	addq	$1, %r9
	cmpq	$2, %r9
	jne	.L90
	movl	%edi, %eax
	movl	(%rsi,%rax,4), %ecx
	testl	%ecx, %ecx
	jne	.L91
	movq	8(%rsi,%rax,8), %r11
	testq	%r11, %r11
	je	.L91
	movq	%r11, %rax
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L92:
	leaq	-1(%rax), %rcx
	addl	$1, %r8d
	andq	%rcx, %rax
	jne	.L92
	xorl	%r9d, %r9d
	cmpl	$3, %r8d
	jbe	.L91
	.p2align 4,,10
	.p2align 3
.L110:
	movq	edges(,%r9,8), %r10
	movq	%r11, %rax
	andq	%r10, %rax
	je	.L105
	xorl	%r8d, %r8d
	.p2align 4,,10
	.p2align 3
.L95:
	leaq	-1(%rax), %rcx
	addl	$1, %r8d
	andq	%rcx, %rax
	jne	.L95
	xorl	%eax, %eax
	cmpl	$1, %r8d
	je	.L124
.L94:
	addq	$1, %r9
	cmpq	$31, %r9
	setbe	%cl
	cmpb	%cl, %al
	jb	.L110
	testb	%al, %al
	je	.L125
	.p2align 4,,10
	.p2align 3
.L91:
	movl	4(%rsi), %eax
	addl	(%rsi), %eax
	jne	.L107
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	32(%rsi), %r8d
	movq	24(%rsi), %rdi
	testq	%r8, %r8
	movq	%r8, %r10
	je	.L98
	movq	8(%rsi), %r9
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$1, %rcx
	addq	$16, %rax
	cmpq	%r8, %rcx
	je	.L98
.L100:
	cmpq	%r9, (%rax)
	jne	.L99
	movq	16(%rsi), %rbx
	cmpq	%rbx, 8(%rax)
	jne	.L99
	movl	$-1, (%rdx)
	movl	$1, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
.L98:
	.cfi_restore_state
	cmpl	%r10d, 36(%rsi)
	movq	%rsi, %rbx
	je	.L126
.L101:
	movq	8(%rbx), %rdx
	salq	$4, %r8
	addl	$1, %r10d
	leaq	(%rdi,%r8), %rax
	movq	%rdx, (%rax)
	movq	16(%rbx), %rdx
	movq	%rdx, 8(%rax)
	xorl	%eax, %eax
	movl	%r10d, 32(%rbx)
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	testq	%r10, 8(%rsi,%rax,8)
	sete	%al
	jmp	.L94
.L105:
	xorl	%eax, %eax
	jmp	.L94
.L107:
	xorl	%eax, %eax
	ret
.L125:
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	movl	%eax, (%rdx)
	movl	$1, %eax
	ret
.L123:
	xorq	$1, %r9
	movl	$1, %eax
	movl	%r9d, (%rdx)
	ret
.L126:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leal	4096(%r10), %esi
	movl	%esi, 36(%rbx)
	call	realloc
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.L102
	movl	32(%rbx), %r8d
	movq	%rax, %rdi
	movq	%r8, %r10
	jmp	.L101
.L102:
	call	abort
	.cfi_endproc
.LFE20:
	.size	is_final_state, .-is_final_state
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.local	dump.2631
	.comm	dump.2631,4,1
	.local	move.2615
	.comm	move.2615,24,16
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.2608, @object
	.size	__PRETTY_FUNCTION__.2608, 16
__PRETTY_FUNCTION__.2608:
	.string	"serialize_state"
	.local	game.2600
	.comm	game.2600,40,32
	.align 32
	.type	mills, @object
	.size	mills, 128
mills:
	.quad	7
	.quad	8404996
	.quad	14680064
	.quad	2097665
	.quad	56
	.quad	1056800
	.quad	1835008
	.quad	263176
	.quad	448
	.quad	135424
	.quad	229376
	.quad	34880
	.quad	146
	.quad	3584
	.quad	28672
	.quad	4784128
	.align 32
	.type	edges, @object
	.size	edges, 256
edges:
	.quad	3
	.quad	6
	.quad	16388
	.quad	8404992
	.quad	12582912
	.quad	6291456
	.quad	2097664
	.quad	513
	.quad	24
	.quad	48
	.quad	8224
	.quad	1056768
	.quad	1572864
	.quad	786432
	.quad	263168
	.quad	1032
	.quad	192
	.quad	384
	.quad	4352
	.quad	135168
	.quad	196608
	.quad	98304
	.quad	34816
	.quad	2112
	.quad	18
	.quad	144
	.quad	1536
	.quad	3072
	.quad	12288
	.quad	24576
	.quad	589824
	.quad	4718592
	.ident	"GCC: (GNU) 5.1.0"
	.section	.note.GNU-stack,"",@progbits
#endif
#endif
#ifdef __APPLE__
#ifdef __i386__
	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_start_game
	.align	4, 0x90
_start_game:                            ## @start_game
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	calll	L0$pb
L0$pb:
	popl	%ecx
	movl	$9, _start_game.game-L0$pb(%ecx)
	leal	_start_game.game-L0$pb(%ecx), %eax
	movl	$9, (_start_game.game-L0$pb)+4(%ecx)
	movl	$0, (_start_game.game-L0$pb)+12(%ecx)
	movl	$0, (_start_game.game-L0$pb)+8(%ecx)
	movl	$0, (_start_game.game-L0$pb)+20(%ecx)
	movl	$0, (_start_game.game-L0$pb)+16(%ecx)
	movl	$0, (_start_game.game-L0$pb)+24(%ecx)
	popl	%ebp
	retl

	.globl	_serialize_state
	.align	4, 0x90
_serialize_state:                       ## @serialize_state
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L1$pb
L1$pb:
	popl	%edi
	movl	16(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	12(%eax), %edx
	movl	%edx, -24(%ebp)         ## 4-byte Spill
	testl	%ecx, %edx
	jne	LBB1_13
## BB#1:
	movl	12(%ebp), %ecx
	movl	8(%ebp), %esi
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	leal	L_.str2-L1$pb(%edi), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	_fprintf
	xorl	%ebx, %ebx
	cmpl	$6, %eax
	jne	LBB1_12
## BB#2:
	movl	$1, %esi
	leal	L_.str5-L1$pb(%edi), %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	leal	L_.str4-L1$pb(%edi), %eax
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	leal	L_.str3-L1$pb(%edi), %eax
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	movl	%edi, -36(%ebp)         ## 4-byte Spill
	.align	4, 0x90
LBB1_3:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	testl	-16(%ebp), %esi         ## 4-byte Folded Reload
	je	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax         ## 4-byte Reload
	jmp	LBB1_8
	.align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	testl	-24(%ebp), %esi         ## 4-byte Folded Reload
	je	LBB1_7
## BB#6:                                ##   in Loop: Header=BB1_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax         ## 4-byte Reload
	jmp	LBB1_8
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=1
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-32(%ebp), %eax         ## 4-byte Reload
	.align	4, 0x90
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=1
	movl	%eax, (%esp)
	calll	_fputs$UNIX2003
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %ebx
	addl	%edi, %ebx
	addl	%esi, %esi
	cmpl	$16777216, %esi         ## imm = 0x1000000
	jne	LBB1_3
## BB#9:
	movl	8(%ebp), %esi
	movl	%esi, 4(%esp)
	movl	-36(%ebp), %eax         ## 4-byte Reload
	leal	L_.str6-L1$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	_fputs$UNIX2003
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	cmpl	$25, %eax
	jne	LBB1_10
## BB#11:
	movl	%esi, (%esp)
	calll	_fflush
	movb	$1, %bl
	jmp	LBB1_12
LBB1_10:
	xorl	%ebx, %ebx
LBB1_12:
	movzbl	%bl, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB1_13:
	leal	L_.str1-L1$pb(%edi), %eax
	movl	%eax, 12(%esp)
	leal	L_.str-L1$pb(%edi), %eax
	movl	%eax, 4(%esp)
	leal	L___func__.serialize_state-L1$pb(%edi), %eax
	movl	%eax, (%esp)
	movl	$92, 8(%esp)
	calll	___assert_rtn

	.globl	_deserialize_move
	.align	4, 0x90
_deserialize_move:                      ## @deserialize_move
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	%eax, -20(%ebp)         ## 4-byte Spill
	leal	-15(%ebp), %ebx
	leal	L_.str7-L2$pb(%eax), %edi
	xorl	%esi, %esi
	.align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	leal	-16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	calll	_fscanf
	cmpl	$2, %eax
	je	LBB2_4
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, %eax
	jne	LBB2_13
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	calll	___error
	cmpl	$4, (%eax)
	je	LBB2_1
	jmp	LBB2_13
LBB2_4:
	movzbl	-16(%ebp), %eax
	cmpl	$10, %eax
	movl	-20(%ebp), %edi         ## 4-byte Reload
	je	LBB2_6
## BB#5:
	movl	L___stderrp$non_lazy_ptr-L2$pb(%edi), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	leal	L_.str8-L2$pb(%edi), %eax
	movl	%eax, (%esp)
	movl	$1, 8(%esp)
	movl	$53, 4(%esp)
	calll	_fwrite$UNIX2003
LBB2_6:                                 ## %.preheader
	movsbl	-15(%ebp), %eax
	movl	%eax, (%esp)
	calll	___toupper
	movb	%al, -15(%ebp)
	shll	$24, %eax
	leal	-1073741825(%eax), %ecx
	xorl	%esi, %esi
	cmpl	$419430398, %ecx        ## imm = 0x18FFFFFE
	movl	$0, %edx
	ja	LBB2_8
## BB#7:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
LBB2_8:
	movl	%edx, _deserialize_move.move-L2$pb(%edi)
	movsbl	-14(%ebp), %eax
	movl	%eax, (%esp)
	calll	___toupper
	movb	%al, -14(%ebp)
	shll	$24, %eax
	leal	-1073741825(%eax), %ecx
	cmpl	$419430399, %ecx        ## imm = 0x18FFFFFF
	jae	LBB2_10
## BB#9:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %esi
	movb	%al, %cl
	shll	%cl, %esi
LBB2_10:
	movl	%esi, (_deserialize_move.move-L2$pb)+4(%edi)
	movsbl	-13(%ebp), %eax
	movl	%eax, (%esp)
	calll	___toupper
	movb	%al, -13(%ebp)
	shll	$24, %eax
	leal	-1073741825(%eax), %ecx
	xorl	%edx, %edx
	cmpl	$419430398, %ecx        ## imm = 0x18FFFFFE
	ja	LBB2_12
## BB#11:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
LBB2_12:                                ## %.critedge.loopexit3
	movl	%edx, (_deserialize_move.move-L2$pb)+8(%edi)
	leal	_deserialize_move.move-L2$pb(%edi), %esi
LBB2_13:                                ## %.critedge
	movl	%esi, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_dump_move
	.align	4, 0x90
_dump_move:                             ## @dump_move
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	8(%ebp), %esi
	movb	$32, (_dump_move.dump-L3$pb)+2(%eax)
	movw	$8224, _dump_move.dump-L3$pb(%eax) ## imm = 0x2020
	movl	(%esi), %ecx
	movl	4(%esi), %edx
	movl	8(%esi), %esi
	movl	$1, %edi
	movb	$65, %bl
	.align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%edi, %ecx
	jne	LBB3_3
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%bl, _dump_move.dump-L3$pb(%eax)
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	cmpl	%edi, %edx
	jne	LBB3_5
## BB#4:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%bl, (_dump_move.dump-L3$pb)+1(%eax)
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	cmpl	%edi, %esi
	jne	LBB3_7
## BB#6:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%bl, (_dump_move.dump-L3$pb)+2(%eax)
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	addl	%edi, %edi
	incb	%bl
	cmpl	$16777216, %edi         ## imm = 0x1000000
	jb	LBB3_1
## BB#8:
	leal	_dump_move.dump-L3$pb(%eax), %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.globl	_apply_move
	.align	4, 0x90
_apply_move:                            ## @apply_move
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	16(%ebp), %esi
	movl	12(%ebp), %edi
	movl	8(%ebp), %edx
	movl	(%edi,%edx,4), %eax
	testl	%eax, %eax
	movl	(%esi), %ebx
	je	LBB4_3
## BB#1:
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	jne	LBB4_36
## BB#2:
	decl	%eax
	movl	%eax, (%edi,%edx,4)
	movl	%edi, %eax
	xorl	%ebx, %ebx
	jmp	LBB4_10
LBB4_3:
	testl	%ebx, %ebx
	je	LBB4_35
## BB#4:
	movl	8(%edi,%edx,4), %eax
	xorl	%ecx, %ecx
	testl	%ebx, %eax
	je	LBB4_36
## BB#5:
	testl	%eax, %eax
	je	LBB4_9
## BB#6:
	movl	%eax, %edx
	.align	4, 0x90
LBB4_7:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%edx), %esi
	incl	%ecx
	andl	%esi, %edx
	jne	LBB4_7
## BB#8:                                ## %hamming_weight.exit.loopexit
	xorl	%edx, %edx
	cmpl	$3, %ecx
	cmoval	%ebx, %edx
	movl	%edx, %ecx
	movl	8(%ebp), %edx
	movl	16(%ebp), %esi
LBB4_9:                                 ## %hamming_weight.exit
	xorl	%ebx, %eax
	movl	%eax, 8(%edi,%edx,4)
	movl	%edi, %eax
LBB4_10:
	movl	4(%esi), %edi
	testl	%edi, %edi
	je	LBB4_35
## BB#11:
	testl	8(%eax), %edi
	jne	LBB4_35
## BB#12:
	orl	12(%eax), %ebx
	testl	%edi, %ebx
	jne	LBB4_35
## BB#13:
	calll	L4$pb
L4$pb:
	popl	%edx
	testl	%ecx, %ecx
	je	LBB4_20
## BB#14:                               ## %.preheader8
	orl	%edi, %ecx
	leal	_edges-L4$pb(%edx), %eax
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	movl	$1, %edx
	movl	$0, -16(%ebp)           ## 4-byte Folded Spill
	.align	4, 0x90
LBB4_15:                                ## =>This Inner Loop Header: Depth=1
	movb	$1, %bl
	cmpl	(%eax), %ecx
	je	LBB4_17
## BB#16:                               ## %select.mid
                                        ##   in Loop: Header=BB4_15 Depth=1
	movl	%ecx, %esi
	movl	-16(%ebp), %ecx         ## 4-byte Reload
	movb	%cl, %bl
	movl	%esi, %ecx
LBB4_17:                                ## %select.end
                                        ##   in Loop: Header=BB4_15 Depth=1
	movb	%bl, -16(%ebp)          ## 1-byte Spill
	movb	%bl, %bh
	andb	$1, %bh
	sete	%bl
	cmpl	$31, %edx
	ja	LBB4_19
## BB#18:                               ## %select.end
                                        ##   in Loop: Header=BB4_15 Depth=1
	addl	$4, %eax
	incl	%edx
	testb	%bl, %bl
	movb	-16(%ebp), %bl          ## 1-byte Reload
	movl	%ecx, %esi
	movb	%bl, %cl
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	%esi, %ecx
	jne	LBB4_15
LBB4_19:                                ## %.critedge
	testb	%bh, %bh
	movl	-20(%ebp), %edx         ## 4-byte Reload
	je	LBB4_35
LBB4_20:
	movl	12(%ebp), %esi
	movl	8(%ebp), %eax
	movl	8(%esi,%eax,4), %ecx
	xorl	%edi, %ecx
	movl	%ecx, -16(%ebp)         ## 4-byte Spill
	movl	%ecx, 8(%esi,%eax,4)
	leal	_mills-L4$pb(%edx), %ebx
	movl	$1, %eax
	xorl	%edx, %edx
	.align	4, 0x90
LBB4_21:                                ## =>This Inner Loop Header: Depth=1
	movl	(%ebx), %ecx
	testl	%ecx, %edi
	je	LBB4_25
## BB#22:                               ##   in Loop: Header=BB4_21 Depth=1
	movl	-16(%ebp), %esi         ## 4-byte Reload
	andl	%ecx, %esi
	cmpl	%ecx, %esi
	movb	$1, %cl
	je	LBB4_24
## BB#23:                               ##   in Loop: Header=BB4_21 Depth=1
	movb	%dl, %cl
LBB4_24:                                ##   in Loop: Header=BB4_21 Depth=1
	movb	%cl, %dl
LBB4_25:                                ##   in Loop: Header=BB4_21 Depth=1
	movb	%dl, %cl
	andb	$1, %cl
	sete	%ch
	cmpl	$15, %eax
	ja	LBB4_27
## BB#26:                               ##   in Loop: Header=BB4_21 Depth=1
	addl	$4, %ebx
	incl	%eax
	testb	%ch, %ch
	jne	LBB4_21
LBB4_27:                                ## %.critedge1
	movl	16(%ebp), %eax
	movl	8(%eax), %eax
	testb	%cl, %cl
	je	LBB4_34
## BB#28:
	testl	%eax, %eax
	je	LBB4_33
## BB#29:
	cmpl	$0, 8(%ebp)
	sete	%cl
	movzbl	%cl, %ebx
	movl	12(%ebp), %edi
	movl	%edi, %ecx
	movl	8(%ecx,%ebx,4), %edx
	xorl	%ecx, %ecx
	testl	%eax, %edx
	je	LBB4_36
## BB#30:                               ## %.preheader
	movl	%edx, %esi
	andl	$7, %esi
	cmpl	$7, %esi
	cmovnel	%ecx, %esi
	movl	%ebx, -16(%ebp)         ## 4-byte Spill
	movl	%edx, %ebx
	andl	$8404996, %ebx          ## imm = 0x804004
	cmpl	$8404996, %ebx          ## imm = 0x804004
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$14680064, %esi         ## imm = 0xE00000
	cmpl	$14680064, %esi         ## imm = 0xE00000
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$2097665, %ebx          ## imm = 0x200201
	cmpl	$2097665, %ebx          ## imm = 0x200201
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$56, %esi
	cmpl	$56, %esi
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$1056800, %ebx          ## imm = 0x102020
	cmpl	$1056800, %ebx          ## imm = 0x102020
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$1835008, %esi          ## imm = 0x1C0000
	cmpl	$1835008, %esi          ## imm = 0x1C0000
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$263176, %ebx           ## imm = 0x40408
	cmpl	$263176, %ebx           ## imm = 0x40408
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$448, %esi              ## imm = 0x1C0
	cmpl	$448, %esi              ## imm = 0x1C0
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$135424, %ebx           ## imm = 0x21100
	cmpl	$135424, %ebx           ## imm = 0x21100
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$229376, %esi           ## imm = 0x38000
	cmpl	$229376, %esi           ## imm = 0x38000
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$34880, %ebx            ## imm = 0x8840
	cmpl	$34880, %ebx            ## imm = 0x8840
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %esi
	andl	$146, %esi
	cmpl	$146, %esi
	cmovnel	%ecx, %esi
	orl	%ebx, %esi
	movl	%edx, %ebx
	andl	$3584, %ebx             ## imm = 0xE00
	cmpl	$3584, %ebx             ## imm = 0xE00
	cmovnel	%ecx, %ebx
	orl	%esi, %ebx
	movl	%edx, %edi
	andl	$28672, %edi            ## imm = 0x7000
	cmpl	$28672, %edi            ## imm = 0x7000
	cmovnel	%ecx, %edi
	orl	%ebx, %edi
	movl	-16(%ebp), %ebx         ## 4-byte Reload
	movl	%edx, %esi
	andl	$4784128, %esi          ## imm = 0x490000
	cmpl	$4784128, %esi          ## imm = 0x490000
	cmovnel	%ecx, %esi
	orl	%edi, %esi
	movl	12(%ebp), %edi
	cmpl	%esi, %edx
	je	LBB4_32
## BB#31:                               ## %.preheader
	andl	%eax, %esi
	jne	LBB4_36
LBB4_32:
	xorl	%eax, %edx
	movl	%edx, 8(%edi,%ebx,4)
	movl	$0, 20(%edi)
	jmp	LBB4_33
LBB4_34:
	testl	%eax, %eax
	je	LBB4_33
LBB4_35:
	xorl	%ecx, %ecx
LBB4_36:
	movzbl	%cl, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB4_33:                                ## %.thread
	movb	$1, %cl
	jmp	LBB4_36

	.globl	_is_final_state
	.align	4, 0x90
_is_final_state:                        ## @is_final_state
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	calll	L5$pb
L5$pb:
	popl	%eax
	movl	%eax, -16(%ebp)         ## 4-byte Spill
	movl	12(%ebp), %ebx
	movl	(%ebx), %esi
	movl	8(%ebx), %edi
	xorl	%edx, %edx
	testl	%edi, %edi
	je	LBB5_3
## BB#1:
	movl	%edi, %eax
	.align	4, 0x90
LBB5_2:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%eax), %ecx
	incl	%edx
	andl	%ecx, %eax
	jne	LBB5_2
LBB5_3:                                 ## %hamming_weight.exit
	movl	16(%ebp), %ecx
	addl	%esi, %edx
	movl	$1, %eax
	cmpl	$2, %edx
	je	LBB5_4
## BB#5:
	movl	%esi, -36(%ebp)         ## 4-byte Spill
	movl	4(%ebx), %eax
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	12(%ebx), %ecx
	movl	%ecx, -20(%ebp)         ## 4-byte Spill
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	$0, %edx
	je	LBB5_8
## BB#6:
	xorl	%edx, %edx
	movl	-20(%ebp), %ecx         ## 4-byte Reload
	.align	4, 0x90
LBB5_7:                                 ## %.lr.ph.i.1
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%ecx), %esi
	incl	%edx
	andl	%esi, %ecx
	jne	LBB5_7
LBB5_8:                                 ## %hamming_weight.exit.1
	addl	-28(%ebp), %edx         ## 4-byte Folded Reload
	cmpl	$2, %edx
	movl	16(%ebp), %ecx
	movl	-36(%ebp), %esi         ## 4-byte Reload
	je	LBB5_4
## BB#9:
	movl	8(%ebp), %edx
	cmpl	$0, (%ebx,%edx,4)
	jne	LBB5_26
## BB#10:
	movl	8(%ebx,%edx,4), %eax
	movl	%eax, -32(%ebp)         ## 4-byte Spill
	testl	%eax, %eax
	je	LBB5_26
## BB#11:
	xorl	%eax, %eax
	movl	-32(%ebp), %ecx         ## 4-byte Reload
	.align	4, 0x90
LBB5_12:                                ## %.lr.ph.i9
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%ecx), %esi
	incl	%eax
	andl	%esi, %ecx
	jne	LBB5_12
## BB#13:                               ## %hamming_weight.exit11
	cmpl	$4, %eax
	movl	-36(%ebp), %esi         ## 4-byte Reload
	jb	LBB5_26
## BB#14:                               ## %.preheader12
	movl	%edi, -44(%ebp)         ## 4-byte Spill
	testl	%edx, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -40(%ebp)         ## 4-byte Spill
	xorl	%esi, %esi
	movl	$0, -24(%ebp)           ## 4-byte Folded Spill
	.align	4, 0x90
LBB5_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_17 Depth 2
	movl	%ebx, %edi
	movl	-16(%ebp), %eax         ## 4-byte Reload
	movl	_edges-L5$pb(%eax,%esi,4), %eax
	movl	-32(%ebp), %ebx         ## 4-byte Reload
	andl	%eax, %ebx
	movl	$-1, %ecx
	je	LBB5_16
	.align	4, 0x90
LBB5_17:                                ## %.lr.ph.i4
                                        ##   Parent Loop BB5_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	-1(%ebx), %edx
	incl	%ecx
	andl	%edx, %ebx
	jne	LBB5_17
## BB#18:                               ## %hamming_weight.exit6
                                        ##   in Loop: Header=BB5_15 Depth=1
	movl	%edi, %ebx
	testl	%ecx, %ecx
	jne	LBB5_22
## BB#19:                               ##   in Loop: Header=BB5_15 Depth=1
	movl	-40(%ebp), %ecx         ## 4-byte Reload
	testl	8(%ebx,%ecx,4), %eax
	movb	$1, %al
	je	LBB5_21
## BB#20:                               ##   in Loop: Header=BB5_15 Depth=1
	movl	-24(%ebp), %eax         ## 4-byte Reload
                                        ## kill: AL<def> AL<kill> EAX<kill>
LBB5_21:                                ##   in Loop: Header=BB5_15 Depth=1
                                        ## kill: AL<def> AL<kill> EAX<def>
	movl	%eax, -24(%ebp)         ## 4-byte Spill
	jmp	LBB5_22
	.align	4, 0x90
LBB5_16:                                ##   in Loop: Header=BB5_15 Depth=1
	movl	%edi, %ebx
LBB5_22:                                ## %hamming_weight.exit6.thread
                                        ##   in Loop: Header=BB5_15 Depth=1
	incl	%esi
	movl	-24(%ebp), %eax         ## 4-byte Reload
                                        ## kill: AL<def> AL<kill> EAX<kill>
	andb	$1, %al
	sete	%cl
	cmpl	$31, %esi
	ja	LBB5_24
## BB#23:                               ## %hamming_weight.exit6.thread
                                        ##   in Loop: Header=BB5_15 Depth=1
	testb	%cl, %cl
	jne	LBB5_15
LBB5_24:                                ## %.critedge
	testb	%al, %al
	movl	-44(%ebp), %edi         ## 4-byte Reload
	movl	16(%ebp), %ecx
	movl	-36(%ebp), %esi         ## 4-byte Reload
	je	LBB5_25
LBB5_26:                                ## %hamming_weight.exit11.thread
	xorl	%eax, %eax
	addl	-28(%ebp), %esi         ## 4-byte Folded Reload
	jne	LBB5_38
## BB#27:                               ## %.preheader
	movl	20(%ebx), %esi
	testl	%esi, %esi
	je	LBB5_34
## BB#28:                               ## %.lr.ph
	movl	16(%ebx), %eax
	xorl	%ecx, %ecx
	.align	4, 0x90
LBB5_29:                                ## =>This Inner Loop Header: Depth=1
	cmpl	%edi, (%eax,%ecx,8)
	jne	LBB5_32
## BB#30:                               ##   in Loop: Header=BB5_29 Depth=1
	movl	-20(%ebp), %edx         ## 4-byte Reload
	cmpl	%edx, 4(%eax,%ecx,8)
	je	LBB5_31
LBB5_32:                                ##   in Loop: Header=BB5_29 Depth=1
	incl	%ecx
	cmpl	%esi, %ecx
	jb	LBB5_29
## BB#33:
	movl	%esi, %eax
LBB5_34:                                ## %._crit_edge
	cmpl	24(%ebx), %eax
	jne	LBB5_35
## BB#36:
	addl	$4096, %eax             ## imm = 0x1000
	movl	%eax, 24(%ebx)
	movl	16(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	calll	_realloc
	movl	%eax, 16(%ebx)
	testl	%eax, %eax
	jne	LBB5_37
## BB#39:
	calll	_abort
LBB5_35:                                ## %._crit_edge29
	movl	16(%ebx), %eax
LBB5_37:
	movl	%edi, (%eax,%esi,8)
	movl	12(%ebx), %ecx
	movl	20(%ebx), %edx
	movl	%ecx, 4(%eax,%edx,8)
	incl	20(%ebx)
	xorl	%eax, %eax
	jmp	LBB5_38
LBB5_31:
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	movb	$1, %al
	jmp	LBB5_38
LBB5_25:
	movl	-40(%ebp), %eax         ## 4-byte Reload
LBB5_4:
	movl	%eax, (%ecx)
	movb	$1, %al
LBB5_38:
	movzbl	%al, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

.zerofill __DATA,__bss,_start_game.game,28,2 ## @start_game.game
	.section	__TEXT,__cstring,cstring_literals
L___func__.serialize_state:             ## @__func__.serialize_state
	.asciz	"serialize_state"

L_.str:                                 ## @.str
	.asciz	"mcp_state.c"

L_.str1:                                ## @.str1
	.asciz	"(game->board[0] & game->board[1]) == 0"

L_.str2:                                ## @.str2
	.asciz	"%u %u %u\n"

L_.str3:                                ## @.str3
	.asciz	"0"

L_.str4:                                ## @.str4
	.asciz	"1"

L_.str5:                                ## @.str5
	.asciz	"."

L_.str6:                                ## @.str6
	.asciz	"\n"

.zerofill __DATA,__bss,_deserialize_move.move,12,2 ## @deserialize_move.move
L_.str7:                                ## @.str7
	.asciz	"%3c%c"

L_.str8:                                ## @.str8
	.asciz	"[MCP] Move was not terminated by a newline character."

.zerofill __DATA,__bss,_dump_move.dump,4,0 ## @dump_move.dump
	.section	__TEXT,__const
	.align	2                       ## @edges
_edges:
	.long	3                       ## 0x3
	.long	6                       ## 0x6
	.long	16388                   ## 0x4004
	.long	8404992                 ## 0x804000
	.long	12582912                ## 0xc00000
	.long	6291456                 ## 0x600000
	.long	2097664                 ## 0x200200
	.long	513                     ## 0x201
	.long	24                      ## 0x18
	.long	48                      ## 0x30
	.long	8224                    ## 0x2020
	.long	1056768                 ## 0x102000
	.long	1572864                 ## 0x180000
	.long	786432                  ## 0xc0000
	.long	263168                  ## 0x40400
	.long	1032                    ## 0x408
	.long	192                     ## 0xc0
	.long	384                     ## 0x180
	.long	4352                    ## 0x1100
	.long	135168                  ## 0x21000
	.long	196608                  ## 0x30000
	.long	98304                   ## 0x18000
	.long	34816                   ## 0x8800
	.long	2112                    ## 0x840
	.long	18                      ## 0x12
	.long	144                     ## 0x90
	.long	1536                    ## 0x600
	.long	3072                    ## 0xc00
	.long	12288                   ## 0x3000
	.long	24576                   ## 0x6000
	.long	589824                  ## 0x90000
	.long	4718592                 ## 0x480000

	.align	2                       ## @mills
_mills:
	.long	7                       ## 0x7
	.long	8404996                 ## 0x804004
	.long	14680064                ## 0xe00000
	.long	2097665                 ## 0x200201
	.long	56                      ## 0x38
	.long	1056800                 ## 0x102020
	.long	1835008                 ## 0x1c0000
	.long	263176                  ## 0x40408
	.long	448                     ## 0x1c0
	.long	135424                  ## 0x21100
	.long	229376                  ## 0x38000
	.long	34880                   ## 0x8840
	.long	146                     ## 0x92
	.long	3584                    ## 0xe00
	.long	28672                   ## 0x7000
	.long	4784128                 ## 0x490000


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stderrp$non_lazy_ptr:
	.indirect_symbol	___stderrp
	.long	0

.subsections_via_symbols
#endif
#ifdef __x86_64__
	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_start_game
	.align	4, 0x90
_start_game:                            ## @start_game
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	$9, _start_game.game(%rip)
	leaq	_start_game.game(%rip), %rax
	movl	$9, _start_game.game+4(%rip)
	movq	$0, _start_game.game+24(%rip)
	movq	$0, _start_game.game+16(%rip)
	movq	$0, _start_game.game+8(%rip)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_serialize_state
	.align	4, 0x90
_serialize_state:                       ## @serialize_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -56
Ltmp7:
	.cfi_offset %r12, -48
Ltmp8:
	.cfi_offset %r13, -40
Ltmp9:
	.cfi_offset %r14, -32
Ltmp10:
	.cfi_offset %r15, -24
	movl	%esi, %r9d
	movq	%rdi, %r14
	movl	8(%rdx), %r15d
	movl	12(%rdx), %eax
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	testl	%r15d, %eax
	jne	LBB1_13
## BB#1:
	movl	(%rdx), %ecx
	movl	4(%rdx), %r8d
	leaq	L_.str2(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r9d, %edx
	callq	_fprintf
	cmpl	$6, %eax
	jne	LBB1_12
## BB#2:
	movl	$1, %r13d
	.align	4, 0x90
LBB1_3:                                 ## %.preheader
                                        ## =>This Inner Loop Header: Depth=1
	movl	%ebx, %r12d
	testl	%r13d, %r15d
	je	LBB1_5
## BB#4:                                ##   in Loop: Header=BB1_3 Depth=1
	leaq	L_.str3(%rip), %rdi
	jmp	LBB1_8
	.align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=1
	testl	-44(%rbp), %r13d        ## 4-byte Folded Reload
	je	LBB1_7
## BB#6:                                ##   in Loop: Header=BB1_3 Depth=1
	leaq	L_.str4(%rip), %rdi
	jmp	LBB1_8
LBB1_7:                                 ##   in Loop: Header=BB1_3 Depth=1
	leaq	L_.str5(%rip), %rdi
	.align	4, 0x90
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=1
	movq	%r14, %rsi
	callq	_fputs
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %ebx
	addl	%r12d, %ebx
	addl	%r13d, %r13d
	cmpl	$16777216, %r13d        ## imm = 0x1000000
	jne	LBB1_3
## BB#9:
	leaq	L_.str6(%rip), %rdi
	movq	%r14, %rsi
	callq	_fputs
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	cmpl	$25, %eax
	jne	LBB1_10
## BB#11:
	movq	%r14, %rdi
	callq	_fflush
	movb	$1, %bl
	jmp	LBB1_12
LBB1_10:
	xorl	%ebx, %ebx
LBB1_12:
	movb	%bl, %al
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_13:
	leaq	L___func__.serialize_state(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	L_.str1(%rip), %rcx
	movl	$92, %edx
	callq	___assert_rtn
	.cfi_endproc

	.globl	_deserialize_move
	.align	4, 0x90
_deserialize_move:                      ## @deserialize_move
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp11:
	.cfi_def_cfa_offset 16
Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp14:
	.cfi_offset %rbx, -48
Ltmp15:
	.cfi_offset %r12, -40
Ltmp16:
	.cfi_offset %r14, -32
Ltmp17:
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	leaq	L_.str7(%rip), %r14
	leaq	-35(%rbp), %r15
	leaq	-36(%rbp), %r12
	.align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	callq	_fscanf
	cmpl	$2, %eax
	je	LBB2_4
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, %eax
	movl	$0, %eax
	jne	LBB2_13
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	callq	___error
	cmpl	$4, (%rax)
	movl	$0, %eax
	je	LBB2_1
	jmp	LBB2_13
LBB2_4:
	movzbl	-36(%rbp), %eax
	cmpl	$10, %eax
	je	LBB2_6
## BB#5:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	L_.str8(%rip), %rdi
	movl	$53, %esi
	movl	$1, %edx
	callq	_fwrite
LBB2_6:                                 ## %.preheader
	movsbl	-35(%rbp), %edi
	callq	___toupper
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movb	%al, -35(%rbp)
	shll	$24, %eax
	leal	-1073741825(%rax), %ecx
	xorl	%ebx, %ebx
	cmpl	$419430398, %ecx        ## imm = 0x18FFFFFE
	movl	$0, %edx
	ja	LBB2_8
## BB#7:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
LBB2_8:
	movl	%edx, _deserialize_move.move(%rip)
	movsbl	-34(%rbp), %edi
	callq	___toupper
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movb	%al, -34(%rbp)
	shll	$24, %eax
	leal	-1073741825(%rax), %ecx
	cmpl	$419430399, %ecx        ## imm = 0x18FFFFFF
	jae	LBB2_10
## BB#9:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
LBB2_10:
	movl	%ebx, _deserialize_move.move+4(%rip)
	movsbl	-33(%rbp), %edi
	callq	___toupper
                                        ## kill: EAX<def> EAX<kill> RAX<def>
	movb	%al, -33(%rbp)
	shll	$24, %eax
	leal	-1073741825(%rax), %ecx
	xorl	%edx, %edx
	cmpl	$419430398, %ecx        ## imm = 0x18FFFFFE
	ja	LBB2_12
## BB#11:
	shrl	$24, %eax
	addl	$-65, %eax
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
LBB2_12:                                ## %.critedge.loopexit3
	movl	%edx, _deserialize_move.move+8(%rip)
	leaq	_deserialize_move.move(%rip), %rax
LBB2_13:                                ## %.critedge
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_dump_move
	.align	4, 0x90
_dump_move:                             ## @dump_move
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	movb	$32, _dump_move.dump+2(%rip)
	movw	$8224, _dump_move.dump(%rip) ## imm = 0x2020
	movl	(%rdi), %r8d
	movl	4(%rdi), %ecx
	movl	8(%rdi), %edx
	movl	$1, %esi
	movb	$65, %al
	.align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	%esi, %r8d
	jne	LBB3_3
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%al, _dump_move.dump(%rip)
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	cmpl	%esi, %ecx
	jne	LBB3_5
## BB#4:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%al, _dump_move.dump+1(%rip)
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	cmpl	%esi, %edx
	jne	LBB3_7
## BB#6:                                ##   in Loop: Header=BB3_1 Depth=1
	movb	%al, _dump_move.dump+2(%rip)
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	addl	%esi, %esi
	incb	%al
	cmpl	$16777216, %esi         ## imm = 0x1000000
	jb	LBB3_1
## BB#8:
	leaq	_dump_move.dump(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_apply_move
	.align	4, 0x90
_apply_move:                            ## @apply_move
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp24:
	.cfi_offset %rbx, -40
Ltmp25:
	.cfi_offset %r14, -32
Ltmp26:
	.cfi_offset %r15, -24
	movl	%edi, %r9d
	movl	(%rsi,%r9,4), %ebx
	testl	%ebx, %ebx
	movl	(%rdx), %r10d
	je	LBB4_3
## BB#1:
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jne	LBB4_36
## BB#2:
	decl	%ebx
	movl	%ebx, (%rsi,%r9,4)
	xorl	%r10d, %r10d
	jmp	LBB4_10
LBB4_3:
	testl	%r10d, %r10d
	je	LBB4_35
## BB#4:
	movl	8(%rsi,%r9,4), %r8d
	xorl	%eax, %eax
	testl	%r10d, %r8d
	je	LBB4_36
## BB#5:
	testl	%r8d, %r8d
	je	LBB4_9
## BB#6:
	movl	%r8d, %ebx
	.align	4, 0x90
LBB4_7:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%rbx), %ecx
	incl	%eax
	andl	%ebx, %ecx
	movl	%ecx, %ebx
	jne	LBB4_7
## BB#8:                                ## %hamming_weight.exit.loopexit
	xorl	%ecx, %ecx
	cmpl	$3, %eax
	cmoval	%r10d, %ecx
	movl	%ecx, %eax
LBB4_9:                                 ## %hamming_weight.exit
	xorl	%r10d, %r8d
	movl	%r8d, 8(%rsi,%r9,4)
LBB4_10:
	movl	4(%rdx), %r8d
	testl	%r8d, %r8d
	je	LBB4_35
## BB#11:
	testl	8(%rsi), %r8d
	jne	LBB4_35
## BB#12:
	orl	12(%rsi), %r10d
	testl	%r8d, %r10d
	jne	LBB4_35
## BB#13:
	testl	%eax, %eax
	je	LBB4_20
## BB#14:                               ## %.preheader8
	orl	%r8d, %eax
	leaq	_edges(%rip), %r10
	xorl	%r14d, %r14d
	movl	$1, %r15d
	.align	4, 0x90
LBB4_15:                                ## =>This Inner Loop Header: Depth=1
	movb	$1, %r11b
	cmpl	(%r10), %eax
	je	LBB4_17
## BB#16:                               ## %select.mid
                                        ##   in Loop: Header=BB4_15 Depth=1
	movb	%r14b, %r11b
LBB4_17:                                ## %select.end
                                        ##   in Loop: Header=BB4_15 Depth=1
	movb	%r11b, %bl
	andb	$1, %bl
	sete	%cl
	cmpq	$31, %r15
	ja	LBB4_19
## BB#18:                               ## %select.end
                                        ##   in Loop: Header=BB4_15 Depth=1
	addq	$4, %r10
	incq	%r15
	testb	%cl, %cl
	movb	%r11b, %r14b
	jne	LBB4_15
LBB4_19:                                ## %.critedge
	testb	%bl, %bl
	je	LBB4_35
LBB4_20:
	movl	8(%rsi,%r9,4), %r10d
	xorl	%r8d, %r10d
	movl	%r10d, 8(%rsi,%r9,4)
	leaq	_mills(%rip), %r11
	xorl	%r9d, %r9d
	movl	$1, %eax
	.align	4, 0x90
LBB4_21:                                ## =>This Inner Loop Header: Depth=1
	movl	(%r11), %ecx
	testl	%ecx, %r8d
	je	LBB4_25
## BB#22:                               ##   in Loop: Header=BB4_21 Depth=1
	movl	%r10d, %ebx
	andl	%ecx, %ebx
	cmpl	%ecx, %ebx
	movb	$1, %cl
	je	LBB4_24
## BB#23:                               ##   in Loop: Header=BB4_21 Depth=1
	movb	%r9b, %cl
LBB4_24:                                ##   in Loop: Header=BB4_21 Depth=1
	movb	%cl, %r9b
LBB4_25:                                ##   in Loop: Header=BB4_21 Depth=1
	movb	%r9b, %bl
	andb	$1, %bl
	sete	%cl
	cmpq	$15, %rax
	ja	LBB4_27
## BB#26:                               ##   in Loop: Header=BB4_21 Depth=1
	addq	$4, %r11
	incq	%rax
	testb	%cl, %cl
	jne	LBB4_21
LBB4_27:                                ## %.critedge1
	movl	8(%rdx), %r9d
	testb	%bl, %bl
	je	LBB4_34
## BB#28:
	testl	%r9d, %r9d
	je	LBB4_33
## BB#29:
	testl	%edi, %edi
	sete	%al
	movzbl	%al, %r8d
	movl	8(%rsi,%r8,4), %r10d
	xorl	%eax, %eax
	testl	%r9d, %r10d
	je	LBB4_36
## BB#30:                               ## %.preheader
	movl	%r10d, %edi
	andl	$7, %edi
	cmpl	$7, %edi
	cmovnel	%eax, %edi
	movl	%r10d, %ebx
	andl	$8404996, %ebx          ## imm = 0x804004
	cmpl	$8404996, %ebx          ## imm = 0x804004
	cmovnel	%eax, %ebx
	orl	%edi, %ebx
	movl	%r10d, %edi
	andl	$14680064, %edi         ## imm = 0xE00000
	cmpl	$14680064, %edi         ## imm = 0xE00000
	cmovnel	%eax, %edi
	orl	%ebx, %edi
	movl	%r10d, %edx
	andl	$2097665, %edx          ## imm = 0x200201
	cmpl	$2097665, %edx          ## imm = 0x200201
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %edi
	andl	$56, %edi
	cmpl	$56, %edi
	cmovnel	%eax, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	andl	$1056800, %edx          ## imm = 0x102020
	cmpl	$1056800, %edx          ## imm = 0x102020
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %edi
	andl	$1835008, %edi          ## imm = 0x1C0000
	cmpl	$1835008, %edi          ## imm = 0x1C0000
	cmovnel	%eax, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	andl	$263176, %edx           ## imm = 0x40408
	cmpl	$263176, %edx           ## imm = 0x40408
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %edi
	andl	$448, %edi              ## imm = 0x1C0
	cmpl	$448, %edi              ## imm = 0x1C0
	cmovnel	%eax, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	andl	$135424, %edx           ## imm = 0x21100
	cmpl	$135424, %edx           ## imm = 0x21100
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %edi
	andl	$229376, %edi           ## imm = 0x38000
	cmpl	$229376, %edi           ## imm = 0x38000
	cmovnel	%eax, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	andl	$34880, %edx            ## imm = 0x8840
	cmpl	$34880, %edx            ## imm = 0x8840
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %edi
	andl	$146, %edi
	cmpl	$146, %edi
	cmovnel	%eax, %edi
	orl	%edx, %edi
	movl	%r10d, %edx
	andl	$3584, %edx             ## imm = 0xE00
	cmpl	$3584, %edx             ## imm = 0xE00
	cmovnel	%eax, %edx
	orl	%edi, %edx
	movl	%r10d, %ecx
	andl	$28672, %ecx            ## imm = 0x7000
	cmpl	$28672, %ecx            ## imm = 0x7000
	cmovnel	%eax, %ecx
	orl	%edx, %ecx
	movl	%r10d, %edi
	andl	$4784128, %edi          ## imm = 0x490000
	cmpl	$4784128, %edi          ## imm = 0x490000
	cmovnel	%eax, %edi
	orl	%ecx, %edi
	cmpl	%edi, %r10d
	je	LBB4_32
## BB#31:                               ## %.preheader
	andl	%r9d, %edi
	jne	LBB4_36
LBB4_32:
	xorl	%r9d, %r10d
	movl	%r10d, 8(%rsi,%r8,4)
	movl	$0, 24(%rsi)
	jmp	LBB4_33
LBB4_34:
	testl	%r9d, %r9d
	je	LBB4_33
LBB4_35:
	xorl	%eax, %eax
LBB4_36:
                                        ## kill: AL<def> AL<kill> EAX<kill>
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_33:                                ## %.thread
	movb	$1, %al
	jmp	LBB4_36
	.cfi_endproc

	.globl	_is_final_state
	.align	4, 0x90
_is_final_state:                        ## @is_final_state
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
Ltmp30:
	.cfi_offset %rbx, -56
Ltmp31:
	.cfi_offset %r12, -48
Ltmp32:
	.cfi_offset %r13, -40
Ltmp33:
	.cfi_offset %r14, -32
Ltmp34:
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	(%r15), %r13d
	movl	8(%r15), %r14d
	xorl	%esi, %esi
	testl	%r14d, %r14d
	je	LBB5_3
## BB#1:
	movl	%r14d, %eax
	.align	4, 0x90
LBB5_2:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	incl	%esi
	andl	%eax, %ecx
	movl	%ecx, %eax
	jne	LBB5_2
LBB5_3:                                 ## %hamming_weight.exit
	addl	%r13d, %esi
	movl	$1, %eax
	cmpl	$2, %esi
	je	LBB5_4
## BB#5:
	movl	4(%r15), %r8d
	movl	12(%r15), %r12d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	movl	$0, %esi
	je	LBB5_8
## BB#6:
	xorl	%esi, %esi
	movl	%r12d, %ecx
	.align	4, 0x90
LBB5_7:                                 ## %.lr.ph.i.1
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %ebx
	incl	%esi
	andl	%ecx, %ebx
	movl	%ebx, %ecx
	jne	LBB5_7
LBB5_8:                                 ## %hamming_weight.exit.1
	addl	%r8d, %esi
	cmpl	$2, %esi
	je	LBB5_4
## BB#9:
	movl	%edi, %eax
	cmpl	$0, (%r15,%rax,4)
	jne	LBB5_25
## BB#10:
	movl	8(%r15,%rax,4), %r10d
	testl	%r10d, %r10d
	je	LBB5_25
## BB#11:
	xorl	%eax, %eax
	movl	%r10d, %ecx
	.align	4, 0x90
LBB5_12:                                ## %.lr.ph.i9
                                        ## =>This Inner Loop Header: Depth=1
	leal	-1(%rcx), %esi
	incl	%eax
	andl	%ecx, %esi
	movl	%esi, %ecx
	jne	LBB5_12
## BB#13:                               ## %hamming_weight.exit11
	cmpl	$4, %eax
	jb	LBB5_25
## BB#14:                               ## %.preheader12
	testl	%edi, %edi
	sete	%al
	movzbl	%al, %eax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	.align	4, 0x90
LBB5_15:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_16 Depth 2
	leaq	_edges(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	%r10d, %r9d
	andl	%esi, %r9d
	movl	$-1, %ecx
	je	LBB5_21
	.align	4, 0x90
LBB5_16:                                ## %.lr.ph.i4
                                        ##   Parent Loop BB5_15 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leal	-1(%r9), %ebx
	incl	%ecx
	andl	%r9d, %ebx
	movl	%ebx, %r9d
	jne	LBB5_16
## BB#17:                               ## %hamming_weight.exit6
                                        ##   in Loop: Header=BB5_15 Depth=1
	testl	%ecx, %ecx
	jne	LBB5_21
## BB#18:                               ##   in Loop: Header=BB5_15 Depth=1
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	testl	8(%r15,%rcx,4), %esi
	movb	$1, %cl
	je	LBB5_20
## BB#19:                               ##   in Loop: Header=BB5_15 Depth=1
	movb	%r11b, %cl
LBB5_20:                                ##   in Loop: Header=BB5_15 Depth=1
	movb	%cl, %r11b
LBB5_21:                                ## %hamming_weight.exit6.thread
                                        ##   in Loop: Header=BB5_15 Depth=1
	incq	%rax
	movb	%r11b, %cl
	andb	$1, %cl
	sete	%bl
	cmpq	$31, %rax
	ja	LBB5_23
## BB#22:                               ## %hamming_weight.exit6.thread
                                        ##   in Loop: Header=BB5_15 Depth=1
	testb	%bl, %bl
	jne	LBB5_15
LBB5_23:                                ## %.critedge
	testb	%cl, %cl
	je	LBB5_24
LBB5_25:                                ## %hamming_weight.exit11.thread
	xorl	%eax, %eax
	addl	%r8d, %r13d
	jne	LBB5_37
## BB#26:                               ## %.preheader
	movl	24(%r15), %ebx
	testq	%rbx, %rbx
	je	LBB5_33
## BB#27:                               ## %.lr.ph
	movq	16(%r15), %rax
	xorl	%ecx, %ecx
	.align	4, 0x90
LBB5_28:                                ## =>This Inner Loop Header: Depth=1
	cmpl	%r14d, (%rax,%rcx,8)
	jne	LBB5_31
## BB#29:                               ##   in Loop: Header=BB5_28 Depth=1
	cmpl	%r12d, 4(%rax,%rcx,8)
	je	LBB5_30
LBB5_31:                                ##   in Loop: Header=BB5_28 Depth=1
	incq	%rcx
	cmpq	%rbx, %rcx
	jb	LBB5_28
## BB#32:
	movl	%ebx, %eax
LBB5_33:                                ## %._crit_edge
	cmpl	28(%r15), %eax
	jne	LBB5_34
## BB#35:
	addl	$4096, %eax             ## imm = 0x1000
	movl	%eax, 28(%r15)
	movq	16(%r15), %rdi
	movq	%rax, %rsi
	callq	_realloc
	movq	%rax, 16(%r15)
	testq	%rax, %rax
	jne	LBB5_36
## BB#38:
	callq	_abort
LBB5_34:                                ## %._crit_edge29
	movq	16(%r15), %rax
LBB5_36:
	movl	%r14d, (%rax,%rbx,8)
	movl	12(%r15), %ecx
	movl	24(%r15), %edx
	movl	%ecx, 4(%rax,%rdx,8)
	incl	24(%r15)
	xorl	%eax, %eax
	jmp	LBB5_37
LBB5_30:
	movl	$-1, (%rdx)
	movb	$1, %al
	jmp	LBB5_37
LBB5_24:
	testl	%edi, %edi
	sete	%al
	movzbl	%al, %eax
LBB5_4:
	movl	%eax, (%rdx)
	movb	$1, %al
LBB5_37:
                                        ## kill: AL<def> AL<kill> RAX<kill>
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

.zerofill __DATA,__bss,_start_game.game,32,3 ## @start_game.game
	.section	__TEXT,__cstring,cstring_literals
L___func__.serialize_state:             ## @__func__.serialize_state
	.asciz	"serialize_state"

L_.str:                                 ## @.str
	.asciz	"mcp_state.c"

L_.str1:                                ## @.str1
	.asciz	"(game->board[0] & game->board[1]) == 0"

L_.str2:                                ## @.str2
	.asciz	"%u %u %u\n"

L_.str3:                                ## @.str3
	.asciz	"0"

L_.str4:                                ## @.str4
	.asciz	"1"

L_.str5:                                ## @.str5
	.asciz	"."

L_.str6:                                ## @.str6
	.asciz	"\n"

.zerofill __DATA,__bss,_deserialize_move.move,12,2 ## @deserialize_move.move
L_.str7:                                ## @.str7
	.asciz	"%3c%c"

L_.str8:                                ## @.str8
	.asciz	"[MCP] Move was not terminated by a newline character."

.zerofill __DATA,__bss,_dump_move.dump,4,0 ## @dump_move.dump
	.section	__TEXT,__const
	.align	4                       ## @edges
_edges:
	.long	3                       ## 0x3
	.long	6                       ## 0x6
	.long	16388                   ## 0x4004
	.long	8404992                 ## 0x804000
	.long	12582912                ## 0xc00000
	.long	6291456                 ## 0x600000
	.long	2097664                 ## 0x200200
	.long	513                     ## 0x201
	.long	24                      ## 0x18
	.long	48                      ## 0x30
	.long	8224                    ## 0x2020
	.long	1056768                 ## 0x102000
	.long	1572864                 ## 0x180000
	.long	786432                  ## 0xc0000
	.long	263168                  ## 0x40400
	.long	1032                    ## 0x408
	.long	192                     ## 0xc0
	.long	384                     ## 0x180
	.long	4352                    ## 0x1100
	.long	135168                  ## 0x21000
	.long	196608                  ## 0x30000
	.long	98304                   ## 0x18000
	.long	34816                   ## 0x8800
	.long	2112                    ## 0x840
	.long	18                      ## 0x12
	.long	144                     ## 0x90
	.long	1536                    ## 0x600
	.long	3072                    ## 0xc00
	.long	12288                   ## 0x3000
	.long	24576                   ## 0x6000
	.long	589824                  ## 0x90000
	.long	4718592                 ## 0x480000

	.align	4                       ## @mills
_mills:
	.long	7                       ## 0x7
	.long	8404996                 ## 0x804004
	.long	14680064                ## 0xe00000
	.long	2097665                 ## 0x200201
	.long	56                      ## 0x38
	.long	1056800                 ## 0x102020
	.long	1835008                 ## 0x1c0000
	.long	263176                  ## 0x40408
	.long	448                     ## 0x1c0
	.long	135424                  ## 0x21100
	.long	229376                  ## 0x38000
	.long	34880                   ## 0x8840
	.long	146                     ## 0x92
	.long	3584                    ## 0xe00
	.long	28672                   ## 0x7000
	.long	4784128                 ## 0x490000


.subsections_via_symbols
#endif
#endif
#ifdef __WIN32__
#ifdef __i386__
	.file	"mcp_state.c"
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4,,15
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
	subl	$28, %esp
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	addl	$28, %esp
	ret
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4,,15
	.globl	_start_game
	.def	_start_game;	.scl	2;	.type	32;	.endef
_start_game:
	movl	$9, _game.2104
	movl	$_game.2104, %eax
	movl	$9, _game.2104+4
	movl	$0, _game.2104+8
	movl	$0, _game.2104+12
	movl	$0, _game.2104+16
	movl	$0, _game.2104+20
	movl	$0, _game.2104+24
	ret
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.section .rdata,"dr"
LC2:
	.ascii "mcp_state.c\0"
	.align 4
LC3:
	.ascii "(game->board[0] & game->board[1]) == 0\0"
LC4:
	.ascii "%u %u %u\12\0"
LC5:
	.ascii "0\0"
LC6:
	.ascii "1\0"
LC7:
	.ascii ".\0"
LC8:
	.ascii "\12\0"
	.section	.text.unlikely,"x"
LCOLDB9:
	.text
LHOTB9:
	.p2align 4,,15
	.globl	_serialize_state
	.def	_serialize_state;	.scl	2;	.type	32;	.endef
_serialize_state:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	72(%esp), %ebp
	movl	8(%ebp), %eax
	testl	%eax, 12(%ebp)
	jne	L17
	movl	4(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	0(%ebp), %eax
	movl	$LC4, 4(%esp)
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	cmpl	$6, %eax
	je	L6
L12:
	xorl	%eax, %eax
L7:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,10
L6:
	movl	$24, %esi
	xorl	%edi, %edi
	movl	$1, %ebx
	jmp	L11
	.p2align 4,,10
L20:
	movl	$LC6, (%esp)
L15:
	call	_fputs
	cmpl	$-1, %eax
	setne	%al
	addl	%ebx, %ebx
	movzbl	%al, %eax
	addl	%eax, %edi
	subl	$1, %esi
	je	L18
L11:
	movl	64(%esp), %eax
	testl	%ebx, 8(%ebp)
	jne	L19
	testl	%ebx, 12(%ebp)
	movl	%eax, 4(%esp)
	jne	L20
	movl	$LC7, (%esp)
	jmp	L15
	.p2align 4,,10
L19:
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	jmp	L15
	.p2align 4,,10
L18:
	movl	64(%esp), %eax
	movl	$LC8, (%esp)
	movl	%eax, 4(%esp)
	call	_fputs
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %edi
	cmpl	$25, %edi
	jne	L12
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	$1, %eax
	jmp	L7
L17:
	movl	$92, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$LC3, (%esp)
	call	__assert
	.section	.text.unlikely,"x"
LCOLDE9:
	.text
LHOTE9:
	.section .rdata,"dr"
LC10:
	.ascii "%3c%c\0"
	.align 4
LC11:
	.ascii "[MCP] Move was not terminated by a newline character.\0"
	.section	.text.unlikely,"x"
LCOLDB12:
	.text
LHOTB12:
	.p2align 4,,15
	.globl	_deserialize_move
	.def	_deserialize_move;	.scl	2;	.type	32;	.endef
_deserialize_move:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	48(%esp), %edi
	leal	28(%esp), %esi
	leal	29(%esp), %ebx
	jmp	L23
	.p2align 4,,10
L35:
	call	__errno
	cmpl	$4, (%eax)
	jne	L25
L23:
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%edi, (%esp)
	call	_fscanf
	cmpl	$-1, %eax
	je	L35
	cmpl	$2, %eax
	jne	L25
	cmpb	$10, 28(%esp)
	je	L26
	movl	__imp___iob, %eax
	movl	$LC11, 4(%esp)
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
L26:
	movsbl	29(%esp), %eax
	movl	%eax, (%esp)
	call	_toupper
	xorl	%edx, %edx
	leal	-65(%eax), %ecx
	movb	%al, 29(%esp)
	cmpb	$23, %cl
	ja	L27
	movl	$1, %edx
	sall	%cl, %edx
L27:
	movsbl	30(%esp), %eax
	movl	%edx, _move.2118
	movl	%eax, (%esp)
	call	_toupper
	xorl	%edx, %edx
	leal	-65(%eax), %ecx
	movb	%al, 30(%esp)
	cmpb	$23, %cl
	ja	L28
	movl	$1, %edx
	sall	%cl, %edx
L28:
	movsbl	31(%esp), %eax
	movl	%edx, _move.2118+4
	movl	%eax, (%esp)
	call	_toupper
	xorl	%edx, %edx
	leal	-65(%eax), %ecx
	cmpb	$23, %cl
	jbe	L36
L29:
	movl	%edx, _move.2118+8
	addl	$32, %esp
	movl	$_move.2118, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.p2align 4,,10
L36:
	movl	$1, %edx
	sall	%cl, %edx
	jmp	L29
	.p2align 4,,10
L25:
	addl	$32, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	ret
	.section	.text.unlikely,"x"
LCOLDE12:
	.text
LHOTE12:
	.section	.text.unlikely,"x"
LCOLDB13:
	.text
LHOTB13:
	.p2align 4,,15
	.globl	_dump_move
	.def	_dump_move;	.scl	2;	.type	32;	.endef
_dump_move:
	pushl	%ebp
	movl	$65, %edx
	movl	$32, %ebp
	pushl	%edi
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	subl	$4, %esp
	movb	$32, _dump.2131+2
	movl	24(%esp), %eax
	movb	$32, _dump.2131+1
	movb	$32, _dump.2131
	movb	$0, 2(%esp)
	movb	$32, 1(%esp)
	movl	(%eax), %esi
	movb	$0, (%esp)
	movl	4(%eax), %ebx
	movb	$32, 3(%esp)
	movl	8(%eax), %ecx
	movl	$1, %eax
	jmp	L41
	.p2align 4,,10
L38:
	cmpl	%eax, %ebx
	je	L59
L39:
	cmpl	%ecx, %eax
	je	L60
L40:
	addl	$1, %edx
	addl	%eax, %eax
	cmpb	$89, %dl
	je	L61
L41:
	cmpl	%eax, %esi
	jne	L38
	movl	%edx, %ebp
	movl	$1, %edi
	cmpl	%eax, %ebx
	jne	L39
L59:
	movb	%dl, 3(%esp)
	movb	$1, (%esp)
	cmpl	%ecx, %eax
	jne	L40
L60:
	movb	%dl, 1(%esp)
	addl	$1, %edx
	addl	%eax, %eax
	movb	$1, 2(%esp)
	cmpb	$89, %dl
	jne	L41
L61:
	movl	%edi, %eax
	testb	%al, %al
	jne	L62
L42:
	cmpb	$0, (%esp)
	je	L43
	movzbl	3(%esp), %eax
	movb	%al, _dump.2131+1
L43:
	cmpb	$0, 2(%esp)
	je	L44
	movzbl	1(%esp), %eax
	movb	%al, _dump.2131+2
L44:
	addl	$4, %esp
	movl	$_dump.2131, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L62:
	movl	%ebp, %eax
	movb	%al, _dump.2131
	jmp	L42
	.section	.text.unlikely,"x"
LCOLDE13:
	.text
LHOTE13:
	.section	.text.unlikely,"x"
LCOLDB14:
	.text
LHOTB14:
	.p2align 4,,15
	.globl	_apply_move
	.def	_apply_move;	.scl	2;	.type	32;	.endef
_apply_move:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	24(%esp), %eax
	movl	20(%esp), %edi
	leal	(%eax,%edi,4), %edx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L64
	movl	28(%esp), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	jne	L68
	subl	$1, %eax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%eax, (%edx)
	movl	%ebx, %eax
L67:
	movl	4(%eax), %ebx
	testl	%ebx, %ebx
	je	L68
	movl	24(%esp), %eax
	testl	%ebx, 8(%eax)
	jne	L68
	orl	12(%eax), %esi
	testl	%ebx, %esi
	jne	L68
	testl	%ecx, %ecx
	je	L71
	movl	%ecx, %edi
	xorl	%eax, %eax
	movl	%edx, %ebp
	orl	%ebx, %edi
	.p2align 4,,10
L72:
	movl	_edges(,%eax,4), %esi
	addl	$1, %eax
	cmpl	$31, %eax
	setbe	%dl
	cmpl	%edi, %esi
	sete	%cl
	cmpb	%cl, %dl
	ja	L72
	movl	%ebp, %edx
	cmpl	%edi, %esi
	jne	L68
L71:
	movl	8(%edx), %edi
	xorl	%ebx, %edi
	movl	%edi, 8(%edx)
	xorl	%edx, %edx
	.p2align 4,,10
L73:
	movl	_mills(,%edx,4), %ecx
	movl	%edi, %eax
	andl	%ecx, %eax
	cmpl	%ecx, %eax
	sete	%al
	andl	%ebx, %ecx
	cmpl	$1, %ecx
	movl	%eax, %esi
	sbbl	%eax, %eax
	addl	$1, %edx
	notl	%eax
	andl	%esi, %eax
	cmpl	$15, %edx
	setbe	%cl
	cmpb	%cl, %al
	jb	L73
	testb	%al, %al
	movl	28(%esp), %eax
	je	L74
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L108
	movl	20(%esp), %ecx
	xorl	%eax, %eax
	movl	24(%esp), %ebx
	testl	%ecx, %ecx
	sete	%al
	leal	(%ebx,%eax,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %edx
	je	L68
	movl	%eax, %ecx
	movl	%eax, %edi
	andl	$7, %ecx
	cmpl	$7, %ecx
	setne	%cl
	andl	$8404996, %edi
	movzbl	%cl, %ecx
	subl	$1, %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	orl	$8404996, %esi
	cmpl	$8404996, %edi
	je	L77
	movl	%ecx, %esi
L77:
	movl	%eax, %ecx
	movl	%esi, %edi
	andl	$14680064, %ecx
	orl	$14680064, %edi
	cmpl	$14680064, %ecx
	je	L142
L79:
	movl	%eax, %ecx
	movl	%esi, %edi
	andl	$2097665, %ecx
	orl	$2097665, %edi
	cmpl	$2097665, %ecx
	je	L81
	movl	%esi, %edi
L81:
	movl	%eax, %esi
	movl	%edi, %ecx
	andl	$56, %esi
	orl	$56, %ecx
	cmpl	$56, %esi
	je	L83
	movl	%edi, %ecx
L83:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$1056800, %edi
	orl	$1056800, %esi
	cmpl	$1056800, %edi
	je	L85
	movl	%ecx, %esi
L85:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$1835008, %edi
	orl	$1835008, %ecx
	cmpl	$1835008, %edi
	je	L87
	movl	%esi, %ecx
L87:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$263176, %edi
	orl	$263176, %esi
	cmpl	$263176, %edi
	je	L89
	movl	%ecx, %esi
L89:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$448, %edi
	orl	$448, %ecx
	cmpl	$448, %edi
	je	L91
	movl	%esi, %ecx
L91:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$135424, %edi
	orl	$135424, %esi
	cmpl	$135424, %edi
	je	L93
	movl	%ecx, %esi
L93:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$229376, %edi
	orl	$229376, %ecx
	cmpl	$229376, %edi
	je	L95
	movl	%esi, %ecx
L95:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$34880, %edi
	orl	$34880, %esi
	cmpl	$34880, %edi
	je	L97
	movl	%ecx, %esi
L97:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$146, %edi
	orb	$-110, %cl
	cmpl	$146, %edi
	je	L99
	movl	%esi, %ecx
L99:
	movl	%eax, %edi
	movl	%ecx, %esi
	andl	$3584, %edi
	orl	$3584, %esi
	cmpl	$3584, %edi
	je	L101
	movl	%ecx, %esi
L101:
	movl	%eax, %edi
	movl	%esi, %ecx
	andl	$28672, %edi
	orb	$112, %ch
	cmpl	$28672, %edi
	je	L103
	movl	%esi, %ecx
L103:
	movl	%eax, %esi
	movl	%ecx, %edi
	andl	$4784128, %esi
	orl	$4784128, %edi
	cmpl	$4784128, %esi
	je	L143
L105:
	cmpl	%eax, %ecx
	je	L106
	testl	%edx, %ecx
	jne	L68
L106:
	xorl	%edx, %eax
	movl	%eax, 8(%ebx)
	movl	24(%esp), %eax
	movl	$0, 20(%eax)
	movl	$1, %eax
	jmp	L140
	.p2align 4,,10
L64:
	movl	28(%esp), %eax
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	L144
L68:
	xorl	%eax, %eax
L140:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,10
L144:
	movl	8(%edx), %edi
	testl	%edi, %esi
	je	L68
	movl	%edi, %eax
	xorl	%ebx, %ebx
	.p2align 4,,10
L69:
	leal	-1(%eax), %ecx
	addl	$1, %ebx
	andl	%ecx, %eax
	jne	L69
	cmpl	$4, %ebx
	movl	28(%esp), %eax
	sbbl	%ecx, %ecx
	xorl	%esi, %edi
	notl	%ecx
	movl	%edi, 8(%edx)
	andl	%esi, %ecx
	jmp	L67
	.p2align 4,,10
L74:
	movl	8(%eax), %eax
L75:
	testl	%eax, %eax
	sete	%al
	jmp	L140
L108:
	xorl	%eax, %eax
	jmp	L75
L143:
	movl	%edi, %ecx
	jmp	L105
L142:
	movl	%edi, %esi
	jmp	L79
	.section	.text.unlikely,"x"
LCOLDE14:
	.text
LHOTE14:
	.section	.text.unlikely,"x"
LCOLDB15:
	.text
LHOTB15:
	.p2align 4,,15
	.globl	_is_final_state
	.def	_is_final_state;	.scl	2;	.type	32;	.endef
_is_final_state:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	xorl	%ebx, %ebx
	subl	$28, %esp
	movl	52(%esp), %edi
L150:
	movl	8(%edi,%ebx,4), %eax
	xorl	%ecx, %ecx
	movl	(%edi,%ebx,4), %esi
	testl	%eax, %eax
	je	L146
	.p2align 4,,10
L147:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	L147
L146:
	addl	%esi, %ecx
	cmpl	$2, %ecx
	je	L183
	addl	$1, %ebx
	cmpl	$2, %ebx
	jne	L150
	movl	48(%esp), %eax
	leal	(%edi,%eax,4), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	jne	L151
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	L151
	movl	%ebp, %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
L152:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	L152
	xorl	%ebx, %ebx
	cmpl	$3, %ecx
	jbe	L151
	.p2align 4,,10
L170:
	movl	_edges(,%ebx,4), %esi
	movl	%ebp, %eax
	andl	%esi, %eax
	je	L165
	xorl	%ecx, %ecx
	.p2align 4,,10
L155:
	leal	-1(%eax), %edx
	addl	$1, %ecx
	andl	%edx, %eax
	jne	L155
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	L184
L154:
	addl	$1, %ebx
	cmpl	$31, %ebx
	setbe	%dl
	cmpb	%dl, %al
	jb	L170
	testb	%al, %al
	je	L185
	.p2align 4,,10
L151:
	movl	4(%edi), %eax
	addl	(%edi), %eax
	jne	L167
	movl	20(%edi), %ecx
	xorl	%eax, %eax
	movl	16(%edi), %edx
	testl	%ecx, %ecx
	je	L158
	movl	8(%edi), %ebx
	xorl	%eax, %eax
	jmp	L160
	.p2align 4,,10
L159:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L186
L160:
	cmpl	(%edx,%eax,8), %ebx
	jne	L159
	movl	12(%edi), %esi
	cmpl	%esi, 4(%edx,%eax,8)
	jne	L159
	movl	56(%esp), %eax
	movl	$-1, (%eax)
	addl	$28, %esp
	movl	$1, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L186:
	movl	%ecx, %eax
L158:
	cmpl	%eax, 24(%edi)
	je	L187
L161:
	leal	(%edx,%ecx,8), %eax
	movl	8(%edi), %edx
	addl	$1, %ecx
	movl	%edx, (%eax)
	movl	12(%edi), %edx
	movl	%edx, 4(%eax)
	xorl	%eax, %eax
	movl	%ecx, 20(%edi)
L178:
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.p2align 4,,10
L184:
	movl	48(%esp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	testl	%esi, 8(%edi,%eax,4)
	sete	%al
	jmp	L154
L165:
	xorl	%eax, %eax
	jmp	L154
L167:
	addl	$28, %esp
	xorl	%eax, %eax
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
L185:
	movl	48(%esp), %edx
	xorl	%eax, %eax
	movl	56(%esp), %edi
	testl	%edx, %edx
	sete	%al
	movl	%eax, (%edi)
	movl	$1, %eax
	jmp	L178
L183:
	movl	56(%esp), %eax
	xorl	$1, %ebx
	movl	%ebx, (%eax)
	movl	$1, %eax
	jmp	L178
L187:
	addl	$4096, %eax
	movl	%eax, 24(%edi)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_realloc
	movl	%eax, 16(%edi)
	testl	%eax, %eax
	je	L162
	movl	20(%edi), %ecx
	movl	%eax, %edx
	jmp	L161
L162:
	call	_abort
	.section	.text.unlikely,"x"
LCOLDE15:
	.text
LHOTE15:
.lcomm _dump.2131,4,4
.lcomm _move.2118,12,4
.lcomm _game.2104,28,4
	.section .rdata,"dr"
	.align 32
_mills:
	.long	7
	.long	8404996
	.long	14680064
	.long	2097665
	.long	56
	.long	1056800
	.long	1835008
	.long	263176
	.long	448
	.long	135424
	.long	229376
	.long	34880
	.long	146
	.long	3584
	.long	28672
	.long	4784128
	.align 32
_edges:
	.long	3
	.long	6
	.long	16388
	.long	8404992
	.long	12582912
	.long	6291456
	.long	2097664
	.long	513
	.long	24
	.long	48
	.long	8224
	.long	1056768
	.long	1572864
	.long	786432
	.long	263168
	.long	1032
	.long	192
	.long	384
	.long	4352
	.long	135168
	.long	196608
	.long	98304
	.long	34816
	.long	2112
	.long	18
	.long	144
	.long	1536
	.long	3072
	.long	12288
	.long	24576
	.long	589824
	.long	4718592
	.ident	"GCC: (GNU) 5.1.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_fputs;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	__assert;	.scl	2;	.type	32;	.endef
	.def	__errno;	.scl	2;	.type	32;	.endef
	.def	_fscanf;	.scl	2;	.type	32;	.endef
	.def	_toupper;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
#endif
#endif
