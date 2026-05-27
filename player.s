	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"player.cpp"
	.def	"??0Player@@QEAA@XZ";
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	"??0Player@@QEAA@XZ"            # -- Begin function ??0Player@@QEAA@XZ
	.p2align	4
"??0Player@@QEAA@XZ":                   # @"??0Player@@QEAA@XZ"
.seh_proc "??0Player@@QEAA@XZ"
# %bb.0:
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$2, 8(%rax)
	movl	$0, 12(%rax)
	movl	$0, 16(%rax)
	movl	$0, 12(%rax)
	movl	$0, 16(%rax)
	movl	$16, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	$0, 48(%rsp)
	movl	$0, 52(%rsp)
	movq	48(%rsp), %rdx
	callq	"??0Tail@@QEAA@UPosition@@@Z"
	movq	32(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$72, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0Tail@@QEAA@UPosition@@@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??0Tail@@QEAA@UPosition@@@Z"
	.globl	"??0Tail@@QEAA@UPosition@@@Z"   # -- Begin function ??0Tail@@QEAA@UPosition@@@Z
	.p2align	4
"??0Tail@@QEAA@UPosition@@@Z":          # @"??0Tail@@QEAA@UPosition@@@Z"
.seh_proc "??0Tail@@QEAA@UPosition@@@Z"
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??0Player@@QEAA@HH@Z";
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	"??0Player@@QEAA@HH@Z"          # -- Begin function ??0Player@@QEAA@HH@Z
	.p2align	4
"??0Player@@QEAA@HH@Z":                 # @"??0Player@@QEAA@HH@Z"
.seh_proc "??0Player@@QEAA@HH@Z"
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r8d, 84(%rsp)
	movl	%edx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$2, 8(%rax)
	movl	$0, 12(%rax)
	movl	$0, 16(%rax)
	movl	80(%rsp), %ecx
	movl	%ecx, 12(%rax)
	movl	84(%rsp), %ecx
	movl	%ecx, 16(%rax)
	movl	$16, %ecx
	callq	"??2@YAPEAX_K@Z"
	movq	%rax, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	movq	56(%rsp), %rdx
	callq	"??0Tail@@QEAA@UPosition@@@Z"
	movq	40(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z" # -- Begin function ?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z
	.p2align	4
"?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z": # @"?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z"
.seh_proc "?DrawPlayer@Player@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@HH@Z"
# %bb.0:
	subq	$104, %rsp
	.seh_stackalloc 104
	.seh_endprologue
	movl	%r9d, 100(%rsp)
	movl	%r8d, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx
	callq	"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 76(%rsp)
	movq	88(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	callq	"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 72(%rsp)
	movl	12(%rax), %ecx
	movl	%ecx, 68(%rsp)
	movl	16(%rax), %ecx
	movl	%ecx, 64(%rsp)
	cmpq	$0, (%rax)
	je	.LBB3_2
# %bb.1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 56(%rsp)
	movl	68(%rsp), %ecx
	movl	%ecx, 48(%rsp)
	movl	64(%rsp), %ecx
	movl	%ecx, 52(%rsp)
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
.LBB3_2:
	movl	96(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	40(%rsp), %eax
	movl	76(%rsp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jl	.LBB3_4
# %bb.3:
	movl	40(%rsp), %eax
	cltd
	idivl	76(%rsp)
	movl	%edx, 40(%rsp)
	jmp	.LBB3_7
.LBB3_4:
	movl	44(%rsp), %eax
	movl	72(%rsp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jl	.LBB3_6
# %bb.5:
	movl	44(%rsp), %eax
	cltd
	idivl	72(%rsp)
	movl	%edx, 44(%rsp)
.LBB3_6:
	jmp	.LBB3_7
.LBB3_7:
	movq	88(%rsp), %rcx
	movslq	64(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	68(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	cmpl	$1, (%rax)
	je	.LBB3_9
# %bb.8:
	movq	88(%rsp), %rcx
	movslq	64(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	68(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	movl	$0, (%rax)
.LBB3_9:
	movq	88(%rsp), %rcx
	movslq	60(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	56(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	cmpl	$1, (%rax)
	je	.LBB3_11
# %bb.10:
	movq	88(%rsp), %rcx
	movslq	60(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	56(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	movl	$0, (%rax)
.LBB3_11:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	44(%rsp), %ecx
	movl	%ecx, 12(%rax)
	movl	40(%rsp), %ecx
	movl	%ecx, 16(%rax)
	movq	88(%rsp), %rcx
	movslq	16(%rax), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movslq	12(%rax), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	cmpl	$0, (%rax)
	jne	.LBB3_13
# %bb.12:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx
	movslq	16(%rax), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movslq	12(%rax), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	movl	$2, (%rax)
.LBB3_13:
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, (%rax)
	je	.LBB3_15
# %bb.14:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	8(%rax), %r8d
	movq	88(%rsp), %rdx
	callq	"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
	nop
.LBB3_15:
	.seh_startepilogue
	addq	$104, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
	.globl	"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ" # -- Begin function ?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ
	.p2align	4
"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ": # @"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
.seh_proc "?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movl	$24, %ecx
	cqto
	idivq	%rcx
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	.globl	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z" # -- Begin function ??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z
	.p2align	4
"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z": # @"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
.seh_proc "??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
# %bb.0:
	subq	$24, %rsp
	.seh_stackalloc 24
	.seh_endprologue
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	imulq	$24, 16(%rsp), %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$24, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
	.globl	"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ" # -- Begin function ?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ
	.p2align	4
"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ": # @"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
.seh_proc "?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
# %bb.0:
	subq	$16, %rsp
	.seh_stackalloc 16
	.seh_endprologue
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	.seh_startepilogue
	addq	$16, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	.globl	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z" # -- Begin function ?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z
	.p2align	4
"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z": # @"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
.seh_proc "?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
# %bb.0:
	subq	$56, %rsp
	.seh_stackalloc 56
	.seh_endprologue
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	32(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	cmpq	48(%rsp), %rax
	ja	.LBB7_2
# %bb.1:
	callq	"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ"
.LBB7_2:
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	48(%rsp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	.seh_startepilogue
	addq	$56, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
	.globl	"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z" # -- Begin function ?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z
	.p2align	4
"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z": # @"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
.seh_proc "?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
# %bb.0:
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movl	%r8d, 84(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx
	callq	"?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 60(%rsp)
	movq	72(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	callq	"?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
	movq	%rax, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 56(%rsp)
	movl	(%rax), %ecx
	movl	%ecx, 52(%rsp)
	movl	4(%rax), %ecx
	movl	%ecx, 48(%rsp)
	cmpq	$0, 8(%rax)
	je	.LBB8_2
# %bb.1:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	52(%rsp), %ecx
	movl	%ecx, 40(%rsp)
	movl	48(%rsp), %ecx
	movl	%ecx, 44(%rsp)
	movq	8(%rax), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, (%rax)
.LBB8_2:
	movl	48(%rsp), %eax
	movl	60(%rsp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_4
# %bb.3:
	movl	48(%rsp), %eax
	cltd
	idivl	60(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%edx, 4(%rax)
	jmp	.LBB8_7
.LBB8_4:
	movl	52(%rsp), %eax
	movl	56(%rsp), %ecx
	movl	84(%rsp), %edx
	addl	$3, %edx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_6
# %bb.5:
	movl	52(%rsp), %eax
	cltd
	idivl	56(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%edx, (%rax)
.LBB8_6:
	jmp	.LBB8_7
.LBB8_7:
	movq	72(%rsp), %rcx
	movslq	48(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	52(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	cmpl	$1, (%rax)
	je	.LBB8_9
# %bb.8:
	movq	72(%rsp), %rcx
	movslq	48(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	52(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	movl	$0, (%rax)
.LBB8_9:
	movq	72(%rsp), %rcx
	movslq	48(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	52(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	cmpl	$0, (%rax)
	jne	.LBB8_11
# %bb.10:
	movq	72(%rsp), %rcx
	movslq	48(%rsp), %rdx
	callq	"??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	movq	%rax, %rcx
	movslq	52(%rsp), %rdx
	callq	"?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	movl	$2, (%rax)
.LBB8_11:
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	$0, 8(%rax)
	je	.LBB8_13
# %bb.12:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movl	84(%rsp), %r8d
	movq	72(%rsp), %rdx
	callq	"?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
	nop
.LBB8_13:
	.seh_startepilogue
	addq	$88, %rsp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ"
	.globl	"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ" # -- Begin function ?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ
	.p2align	4
"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ": # @"?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ"
.seh_proc "?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ"
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	"??_C@_0BJ@DHFDPMIM@invalid?5vector?5subscript?$AA@"(%rip), %rcx
	callq	"?_Xout_of_range@std@@YAXPEBD@Z"
	int3
	.seh_endproc
                                        # -- End function
	.section	.bss,"bw",discard,_Avx2WmemEnabledWeakValue
	.globl	_Avx2WmemEnabledWeakValue       # @_Avx2WmemEnabledWeakValue
	.p2align	2, 0x0
_Avx2WmemEnabledWeakValue:
	.long	0                               # 0x0

	.section	.rdata,"dr",discard,"??_C@_0BJ@DHFDPMIM@invalid?5vector?5subscript?$AA@"
	.globl	"??_C@_0BJ@DHFDPMIM@invalid?5vector?5subscript?$AA@" # @"??_C@_0BJ@DHFDPMIM@invalid?5vector?5subscript?$AA@"
"??_C@_0BJ@DHFDPMIM@invalid?5vector?5subscript?$AA@":
	.asciz	"invalid vector subscript"

	.section	.drectve,"yni"
	.ascii	" /FAILIFMISMATCH:\"annotate_string=0\""
	.ascii	" /FAILIFMISMATCH:\"annotate_vector=0\""
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
	.ascii	" /alternatename:_Avx2WmemEnabled=_Avx2WmemEnabledWeakValue"
	.ascii	" /FAILIFMISMATCH:\"_MSC_VER=1900\""
	.ascii	" /FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
	.ascii	" /FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
	.ascii	" /DEFAULTLIB:libcpmt.lib"
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp1-.Ltmp0                   # Subsection size
.Ltmp0:
	.short	.Ltmp3-.Ltmp2                   # Record length
.Ltmp2:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp3:
	.short	.Ltmp5-.Ltmp4                   # Record length
.Ltmp4:
	.short	4412                            # Record kind: S_COMPILE3
	.long	1                               # Flags and language
	.short	208                             # CPUType
	.short	22                              # Frontend version
	.short	1
	.short	6
	.short	0
	.short	22016                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 22.1.6 (https://github.com/llvm/llvm-project fc4aad7b5db3fff421df9a9637605b9ca5667881)" # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp5:
.Ltmp1:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym "??2@YAPEAX_K@Z"
	.addrsig_sym __CxxFrameHandler3
	.addrsig_sym "?size@?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEBA_KXZ"
	.addrsig_sym "??A?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@QEAAAEAV?$vector@HV?$allocator@H@std@@@1@_K@Z"
	.addrsig_sym "?size@?$vector@HV?$allocator@H@std@@@std@@QEBA_KXZ"
	.addrsig_sym "?at@?$vector@HV?$allocator@H@std@@@std@@QEAAAEAH_K@Z"
	.addrsig_sym "?Draw@Tail@@QEAAXAEAV?$vector@V?$vector@HV?$allocator@H@std@@@std@@V?$allocator@V?$vector@HV?$allocator@H@std@@@std@@@2@@std@@H@Z"
	.addrsig_sym "?_Xrange@?$vector@HV?$allocator@H@std@@@std@@CAXXZ"
	.addrsig_sym "?_Xout_of_range@std@@YAXPEBD@Z"
