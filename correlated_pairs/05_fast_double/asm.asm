Compiling to assembly
Compiling...
Compiled
Output for assembly:
	.file	"cp.cc"
# GNU C++20 (Ubuntu 12.3.0-1ubuntu1~22.04) version 12.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=cascadelake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mavx512f -mbmi -mbmi2 -maes -mpclmul -mavx512vl -mavx512bw -mavx512dq -mavx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mavx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=19712 -mtune=cascadelake -O3 -std=c++20 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.type	_Z9correlateiiPKfPf._omp_fn.0, @function
_Z9correlateiiPKfPf._omp_fn.0:
.LFB10569:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp360, .omp_data_i
	andq	$-64, %rsp	#,
	subq	$768, %rsp	#,
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	# tmp361, _25
	call	omp_get_thread_num@PLT	#
	movl	%eax, %ecx	# tmp362, _26
	movl	28(%rbx), %eax	# *.omp_data_i_19(D).nc, *.omp_data_i_19(D).nc
	cltd
	idivl	%r12d	# _25
	cmpl	%edx, %ecx	# tt.87_2, _26
	jl	.L2	#,
.L37:
	imull	%eax, %ecx	# q.86_1, tmp249
	leal	(%rcx,%rdx), %r14d	#, _31
	leal	(%rax,%r14), %r13d	#, _32
	cmpl	%r13d, %r14d	# _32, _31
	jge	.L44	#,
# /box/cp.cc:175:     #pragma omp parallel for
	movl	24(%rbx), %r15d	# *.omp_data_i_19(D).vc, vc
	movq	(%rbx), %r11	# *.omp_data_i_19(D).data, data
	movl	20(%rbx), %edi	# *.omp_data_i_19(D).nx, nx
	movl	16(%rbx), %r12d	# *.omp_data_i_19(D).ny, ny
	movl	%r15d, 76(%rsp)	# vc, %sfp
# /box/cp.cc:204:             data_[(i * 8 + 0) * vc + j] = tmp0;
	movq	8(%rbx), %rbx	# *.omp_data_i_19(D).data_, _38
	testl	%r15d, %r15d	# vc
	jle	.L44	#,
	leal	0(,%r14,8), %edx	#, ivtmp.290
	leal	5(%rdx), %eax	#, ivtmp.289
	movl	%eax, 204(%rsp)	# ivtmp.289, %sfp
	leal	7(%rdx), %eax	#, ivtmp.296
	movl	%eax, 248(%rsp)	# ivtmp.296, %sfp
	leal	0(,%r15,8), %eax	#, tmp250
	cltq
	salq	$6, %rax	#, tmp251
	movq	%rax, 40(%rsp)	# tmp251, %sfp
	movl	%r15d, %eax	# vc, tmp252
	imull	%r14d, %eax	# _31, tmp252
	leal	4(%rdx), %r10d	#, ivtmp.295
	leal	3(%rdx), %r9d	#, ivtmp.294
	sall	$3, %eax	#, tmp253
	cltq
	salq	$6, %rax	#, tmp254
	movq	%rax, 64(%rsp)	# ivtmp.297, %sfp
	negq	%rax	# ivtmp.300
	movq	%rax, 144(%rsp)	# ivtmp.300, %sfp
	leal	0(,%rdi,8), %eax	#, _396
	movl	%eax, 252(%rsp)	# _396, %sfp
	movl	248(%rsp), %eax	# %sfp, ivtmp.301
	leal	2(%rdx), %ecx	#, ivtmp.292
	imull	%edi, %eax	# nx, ivtmp.301
	leal	1(%rdx), %esi	#, ivtmp.291
	imull	%edi, %r14d	# nx, _31
	movl	%eax, 168(%rsp)	# ivtmp.301, %sfp
	movl	%edi, %eax	# nx, ivtmp.302
	imull	%r10d, %eax	# ivtmp.295, ivtmp.302
	leal	6(%rdx), %r8d	#, ivtmp.293
	movl	%r14d, 72(%rsp)	# _31, %sfp
	movl	%eax, 172(%rsp)	# ivtmp.302, %sfp
	movl	%r9d, %eax	# ivtmp.294, ivtmp.303
	imull	%edi, %eax	# nx, ivtmp.303
	movl	%r8d, %r14d	# ivtmp.293, ivtmp.308
	imull	%edi, %r14d	# nx, ivtmp.308
	movl	%eax, 176(%rsp)	# ivtmp.303, %sfp
	movl	%ecx, %eax	# ivtmp.292, ivtmp.304
	imull	%edi, %eax	# nx, ivtmp.304
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rbx), %rbx	# *_38.D.109126._M_impl.D.108433._M_start, _205
	movl	%r14d, 188(%rsp)	# ivtmp.308, %sfp
	movl	%eax, 180(%rsp)	# ivtmp.304, %sfp
	movl	%edi, %eax	# nx, ivtmp.305
	imull	%esi, %eax	# ivtmp.291, ivtmp.305
	leal	0(,%r13,8), %r14d	#, _237
	movl	%r14d, 56(%rsp)	# _237, %sfp
	movl	%eax, 200(%rsp)	# ivtmp.305, %sfp
	movl	204(%rsp), %eax	# %sfp, ivtmp.309
	leaq	320(%rsp), %r14	#, tmp348
	imull	%edi, %eax	# nx, ivtmp.309
	movq	%rbx, 48(%rsp)	# _205, %sfp
	movq	%r14, 240(%rsp)	# tmp348, %sfp
	movl	%eax, 184(%rsp)	# ivtmp.309, %sfp
	movslq	%r15d, %rax	# vc, vc
	salq	$6, %rax	#, _226
	addq	%rax, %rbx	# _226, tmp350
	leaq	384(%rsp), %r15	#, tmp354
	leaq	448(%rsp), %r14	#, tmp351
	movq	%r11, 192(%rsp)	# data, %sfp
	movq	%r15, 216(%rsp)	# tmp354, %sfp
	movq	%r14, 232(%rsp)	# tmp351, %sfp
	leaq	512(%rsp), %r15	#, tmp356
	leaq	576(%rsp), %r14	#, tmp353
	movq	%rbx, 32(%rsp)	# tmp350, %sfp
	movl	%esi, %ebx	# ivtmp.291, ivtmp.291
	movl	%edx, %esi	# ivtmp.290, ivtmp.290
	movl	252(%rsp), %edx	# %sfp, _396
	movq	%r15, 208(%rsp)	# tmp356, %sfp
	movq	%r14, 224(%rsp)	# tmp353, %sfp
	vxorps	%xmm1, %xmm1, %xmm1	# tmp363
	leaq	256(%rsp), %r13	#, tmp352
	leaq	640(%rsp), %r15	#, tmp349
	leaq	704(%rsp), %r14	#, tmp355
	.p2align 4,,10
	.p2align 3
.L7:
	movq	64(%rsp), %rax	# %sfp, ivtmp.297
	movq	48(%rsp), %r11	# %sfp, _205
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	movl	$0, 164(%rsp)	#, %sfp
	addq	%rax, %r11	# ivtmp.297, ivtmp.273
	movq	%r11, 152(%rsp)	# ivtmp.273, %sfp
	movq	32(%rsp), %r11	# %sfp, tmp350
	movl	%r8d, 252(%rsp)	# ivtmp.293, %sfp
	addq	%r11, %rax	# tmp350, _541
	movq	%rax, 80(%rsp)	# _541, %sfp
	movl	72(%rsp), %eax	# %sfp, ivtmp.306
# /box/cp.cc:205:             data_[(i * 8 + 1) * vc + j] = tmp1;
	movl	76(%rsp), %r11d	# %sfp, vc
	sall	$3, %eax	#, _69
	movl	%eax, 160(%rsp)	# _69, %sfp
	movl	%r11d, %eax	# vc, tmp257
	imull	%ebx, %eax	# ivtmp.291, tmp257
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	movl	%edx, 60(%rsp)	# _396, %sfp
	cltq
	salq	$6, %rax	#, tmp258
	movq	%rax, 128(%rsp)	# tmp258, %sfp
# /box/cp.cc:206:             data_[(i * 8 + 2) * vc + j] = tmp2;
	movl	%r11d, %eax	# vc, tmp259
	imull	%ecx, %eax	# ivtmp.292, tmp259
	cltq
	salq	$6, %rax	#, tmp260
	movq	%rax, 136(%rsp)	# tmp260, %sfp
# /box/cp.cc:207:             data_[(i * 8 + 3) * vc + j] = tmp3;
	movl	%r11d, %eax	# vc, tmp261
	imull	%r9d, %eax	# ivtmp.294, tmp261
	cltq
	salq	$6, %rax	#, tmp262
	movq	%rax, 120(%rsp)	# tmp262, %sfp
# /box/cp.cc:208:             data_[(i * 8 + 4) * vc + j] = tmp4;
	movl	%r11d, %eax	# vc, tmp263
	imull	%r10d, %eax	# ivtmp.295, tmp263
	cltq
	salq	$6, %rax	#, tmp264
	movq	%rax, 112(%rsp)	# tmp264, %sfp
# /box/cp.cc:209:             data_[(i * 8 + 5) * vc + j] = tmp5;
	movl	%r11d, %eax	# vc, tmp265
	movl	204(%rsp), %r11d	# %sfp, ivtmp.289
	imull	%r11d, %eax	# ivtmp.289, tmp265
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	movl	248(%rsp), %r11d	# %sfp, tmp269
	cltq
	salq	$6, %rax	#, tmp266
	movq	%rax, 104(%rsp)	# tmp266, %sfp
# /box/cp.cc:210:             data_[(i * 8 + 6) * vc + j] = tmp6;
	movl	76(%rsp), %eax	# %sfp, tmp267
	imull	%r8d, %eax	# ivtmp.293, tmp267
	cltq
	salq	$6, %rax	#, tmp268
	movq	%rax, 96(%rsp)	# tmp268, %sfp
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	movl	76(%rsp), %eax	# %sfp, vc
	imull	%eax, %r11d	# vc, tmp269
	movslq	%r11d, %rax	# tmp269,
	salq	$6, %rax	#, tmp270
	movq	%rax, 88(%rsp)	# tmp270, %sfp
	movq	192(%rsp), %r11	# %sfp, data
	.p2align 4,,10
	.p2align 3
.L6:
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	movl	160(%rsp), %eax	# %sfp, _69
	movl	164(%rsp), %edx	# %sfp, ivtmp.282
	addl	%edx, %eax	# ivtmp.282, _6
	movl	%eax, 192(%rsp)	# _6, %sfp
	xorl	%eax, %eax	# ivtmp.246
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L8:
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jle	.L34	#,
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	movl	192(%rsp), %r8d	# %sfp, _6
	addl	%eax, %r8d	# ivtmp.246, tmp333
	movslq	%r8d, %r8	# tmp333, tmp334
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_107, tmp363, tmp371
	vmovsd	%xmm0, 0(%r13,%rax,8)	# tmp337, MEM <double> [(vector(8) double *)&tmp0 + ivtmp.246_508 * 8]
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	cmpl	%ebx, %r12d	# ivtmp.291, ny
	jg	.L35	#,
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	movq	240(%rsp), %r8	# %sfp, tmp348
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp1 + ivtmp.246_508 * 8]
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	cmpl	%ecx, %r12d	# ivtmp.292, ny
	jle	.L29	#,
.L33:
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	movl	180(%rsp), %r8d	# %sfp, ivtmp.304
	addl	%edx, %r8d	# ivtmp.254, tmp321
	movslq	%r8d, %r8	# tmp321, tmp322
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_131, tmp363, tmp369
	movq	216(%rsp), %r8	# %sfp, tmp354
	vmovsd	%xmm0, (%r8,%rax,8)	# tmp325, MEM <double> [(vector(8) double *)&tmp2 + ivtmp.246_508 * 8]
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	cmpl	%r9d, %r12d	# ivtmp.294, ny
	jle	.L31	#,
.L30:
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	movl	176(%rsp), %r8d	# %sfp, ivtmp.303
	addl	%edx, %r8d	# ivtmp.254, tmp315
	movslq	%r8d, %r8	# tmp315, tmp316
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_143, tmp363, tmp368
	movq	232(%rsp), %r8	# %sfp, tmp351
	vmovsd	%xmm0, (%r8,%rax,8)	# tmp319, MEM <double> [(vector(8) double *)&tmp3 + ivtmp.246_508 * 8]
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	cmpl	%r10d, %r12d	# ivtmp.295, ny
	jle	.L28	#,
.L27:
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	movl	172(%rsp), %r8d	# %sfp, ivtmp.302
	addl	%edx, %r8d	# ivtmp.254, tmp309
	movslq	%r8d, %r8	# tmp309, tmp310
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_155, tmp363, tmp367
	movq	208(%rsp), %r8	# %sfp, tmp356
	vmovsd	%xmm0, (%r8,%rax,8)	# tmp313, MEM <double> [(vector(8) double *)&tmp4 + ivtmp.246_508 * 8]
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	movl	204(%rsp), %r8d	# %sfp, ivtmp.289
	cmpl	%r8d, %r12d	# ivtmp.289, ny
	jle	.L21	#,
.L25:
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	movl	184(%rsp), %r8d	# %sfp, ivtmp.309
	addl	%edx, %r8d	# ivtmp.254, tmp303
	movslq	%r8d, %r8	# tmp303, tmp304
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_167, tmp363, tmp366
	movq	224(%rsp), %r8	# %sfp, tmp353
	vmovsd	%xmm0, (%r8,%rax,8)	# tmp307, MEM <double> [(vector(8) double *)&tmp5 + ivtmp.246_508 * 8]
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movl	252(%rsp), %r8d	# %sfp, ivtmp.293
	cmpl	%r8d, %r12d	# ivtmp.293, ny
	jle	.L23	#,
.L22:
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movl	188(%rsp), %r8d	# %sfp, ivtmp.308
	addl	%edx, %r8d	# ivtmp.254, tmp297
	movslq	%r8d, %r8	# tmp297, tmp298
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_179, tmp363, tmp365
	vmovsd	%xmm0, (%r15,%rax,8)	# tmp301, MEM <double> [(vector(8) double *)&tmp6 + ivtmp.246_508 * 8]
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	cmpl	%r12d, 248(%rsp)	# ny, %sfp
	jge	.L38	#,
.L20:
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	movl	168(%rsp), %r8d	# %sfp, ivtmp.301
	addl	%edx, %r8d	# ivtmp.254, tmp294
	movslq	%r8d, %r8	# tmp294, tmp295
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_191, tmp363, tmp364
.L18:
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	vmovsd	%xmm0, (%r14,%rax,8)	# iftmp.9_13, MEM <double> [(vector(8) double *)&tmp7 + ivtmp.246_508 * 8]
# /box/cp.cc:186:             for (int k = 0; k < vs; k++) {
	incq	%rax	# ivtmp.246
	incl	%edx	# ivtmp.254
	cmpq	$8, %rax	#, ivtmp.246
	je	.L47	#,
.L5:
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	cmpl	%esi, %r12d	# ivtmp.290, ny
	jg	.L8	#,
.L34:
# /box/cp.cc:187:                 tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
	movq	$0x000000000, 0(%r13,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp0 + ivtmp.246_508 * 8]
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	cmpl	%ebx, %r12d	# ivtmp.291, ny
	jle	.L32	#,
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L35	#,
.L32:
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	movq	240(%rsp), %r8	# %sfp, tmp348
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp1 + ivtmp.246_508 * 8]
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	cmpl	%ecx, %r12d	# ivtmp.292, ny
	jle	.L29	#,
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L33	#,
.L29:
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	movq	216(%rsp), %r8	# %sfp, tmp354
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp2 + ivtmp.246_508 * 8]
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	cmpl	%r9d, %r12d	# ivtmp.294, ny
	jle	.L31	#,
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L30	#,
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	movq	232(%rsp), %r8	# %sfp, tmp351
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp3 + ivtmp.246_508 * 8]
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	cmpl	%r10d, %r12d	# ivtmp.295, ny
	jle	.L28	#,
.L24:
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	movq	208(%rsp), %r8	# %sfp, tmp356
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp4 + ivtmp.246_508 * 8]
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	movq	224(%rsp), %r8	# %sfp, tmp353
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp5 + ivtmp.246_508 * 8]
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movl	252(%rsp), %r8d	# %sfp, ivtmp.293
	cmpl	%r8d, %r12d	# ivtmp.293, ny
	jle	.L23	#,
.L19:
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movq	$0x000000000, (%r15,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp6 + ivtmp.246_508 * 8]
.L38:
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	vxorpd	%xmm0, %xmm0, %xmm0	# iftmp.9_13
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L47:
# /box/cp.cc:204:             data_[(i * 8 + 0) * vc + j] = tmp0;
	movq	152(%rsp), %rdx	# %sfp, ivtmp.273
	movq	144(%rsp), %rax	# %sfp, ivtmp.300
	vmovapd	256(%rsp), %zmm2	# tmp0, tmp468
# /box/cp.cc:205:             data_[(i * 8 + 1) * vc + j] = tmp1;
	movq	128(%rsp), %r8	# %sfp, _443
	vmovapd	320(%rsp), %zmm3	# tmp1, tmp472
	addq	%rdx, %rax	# ivtmp.273, _445
# /box/cp.cc:204:             data_[(i * 8 + 0) * vc + j] = tmp0;
	vmovapd	%zmm2, (%rdx)	# tmp468, MEM[(value_type &)_449]
# /box/cp.cc:206:             data_[(i * 8 + 2) * vc + j] = tmp2;
	vmovapd	384(%rsp), %zmm4	# tmp2, tmp474
# /box/cp.cc:205:             data_[(i * 8 + 1) * vc + j] = tmp1;
	vmovapd	%zmm3, (%rax,%r8)	# tmp472, MEM[(value_type &)_445 + _443 * 1]
# /box/cp.cc:206:             data_[(i * 8 + 2) * vc + j] = tmp2;
	movq	136(%rsp), %r8	# %sfp, _437
# /box/cp.cc:207:             data_[(i * 8 + 3) * vc + j] = tmp3;
	vmovapd	448(%rsp), %zmm5	# tmp3, tmp476
# /box/cp.cc:206:             data_[(i * 8 + 2) * vc + j] = tmp2;
	vmovapd	%zmm4, (%rax,%r8)	# tmp474, MEM[(value_type &)_445 + _437 * 1]
# /box/cp.cc:207:             data_[(i * 8 + 3) * vc + j] = tmp3;
	movq	120(%rsp), %r8	# %sfp, _510
# /box/cp.cc:208:             data_[(i * 8 + 4) * vc + j] = tmp4;
	vmovapd	512(%rsp), %zmm6	# tmp4, tmp478
# /box/cp.cc:207:             data_[(i * 8 + 3) * vc + j] = tmp3;
	vmovapd	%zmm5, (%rax,%r8)	# tmp476, MEM[(value_type &)_445 + _510 * 1]
# /box/cp.cc:208:             data_[(i * 8 + 4) * vc + j] = tmp4;
	movq	112(%rsp), %r8	# %sfp, _516
# /box/cp.cc:209:             data_[(i * 8 + 5) * vc + j] = tmp5;
	vmovapd	576(%rsp), %zmm7	# tmp5, tmp480
# /box/cp.cc:208:             data_[(i * 8 + 4) * vc + j] = tmp4;
	vmovapd	%zmm6, (%rax,%r8)	# tmp478, MEM[(value_type &)_445 + _516 * 1]
# /box/cp.cc:209:             data_[(i * 8 + 5) * vc + j] = tmp5;
	movq	104(%rsp), %r8	# %sfp, _521
# /box/cp.cc:210:             data_[(i * 8 + 6) * vc + j] = tmp6;
	vmovapd	640(%rsp), %zmm2	# tmp6, tmp482
# /box/cp.cc:209:             data_[(i * 8 + 5) * vc + j] = tmp5;
	vmovapd	%zmm7, (%rax,%r8)	# tmp480, MEM[(value_type &)_445 + _521 * 1]
# /box/cp.cc:210:             data_[(i * 8 + 6) * vc + j] = tmp6;
	movq	96(%rsp), %r8	# %sfp, _528
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	vmovapd	704(%rsp), %zmm3	# tmp7, tmp484
# /box/cp.cc:210:             data_[(i * 8 + 6) * vc + j] = tmp6;
	vmovapd	%zmm2, (%rax,%r8)	# tmp482, MEM[(value_type &)_445 + _528 * 1]
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	movq	88(%rsp), %r8	# %sfp, _534
# /box/cp.cc:177:         for (int j = 0; j < vc; j++) {
	addq	$64, %rdx	#, ivtmp.273
# /box/cp.cc:211:             data_[(i * 8 + 7) * vc + j] = tmp7;
	vmovapd	%zmm3, (%rax,%r8)	# tmp484, MEM[(value_type &)_445 + _534 * 1]
# /box/cp.cc:177:         for (int j = 0; j < vc; j++) {
	movq	80(%rsp), %rax	# %sfp, _541
	addl	$8, 164(%rsp)	#, %sfp
	movq	%rdx, 152(%rsp)	# ivtmp.273, %sfp
	cmpq	%rax, %rdx	# _541, ivtmp.273
	jne	.L6	#,
	movl	60(%rsp), %edx	# %sfp, _396
	movq	%r11, 192(%rsp)	# data, %sfp
	movl	252(%rsp), %r8d	# %sfp, ivtmp.293
	movq	40(%rsp), %r11	# %sfp, _420
	addl	$8, %esi	#, ivtmp.290
	addl	$8, 204(%rsp)	#, %sfp
	addl	$8, 248(%rsp)	#, %sfp
	addq	%r11, 64(%rsp)	# _420, %sfp
	subq	%r11, 144(%rsp)	# _420, %sfp
	addl	%edx, 168(%rsp)	# _396, %sfp
	addl	%edx, 172(%rsp)	# _396, %sfp
	addl	%edx, 176(%rsp)	# _396, %sfp
	addl	%edx, 180(%rsp)	# _396, %sfp
	addl	%edx, 200(%rsp)	# _396, %sfp
	addl	%edi, 72(%rsp)	# nx, %sfp
	addl	%edx, 188(%rsp)	# _396, %sfp
	addl	%edx, 184(%rsp)	# _396, %sfp
	addl	$8, %ebx	#, ivtmp.291
	addl	$8, %ecx	#, ivtmp.292
	addl	$8, %r8d	#, ivtmp.293
	addl	$8, %r9d	#, ivtmp.294
	addl	$8, %r10d	#, ivtmp.295
	cmpl	%esi, 56(%rsp)	# ivtmp.290, %sfp
	jne	.L7	#,
	vzeroupper
.L44:
# /box/cp.cc:175:     #pragma omp parallel for
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movq	$0x000000000, (%r15,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp6 + ivtmp.246_508 * 8]
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	cmpl	%r12d, 248(%rsp)	# ny, %sfp
	jge	.L38	#,
# /box/cp.cc:194:                 tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L20	#,
	jmp	.L38	#
	.p2align 4,,10
	.p2align 3
.L28:
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	movq	208(%rsp), %r8	# %sfp, tmp356
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp4 + ivtmp.246_508 * 8]
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	movl	204(%rsp), %r8d	# %sfp, ivtmp.289
	cmpl	%r8d, %r12d	# ivtmp.289, ny
	jle	.L21	#,
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L25	#,
.L21:
# /box/cp.cc:192:                 tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
	movq	224(%rsp), %r8	# %sfp, tmp353
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp5 + ivtmp.246_508 * 8]
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	movl	252(%rsp), %r8d	# %sfp, ivtmp.293
	cmpl	%r8d, %r12d	# ivtmp.293, ny
	jle	.L23	#,
# /box/cp.cc:193:                 tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jg	.L22	#,
	jmp	.L19	#
	.p2align 4,,10
	.p2align 3
.L31:
# /box/cp.cc:190:                 tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
	movq	232(%rsp), %r8	# %sfp, tmp351
	movq	$0x000000000, (%r8,%rax,8)	#, MEM <double> [(vector(8) double *)&tmp3 + ivtmp.246_508 * 8]
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	cmpl	%r10d, %r12d	# ivtmp.295, ny
	jle	.L28	#,
# /box/cp.cc:191:                 tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
	cmpl	%edx, %edi	# ivtmp.254, nx
	jle	.L24	#,
	jmp	.L27	#
	.p2align 4,,10
	.p2align 3
.L35:
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	movl	200(%rsp), %r8d	# %sfp, ivtmp.305
	addl	%edx, %r8d	# ivtmp.254, tmp327
	movslq	%r8d, %r8	# tmp327, tmp328
# /box/cp.cc:188:                 tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
	vcvtss2sd	(%r11,%r8,4), %xmm1, %xmm0	# *_119, tmp363, tmp370
	movq	240(%rsp), %r8	# %sfp, tmp348
	vmovsd	%xmm0, (%r8,%rax,8)	# tmp331, MEM <double> [(vector(8) double *)&tmp1 + ivtmp.246_508 * 8]
# /box/cp.cc:189:                 tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
	cmpl	%ecx, %r12d	# ivtmp.292, ny
	jg	.L33	#,
	jmp	.L29	#
.L2:
	incl	%eax	# q.86_1
# /box/cp.cc:175:     #pragma omp parallel for
	xorl	%edx, %edx	# tt.87_2
	jmp	.L37	#
	.cfi_endproc
.LFE10569:
	.size	_Z9correlateiiPKfPf._omp_fn.0, .-_Z9correlateiiPKfPf._omp_fn.0
	.p2align 4
	.type	_Z9correlateiiPKfPf._omp_fn.2, @function
_Z9correlateiiPKfPf._omp_fn.2:
.LFB10571:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rdi, %r15	# tmp636, .omp_data_i
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$832, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# /box/cp.cc:261:     #pragma omp parallel for
	movq	%rdi, -704(%rbp)	# .omp_data_i, %sfp
	call	omp_get_num_threads@PLT	#
	movl	%eax, %ebx	# tmp637, _16
	call	omp_get_thread_num@PLT	#
	movl	%eax, %ecx	# tmp638, _17
	movl	36(%r15), %eax	# *.omp_data_i_11(D).nc, *.omp_data_i_11(D).nc
	cltd
	idivl	%ebx	# _16
	cmpl	%edx, %ecx	# tt.83_2, _17
	jl	.L49	#,
.L82:
	testl	%eax, %eax	# q.82_1
	jle	.L102	#,
	imull	%eax, %ecx	# q.82_1, tmp393
	movq	-704(%rbp), %rbx	# %sfp, .omp_data_i
	movl	%eax, %eax	# q.82_1, q.82_1
	leal	(%rcx,%rdx), %esi	#, _22
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	8(%rbx), %rdx	# *.omp_data_i_11(D).ra, *.omp_data_i_11(D).ra
# /box/cp.cc:261:     #pragma omp parallel for
	movl	28(%rbx), %r15d	# *.omp_data_i_11(D).nv, nv
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rdx), %rdi	# *pretmp_624.D.110197._M_impl.D.109541._M_start, pretmp_626
	leal	0(,%rsi,8), %edx	#, _599
	movslq	%edx, %rcx	# _599, _599
	salq	$3, %rcx	#, ivtmp.383
	movq	%rcx, -696(%rbp)	# ivtmp.383, %sfp
	leaq	(%rdi,%rcx), %r13	#, ivtmp.381
	movl	24(%rbx), %ecx	# *.omp_data_i_11(D).vc, _588
# /box/cp.cc:261:     #pragma omp parallel for
	movl	32(%rbx), %r14d	# *.omp_data_i_11(D).nr, nr
	leal	0(,%rcx,8), %ebx	#, _587
	movl	%ebx, -808(%rbp)	# _587, %sfp
	imull	%esi, %ebx	# _22, ivtmp.392
	movslq	%esi, %rsi	# _22, _22
	addq	%rsi, %rax	# _22, tmp400
	salq	$6, %rax	#, tmp401
	addq	%rdi, %rax	# pretmp_626, _530
	movq	%rax, -816(%rbp)	# _530, %sfp
	leal	3(%rdx), %eax	#, tmp402
	imull	%ecx, %eax	# _588, tmp403
	leal	1(%rdx), %r8d	#, tmp396
	imull	%ecx, %r8d	# _588, tmp396
	subl	%ebx, %eax	# ivtmp.392, tmp403
	movl	%eax, -800(%rbp)	# tmp403, %sfp
	leal	4(%rdx), %eax	#, tmp404
	imull	%ecx, %eax	# _588, tmp405
	movl	%r8d, -712(%rbp)	# tmp396, %sfp
	leal	2(%rdx), %r8d	#, tmp397
	subl	%ebx, %eax	# ivtmp.392, tmp405
	movl	%eax, -796(%rbp)	# tmp405, %sfp
	leal	5(%rdx), %eax	#, tmp406
	imull	%ecx, %eax	# _588, tmp407
	imull	%ecx, %r8d	# _588, tmp397
	leal	(%r15,%rbx), %r11d	#, ivtmp.400
	subl	%ebx, %eax	# ivtmp.392, tmp407
	movl	%eax, -792(%rbp)	# tmp407, %sfp
	leal	6(%rdx), %eax	#, tmp408
	imull	%ecx, %eax	# _588, tmp409
	addl	$7, %edx	#, tmp410
	imull	%ecx, %edx	# _588, tmp411
	subl	%ebx, %eax	# ivtmp.392, tmp409
	movl	%eax, -788(%rbp)	# tmp409, %sfp
	movslq	%r14d, %rax	# nr, nr
	salq	$3, %rax	#, _688
	movq	%rax, -688(%rbp)	# _688, %sfp
	subl	%ebx, %edx	# ivtmp.392, tmp411
	movslq	%r15d, %rax	# nv, nv
	movl	%r14d, -804(%rbp)	# nr, %sfp
	movl	%r15d, -772(%rbp)	# nv, %sfp
	movl	%ebx, -780(%rbp)	# ivtmp.392, %sfp
	movl	%r8d, -708(%rbp)	# tmp397, %sfp
	movl	%r11d, -776(%rbp)	# ivtmp.400, %sfp
	movl	%edx, -784(%rbp)	# tmp411, %sfp
	movq	%rax, -824(%rbp)	# nv, %sfp
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
# /box/cp.cc:271:         double8_t xbar_xi_sq0 = d8zero;
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	.p2align 4,,10
	.p2align 3
.L77:
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	-696(%rbp), %rax	# %sfp, ivtmp.383
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	movl	-772(%rbp), %edx	# %sfp,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	leaq	8(%rax), %rbx	#, _205
	leaq	16(%rax), %rcx	#, _228
	leaq	24(%rax), %rsi	#, _255
	movq	%rbx, -720(%rbp)	# _205, %sfp
	movq	%rcx, -728(%rbp)	# _228, %sfp
	leaq	32(%rax), %rbx	#, _274
	leaq	40(%rax), %rcx	#, _287
	movq	%rsi, -736(%rbp)	# _255, %sfp
	leaq	48(%rax), %rsi	#, _300
	addq	$56, %rax	#, _313
	movq	%rbx, -744(%rbp)	# _274, %sfp
	movq	%rcx, -752(%rbp)	# _287, %sfp
	movq	%rsi, -760(%rbp)	# _300, %sfp
	movq	%rax, -768(%rbp)	# _313, %sfp
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:156: 	 { __H, __G, __F, __E, __D, __C, __B, __A };
	vbroadcastsd	0(%r13), %zmm17	# MEM[(value_type &)_554], _198
	vbroadcastsd	8(%r13), %zmm18	# MEM[(value_type &)_554 + 8], _210
	vbroadcastsd	16(%r13), %zmm19	# MEM[(value_type &)_554 + 16], _241
	vbroadcastsd	24(%r13), %zmm20	# MEM[(value_type &)_554 + 24], _268
	vbroadcastsd	32(%r13), %zmm21	# MEM[(value_type &)_554 + 32], _280
	vbroadcastsd	40(%r13), %zmm22	# MEM[(value_type &)_554 + 40], _293
	vbroadcastsd	48(%r13), %zmm23	# MEM[(value_type &)_554 + 48], _306
	vbroadcastsd	56(%r13), %zmm24	# MEM[(value_type &)_554 + 56], _318
# /box/cp.cc:271:         double8_t xbar_xi_sq0 = d8zero;
	vmovapd	%zmm2, -560(%rbp)	# tmp421, xbar_xi_sq0
# /box/cp.cc:272:         double8_t xbar_xi_sq1 = d8zero;
	vmovapd	%zmm2, -496(%rbp)	# tmp421, xbar_xi_sq1
# /box/cp.cc:273:         double8_t xbar_xi_sq2 = d8zero;
	vmovapd	%zmm2, -432(%rbp)	# tmp421, xbar_xi_sq2
# /box/cp.cc:274:         double8_t xbar_xi_sq3 = d8zero;
	vmovapd	%zmm2, -368(%rbp)	# tmp421, xbar_xi_sq3
# /box/cp.cc:275:         double8_t xbar_xi_sq4 = d8zero;
	vmovapd	%zmm2, -304(%rbp)	# tmp421, xbar_xi_sq4
# /box/cp.cc:276:         double8_t xbar_xi_sq5 = d8zero;
	vmovapd	%zmm2, -240(%rbp)	# tmp421, xbar_xi_sq5
# /box/cp.cc:277:         double8_t xbar_xi_sq6 = d8zero;
	vmovapd	%zmm2, -176(%rbp)	# tmp421, xbar_xi_sq6
# /box/cp.cc:278:         double8_t xbar_xi_sq7 = d8zero;
	vmovapd	%zmm2, -112(%rbp)	# tmp421, xbar_xi_sq7
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	testl	%edx, %edx	#
	jle	.L104	#,
	movl	-780(%rbp), %r14d	# %sfp, ivtmp.392
	movq	-824(%rbp), %r15	# %sfp, nv
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	-704(%rbp), %rax	# %sfp, .omp_data_i
	movslq	%r14d, %r10	# ivtmp.392,
# /box/cp.cc:283:             data_[(i * 8 + 3) * vc + j] -= average3;
	movl	-800(%rbp), %edi	# %sfp, _520
# /box/cp.cc:284:             data_[(i * 8 + 4) * vc + j] -= average4;
	movl	-796(%rbp), %esi	# %sfp, _509
# /box/cp.cc:285:             data_[(i * 8 + 5) * vc + j] -= average5;
	movl	-792(%rbp), %ecx	# %sfp, _498
# /box/cp.cc:286:             data_[(i * 8 + 6) * vc + j] -= average6;
	movl	-788(%rbp), %edx	# %sfp, _487
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %rax	# *.omp_data_i_11(D).data_, *.omp_data_i_11(D).data_
	movq	%r10, %r12	# _684, _683
	addq	%r15, %r10	# nv, tmp599
# /box/cp.cc:287:             data_[(i * 8 + 7) * vc + j] -= average7;
	movl	-784(%rbp), %r15d	# %sfp, _476
	movslq	-712(%rbp), %r9	# %sfp, ivtmp.393
	movslq	-708(%rbp), %r8	# %sfp, ivtmp.394
# /box/cp.cc:283:             data_[(i * 8 + 3) * vc + j] -= average3;
	addl	%r14d, %edi	# ivtmp.392, tmp586
# /box/cp.cc:284:             data_[(i * 8 + 4) * vc + j] -= average4;
	addl	%r14d, %esi	# ivtmp.392, tmp589
# /box/cp.cc:285:             data_[(i * 8 + 5) * vc + j] -= average5;
	addl	%r14d, %ecx	# ivtmp.392, tmp592
# /box/cp.cc:286:             data_[(i * 8 + 6) * vc + j] -= average6;
	addl	%r14d, %edx	# ivtmp.392, tmp595
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %rbx	# *_220.D.109126._M_impl.D.108433._M_start, _355
	movslq	%edi, %rdi	# tmp586, tmp587
	movslq	%esi, %rsi	# tmp589, tmp590
	movslq	%ecx, %rcx	# tmp592, tmp593
	movslq	%edx, %rdx	# tmp595, tmp596
# /box/cp.cc:287:             data_[(i * 8 + 7) * vc + j] -= average7;
	leal	(%r15,%r14), %r11d	#, tmp601
	vxorpd	%xmm13, %xmm13, %xmm13	# xbar_xi_sq7_lsm.341
	salq	$6, %r12	#, _683
	salq	$6, %r9	#, tmp583
	salq	$6, %r8	#, tmp585
	salq	$6, %rdi	#, tmp588
	salq	$6, %rsi	#, tmp591
	salq	$6, %rcx	#, tmp594
	salq	$6, %rdx	#, tmp597
	salq	$6, %r10	#, tmp600
	movslq	%r11d, %r11	# tmp601, tmp602
	leaq	(%rbx,%r12), %rax	#, ivtmp.367
	addq	%rbx, %r9	# _355, ivtmp.368
	addq	%rbx, %r8	# _355, ivtmp.369
	addq	%rbx, %rdi	# _355, ivtmp.370
	addq	%rbx, %rsi	# _355, ivtmp.371
	addq	%rbx, %rcx	# _355, ivtmp.372
	addq	%rbx, %rdx	# _355, ivtmp.373
	salq	$6, %r11	#, _615
	addq	%r10, %rbx	# tmp600, _603
	vmovapd	%zmm13, %zmm1	#, xbar_xi_sq6_lsm.340
	vmovapd	%zmm13, %zmm14	# tmp21, xbar_xi_sq5_lsm.339
	vmovapd	%zmm13, %zmm10	# tmp21, xbar_xi_sq4_lsm.338
	vmovapd	%zmm13, %zmm15	# tmp21, xbar_xi_sq3_lsm.337
	vmovapd	%zmm13, %zmm11	# tmp21, xbar_xi_sq2_lsm.336
	vmovapd	%zmm13, %zmm16	# tmp21, xbar_xi_sq1_lsm.335
	vmovapd	%zmm13, %zmm12	# tmp21, xbar_xi_sq0_lsm.334
	.p2align 4,,10
	.p2align 3
.L80:
# /box/cp.cc:280:             data_[(i * 8 + 0) * vc + j] -= average0;
	vmovapd	(%rax), %zmm0	# MEM[(value_type &)_645], tmp792
	movq	%rax, %r10	# ivtmp.367, _617
	vsubpd	%zmm17, %zmm0, %zmm0	# _198, tmp792, tmp603
	subq	%r12, %r10	# _683, _617
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	addq	$64, %rax	#, ivtmp.367
# /box/cp.cc:280:             data_[(i * 8 + 0) * vc + j] -= average0;
	vmovapd	%zmm0, -64(%rax)	# tmp603, MEM[(value_type &)_645]
# /box/cp.cc:281:             data_[(i * 8 + 1) * vc + j] -= average1;
	vmovapd	(%r9), %zmm0	# MEM[(value_type &)_642], tmp793
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	addq	$64, %r8	#, ivtmp.369
# /box/cp.cc:281:             data_[(i * 8 + 1) * vc + j] -= average1;
	vsubpd	%zmm18, %zmm0, %zmm0	# _210, tmp793, tmp605
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	addq	$64, %r9	#, ivtmp.368
	addq	$64, %rdi	#, ivtmp.370
# /box/cp.cc:281:             data_[(i * 8 + 1) * vc + j] -= average1;
	vmovapd	%zmm0, -64(%r9)	# tmp605, MEM[(value_type &)_642]
# /box/cp.cc:282:             data_[(i * 8 + 2) * vc + j] -= average2;
	vmovapd	-64(%r8), %zmm0	# MEM[(value_type &)_639], tmp794
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	addq	$64, %rsi	#, ivtmp.371
# /box/cp.cc:282:             data_[(i * 8 + 2) * vc + j] -= average2;
	vsubpd	%zmm19, %zmm0, %zmm0	# _241, tmp794, tmp607
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	addq	$64, %rcx	#, ivtmp.372
	addq	$64, %rdx	#, ivtmp.373
# /box/cp.cc:282:             data_[(i * 8 + 2) * vc + j] -= average2;
	vmovapd	%zmm0, -64(%r8)	# tmp607, MEM[(value_type &)_639]
# /box/cp.cc:283:             data_[(i * 8 + 3) * vc + j] -= average3;
	vmovapd	-64(%rdi), %zmm0	# MEM[(value_type &)_636], tmp795
	vsubpd	%zmm20, %zmm0, %zmm0	# _268, tmp795, tmp609
	vmovapd	%zmm0, -64(%rdi)	# tmp609, MEM[(value_type &)_636]
# /box/cp.cc:284:             data_[(i * 8 + 4) * vc + j] -= average4;
	vmovapd	-64(%rsi), %zmm0	# MEM[(value_type &)_633], tmp796
	vsubpd	%zmm21, %zmm0, %zmm0	# _280, tmp796, tmp611
	vmovapd	%zmm0, -64(%rsi)	# tmp611, MEM[(value_type &)_633]
# /box/cp.cc:285:             data_[(i * 8 + 5) * vc + j] -= average5;
	vmovapd	-64(%rcx), %zmm0	# MEM[(value_type &)_630], tmp797
	vsubpd	%zmm22, %zmm0, %zmm0	# _293, tmp797, tmp613
	vmovapd	%zmm0, -64(%rcx)	# tmp613, MEM[(value_type &)_630]
# /box/cp.cc:286:             data_[(i * 8 + 6) * vc + j] -= average6;
	vmovapd	-64(%rdx), %zmm0	# MEM[(value_type &)_623], tmp798
	vsubpd	%zmm23, %zmm0, %zmm0	# _306, tmp798, tmp615
	vmovapd	%zmm0, -64(%rdx)	# tmp615, MEM[(value_type &)_623]
# /box/cp.cc:287:             data_[(i * 8 + 7) * vc + j] -= average7;
	vmovapd	(%r10,%r11), %zmm0	# MEM[(value_type &)_617 + _615 * 1], tmp800
	vsubpd	%zmm24, %zmm0, %zmm0	# _318, tmp800, _270
	vmovapd	%zmm0, (%r10,%r11)	# _270, MEM[(value_type &)_617 + _615 * 1]
# /box/cp.cc:296:             xbar_xi_sq0 += data_[(i * 8 + 0) * vc + j] * data_[(i * 8 + 0) * vc + j];
	vmovapd	-64(%rax), %zmm25	# MEM[(value_type &)_645], _273
# /box/cp.cc:303:             xbar_xi_sq7 += data_[(i * 8 + 7) * vc + j] * data_[(i * 8 + 7) * vc + j];
	vfmadd231pd	%zmm0, %zmm0, %zmm13	# _270, _270, xbar_xi_sq7_lsm.341
# /box/cp.cc:296:             xbar_xi_sq0 += data_[(i * 8 + 0) * vc + j] * data_[(i * 8 + 0) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm12	# _273, _273, xbar_xi_sq0_lsm.334
# /box/cp.cc:297:             xbar_xi_sq1 += data_[(i * 8 + 1) * vc + j] * data_[(i * 8 + 1) * vc + j];
	vmovapd	-64(%r9), %zmm25	# MEM[(value_type &)_642], _279
# /box/cp.cc:297:             xbar_xi_sq1 += data_[(i * 8 + 1) * vc + j] * data_[(i * 8 + 1) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm16	# _279, _279, xbar_xi_sq1_lsm.335
# /box/cp.cc:298:             xbar_xi_sq2 += data_[(i * 8 + 2) * vc + j] * data_[(i * 8 + 2) * vc + j];
	vmovapd	-64(%r8), %zmm25	# MEM[(value_type &)_639], _286
# /box/cp.cc:298:             xbar_xi_sq2 += data_[(i * 8 + 2) * vc + j] * data_[(i * 8 + 2) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm11	# _286, _286, xbar_xi_sq2_lsm.336
# /box/cp.cc:299:             xbar_xi_sq3 += data_[(i * 8 + 3) * vc + j] * data_[(i * 8 + 3) * vc + j];
	vmovapd	-64(%rdi), %zmm25	# MEM[(value_type &)_636], _292
# /box/cp.cc:299:             xbar_xi_sq3 += data_[(i * 8 + 3) * vc + j] * data_[(i * 8 + 3) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm15	# _292, _292, xbar_xi_sq3_lsm.337
# /box/cp.cc:300:             xbar_xi_sq4 += data_[(i * 8 + 4) * vc + j] * data_[(i * 8 + 4) * vc + j];
	vmovapd	-64(%rsi), %zmm25	# MEM[(value_type &)_633], _299
# /box/cp.cc:300:             xbar_xi_sq4 += data_[(i * 8 + 4) * vc + j] * data_[(i * 8 + 4) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm10	# _299, _299, xbar_xi_sq4_lsm.338
# /box/cp.cc:301:             xbar_xi_sq5 += data_[(i * 8 + 5) * vc + j] * data_[(i * 8 + 5) * vc + j];
	vmovapd	-64(%rcx), %zmm25	# MEM[(value_type &)_630], _305
# /box/cp.cc:301:             xbar_xi_sq5 += data_[(i * 8 + 5) * vc + j] * data_[(i * 8 + 5) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm14	# _305, _305, xbar_xi_sq5_lsm.339
# /box/cp.cc:302:             xbar_xi_sq6 += data_[(i * 8 + 6) * vc + j] * data_[(i * 8 + 6) * vc + j];
	vmovapd	-64(%rdx), %zmm25	# MEM[(value_type &)_623], _312
# /box/cp.cc:302:             xbar_xi_sq6 += data_[(i * 8 + 6) * vc + j] * data_[(i * 8 + 6) * vc + j];
	vfmadd231pd	%zmm25, %zmm25, %zmm1	# _312, _312, xbar_xi_sq6_lsm.340
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	cmpq	%rax, %rbx	# ivtmp.367, _603
	jne	.L80	#,
	vmovapd	%zmm12, -560(%rbp)	# xbar_xi_sq0_lsm.334, xbar_xi_sq0
	vmovapd	%zmm16, -496(%rbp)	# xbar_xi_sq1_lsm.335, xbar_xi_sq1
	vmovapd	%zmm11, -432(%rbp)	# xbar_xi_sq2_lsm.336, xbar_xi_sq2
	vmovapd	%zmm15, -368(%rbp)	# xbar_xi_sq3_lsm.337, xbar_xi_sq3
	vmovapd	%zmm10, -304(%rbp)	# xbar_xi_sq4_lsm.338, xbar_xi_sq4
	vmovapd	%zmm14, -240(%rbp)	# xbar_xi_sq5_lsm.339, xbar_xi_sq5
	vmovapd	%zmm1, -176(%rbp)	# xbar_xi_sq6_lsm.340, xbar_xi_sq6
	vmovapd	%zmm13, -112(%rbp)	# xbar_xi_sq7_lsm.341, xbar_xi_sq7
.L81:
# /box/cp.cc:305:         for (int j = 0; j < nr; j++) {
	movl	-804(%rbp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L79	#,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	-704(%rbp), %rax	# %sfp, .omp_data_i
# /box/cp.cc:306:             data_[(i * 8 + 0) * vc + nv][j] -= ra[i * 8 + 0];
	movslq	-776(%rbp), %rdx	# %sfp,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %rax	# *.omp_data_i_11(D).data_, *.omp_data_i_11(D).data_
# /box/cp.cc:307:             data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
	movl	-772(%rbp), %edi	# %sfp, nv
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %rax	# *_107.D.109126._M_impl.D.108433._M_start, _338
# /box/cp.cc:307:             data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
	movl	-712(%rbp), %ecx	# %sfp, ivtmp.393
# /box/cp.cc:306:             data_[(i * 8 + 0) * vc + nv][j] -= ra[i * 8 + 0];
	movq	%rdx, %rbx	#,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rdx	#, tmp528
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	leaq	(%rax,%rdx), %r11	#, _340
# /box/cp.cc:307:             data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
	leal	(%rdi,%rcx), %edx	#, tmp529
# /box/cp.cc:307:             data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
	movslq	%edx, %rdx	# tmp529, tmp530
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rdx	#, tmp531
# /box/cp.cc:308:             data_[(i * 8 + 2) * vc + nv][j] -= ra[i * 8 + 2];
	movl	-708(%rbp), %esi	# %sfp, ivtmp.394
# /box/cp.cc:310:             data_[(i * 8 + 4) * vc + nv][j] -= ra[i * 8 + 4];
	movl	-796(%rbp), %ecx	# %sfp, _509
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	leaq	(%rax,%rdx), %r10	#, _337
# /box/cp.cc:311:             data_[(i * 8 + 5) * vc + nv][j] -= ra[i * 8 + 5];
	movl	-792(%rbp), %edx	# %sfp, _498
# /box/cp.cc:308:             data_[(i * 8 + 2) * vc + nv][j] -= ra[i * 8 + 2];
	leal	(%rdi,%rsi), %r8d	#, tmp532
# /box/cp.cc:313:             data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
	movl	-784(%rbp), %r15d	# %sfp, _476
# /box/cp.cc:310:             data_[(i * 8 + 4) * vc + nv][j] -= ra[i * 8 + 4];
	leal	(%rcx,%rbx), %esi	#, tmp538
# /box/cp.cc:309:             data_[(i * 8 + 3) * vc + nv][j] -= ra[i * 8 + 3];
	movl	-800(%rbp), %edi	# %sfp, _520
# /box/cp.cc:311:             data_[(i * 8 + 5) * vc + nv][j] -= ra[i * 8 + 5];
	leal	(%rdx,%rbx), %ecx	#, tmp541
# /box/cp.cc:312:             data_[(i * 8 + 6) * vc + nv][j] -= ra[i * 8 + 6];
	movl	-788(%rbp), %edx	# %sfp, _487
# /box/cp.cc:313:             data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
	leal	(%r15,%rbx), %r9d	#, tmp547
# /box/cp.cc:309:             data_[(i * 8 + 3) * vc + nv][j] -= ra[i * 8 + 3];
	addl	%ebx, %edi	# ivtmp.400, tmp535
# /box/cp.cc:312:             data_[(i * 8 + 6) * vc + nv][j] -= ra[i * 8 + 6];
	addl	%ebx, %edx	# ivtmp.400, tmp544
# /box/cp.cc:308:             data_[(i * 8 + 2) * vc + nv][j] -= ra[i * 8 + 2];
	movslq	%r8d, %r8	# tmp532, tmp533
# /box/cp.cc:309:             data_[(i * 8 + 3) * vc + nv][j] -= ra[i * 8 + 3];
	movslq	%edi, %rdi	# tmp535, tmp536
# /box/cp.cc:310:             data_[(i * 8 + 4) * vc + nv][j] -= ra[i * 8 + 4];
	movslq	%esi, %rsi	# tmp538, tmp539
# /box/cp.cc:311:             data_[(i * 8 + 5) * vc + nv][j] -= ra[i * 8 + 5];
	movslq	%ecx, %rcx	# tmp541, tmp542
# /box/cp.cc:312:             data_[(i * 8 + 6) * vc + nv][j] -= ra[i * 8 + 6];
	movslq	%edx, %rdx	# tmp544, tmp545
# /box/cp.cc:313:             data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
	movslq	%r9d, %r9	# tmp547, tmp548
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %r8	#, tmp534
	salq	$6, %rdi	#, tmp537
	salq	$6, %rsi	#, tmp540
	salq	$6, %rcx	#, tmp543
	salq	$6, %rdx	#, tmp546
	salq	$6, %r9	#, tmp549
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%rax, %r9	# _338, _325
	addq	%rax, %r8	# _338, _335
	addq	%rax, %rdi	# _338, _333
	addq	%rax, %rsi	# _338, _331
	addq	%rax, %rcx	# _338, _329
	addq	%rax, %rdx	# _338, _327
	leaq	-240(%rbp), %rax	#, tmp622
	movq	%rax, -656(%rbp)	# tmp622, %sfp
	movq	%r9, -680(%rbp)	# _325, %sfp
	leaq	-176(%rbp), %rax	#, tmp625
	leaq	-432(%rbp), %rbx	#, tmp620
	movq	%rax, -664(%rbp)	# tmp625, %sfp
	leaq	-112(%rbp), %rax	#, tmp634
	movq	%rbx, -624(%rbp)	# tmp620, %sfp
	movq	%rax, -672(%rbp)	# tmp634, %sfp
	leaq	-560(%rbp), %r15	#, tmp623
	leaq	-496(%rbp), %r14	#, tmp629
	leaq	-368(%rbp), %r12	#, tmp624
	leaq	-304(%rbp), %rbx	#, tmp633
	xorl	%eax, %eax	# ivtmp.363
	.p2align 4,,10
	.p2align 3
.L78:
# /box/cp.cc:306:             data_[(i * 8 + 0) * vc + nv][j] -= ra[i * 8 + 0];
	vmovsd	(%r11,%rax), %xmm0	# MEM <double> [(value_type &)_340 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_340 + ivtmp.363_691 * 1]
# /box/cp.cc:313:             data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
	movq	-680(%rbp), %r9	# %sfp, _325
# /box/cp.cc:306:             data_[(i * 8 + 0) * vc + nv][j] -= ra[i * 8 + 0];
	vsubsd	0(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554], MEM <double> [(value_type &)_340 + ivtmp.363_691 * 1], tmp550
	vmovsd	%xmm0, (%r11,%rax)	# tmp550, MEM <double> [(value_type &)_340 + ivtmp.363_691 * 1]
# /box/cp.cc:307:             data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
	vmovsd	(%r10,%rax), %xmm0	# MEM <double> [(value_type &)_337 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_337 + ivtmp.363_691 * 1]
	vsubsd	8(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 8], MEM <double> [(value_type &)_337 + ivtmp.363_691 * 1], tmp552
	vmovsd	%xmm0, (%r10,%rax)	# tmp552, MEM <double> [(value_type &)_337 + ivtmp.363_691 * 1]
# /box/cp.cc:308:             data_[(i * 8 + 2) * vc + nv][j] -= ra[i * 8 + 2];
	vmovsd	(%r8,%rax), %xmm0	# MEM <double> [(value_type &)_335 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_335 + ivtmp.363_691 * 1]
	vsubsd	16(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 16], MEM <double> [(value_type &)_335 + ivtmp.363_691 * 1], tmp554
	vmovsd	%xmm0, (%r8,%rax)	# tmp554, MEM <double> [(value_type &)_335 + ivtmp.363_691 * 1]
# /box/cp.cc:309:             data_[(i * 8 + 3) * vc + nv][j] -= ra[i * 8 + 3];
	vmovsd	(%rdi,%rax), %xmm0	# MEM <double> [(value_type &)_333 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_333 + ivtmp.363_691 * 1]
	vsubsd	24(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 24], MEM <double> [(value_type &)_333 + ivtmp.363_691 * 1], tmp556
	vmovsd	%xmm0, (%rdi,%rax)	# tmp556, MEM <double> [(value_type &)_333 + ivtmp.363_691 * 1]
# /box/cp.cc:310:             data_[(i * 8 + 4) * vc + nv][j] -= ra[i * 8 + 4];
	vmovsd	(%rsi,%rax), %xmm0	# MEM <double> [(value_type &)_331 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_331 + ivtmp.363_691 * 1]
	vsubsd	32(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 32], MEM <double> [(value_type &)_331 + ivtmp.363_691 * 1], tmp558
	vmovsd	%xmm0, (%rsi,%rax)	# tmp558, MEM <double> [(value_type &)_331 + ivtmp.363_691 * 1]
# /box/cp.cc:311:             data_[(i * 8 + 5) * vc + nv][j] -= ra[i * 8 + 5];
	vmovsd	(%rcx,%rax), %xmm0	# MEM <double> [(value_type &)_329 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_329 + ivtmp.363_691 * 1]
	vsubsd	40(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 40], MEM <double> [(value_type &)_329 + ivtmp.363_691 * 1], tmp560
	vmovsd	%xmm0, (%rcx,%rax)	# tmp560, MEM <double> [(value_type &)_329 + ivtmp.363_691 * 1]
# /box/cp.cc:312:             data_[(i * 8 + 6) * vc + nv][j] -= ra[i * 8 + 6];
	vmovsd	(%rdx,%rax), %xmm0	# MEM <double> [(value_type &)_327 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_327 + ivtmp.363_691 * 1]
	vsubsd	48(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 48], MEM <double> [(value_type &)_327 + ivtmp.363_691 * 1], tmp562
	vmovsd	%xmm0, (%rdx,%rax)	# tmp562, MEM <double> [(value_type &)_327 + ivtmp.363_691 * 1]
# /box/cp.cc:313:             data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
	vmovsd	(%r9,%rax), %xmm0	# MEM <double> [(value_type &)_325 + ivtmp.363_691 * 1], MEM <double> [(value_type &)_325 + ivtmp.363_691 * 1]
	vsubsd	56(%r13), %xmm0, %xmm0	# MEM[(value_type &)_554 + 56], MEM <double> [(value_type &)_325 + ivtmp.363_691 * 1], _164
	vmovsd	%xmm0, (%r9,%rax)	# _164, MEM <double> [(value_type &)_325 + ivtmp.363_691 * 1]
# /box/cp.cc:322:             xbar_xi_sq0[j] += data_[(i * 8 + 0) * vc + nv][j] * data_[(i * 8 + 0) * vc + nv][j];
	vmovsd	(%r11,%rax), %xmm1	# MEM <double> [(value_type &)_340 + ivtmp.363_691 * 1], _167
# /box/cp.cc:322:             xbar_xi_sq0[j] += data_[(i * 8 + 0) * vc + nv][j] * data_[(i * 8 + 0) * vc + nv][j];
	vfmadd213sd	(%r15,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq0 + ivtmp.363_691 * 1], _167, _170
	vmovsd	%xmm1, (%r15,%rax)	# _170, MEM <double> [(vector(8) double *)&xbar_xi_sq0 + ivtmp.363_691 * 1]
# /box/cp.cc:323:             xbar_xi_sq1[j] += data_[(i * 8 + 1) * vc + nv][j] * data_[(i * 8 + 1) * vc + nv][j];
	vmovsd	(%r10,%rax), %xmm1	# MEM <double> [(value_type &)_337 + ivtmp.363_691 * 1], _173
# /box/cp.cc:323:             xbar_xi_sq1[j] += data_[(i * 8 + 1) * vc + nv][j] * data_[(i * 8 + 1) * vc + nv][j];
	vfmadd213sd	(%r14,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq1 + ivtmp.363_691 * 1], _173, _176
	vmovsd	%xmm1, (%r14,%rax)	# _176, MEM <double> [(vector(8) double *)&xbar_xi_sq1 + ivtmp.363_691 * 1]
# /box/cp.cc:324:             xbar_xi_sq2[j] += data_[(i * 8 + 2) * vc + nv][j] * data_[(i * 8 + 2) * vc + nv][j];
	vmovsd	(%r8,%rax), %xmm1	# MEM <double> [(value_type &)_335 + ivtmp.363_691 * 1], _178
# /box/cp.cc:324:             xbar_xi_sq2[j] += data_[(i * 8 + 2) * vc + nv][j] * data_[(i * 8 + 2) * vc + nv][j];
	movq	-624(%rbp), %r9	# %sfp, tmp620
	vfmadd213sd	(%r9,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq2 + ivtmp.363_691 * 1], _178, _182
	vmovsd	%xmm1, (%r9,%rax)	# _182, MEM <double> [(vector(8) double *)&xbar_xi_sq2 + ivtmp.363_691 * 1]
# /box/cp.cc:325:             xbar_xi_sq3[j] += data_[(i * 8 + 3) * vc + nv][j] * data_[(i * 8 + 3) * vc + nv][j];
	vmovsd	(%rdi,%rax), %xmm1	# MEM <double> [(value_type &)_333 + ivtmp.363_691 * 1], _184
# /box/cp.cc:327:             xbar_xi_sq5[j] += data_[(i * 8 + 5) * vc + nv][j] * data_[(i * 8 + 5) * vc + nv][j];
	movq	-656(%rbp), %r9	# %sfp, tmp622
# /box/cp.cc:325:             xbar_xi_sq3[j] += data_[(i * 8 + 3) * vc + nv][j] * data_[(i * 8 + 3) * vc + nv][j];
	vfmadd213sd	(%r12,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq3 + ivtmp.363_691 * 1], _184, _187
	vmovsd	%xmm1, (%r12,%rax)	# _187, MEM <double> [(vector(8) double *)&xbar_xi_sq3 + ivtmp.363_691 * 1]
# /box/cp.cc:326:             xbar_xi_sq4[j] += data_[(i * 8 + 4) * vc + nv][j] * data_[(i * 8 + 4) * vc + nv][j];
	vmovsd	(%rsi,%rax), %xmm1	# MEM <double> [(value_type &)_331 + ivtmp.363_691 * 1], _190
# /box/cp.cc:326:             xbar_xi_sq4[j] += data_[(i * 8 + 4) * vc + nv][j] * data_[(i * 8 + 4) * vc + nv][j];
	vfmadd213sd	(%rbx,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq4 + ivtmp.363_691 * 1], _190, _194
	vmovsd	%xmm1, (%rbx,%rax)	# _194, MEM <double> [(vector(8) double *)&xbar_xi_sq4 + ivtmp.363_691 * 1]
# /box/cp.cc:327:             xbar_xi_sq5[j] += data_[(i * 8 + 5) * vc + nv][j] * data_[(i * 8 + 5) * vc + nv][j];
	vmovsd	(%rcx,%rax), %xmm1	# MEM <double> [(value_type &)_329 + ivtmp.363_691 * 1], _197
# /box/cp.cc:327:             xbar_xi_sq5[j] += data_[(i * 8 + 5) * vc + nv][j] * data_[(i * 8 + 5) * vc + nv][j];
	vfmadd213sd	(%r9,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq5 + ivtmp.363_691 * 1], _197, _201
	vmovsd	%xmm1, (%r9,%rax)	# _201, MEM <double> [(vector(8) double *)&xbar_xi_sq5 + ivtmp.363_691 * 1]
# /box/cp.cc:328:             xbar_xi_sq6[j] += data_[(i * 8 + 6) * vc + nv][j] * data_[(i * 8 + 6) * vc + nv][j];
	movq	-664(%rbp), %r9	# %sfp, tmp625
# /box/cp.cc:328:             xbar_xi_sq6[j] += data_[(i * 8 + 6) * vc + nv][j] * data_[(i * 8 + 6) * vc + nv][j];
	vmovsd	(%rdx,%rax), %xmm1	# MEM <double> [(value_type &)_327 + ivtmp.363_691 * 1], _204
# /box/cp.cc:328:             xbar_xi_sq6[j] += data_[(i * 8 + 6) * vc + nv][j] * data_[(i * 8 + 6) * vc + nv][j];
	vfmadd213sd	(%r9,%rax), %xmm1, %xmm1	# MEM <double> [(vector(8) double *)&xbar_xi_sq6 + ivtmp.363_691 * 1], _204, _208
	vmovsd	%xmm1, (%r9,%rax)	# _208, MEM <double> [(vector(8) double *)&xbar_xi_sq6 + ivtmp.363_691 * 1]
# /box/cp.cc:329:             xbar_xi_sq7[j] += data_[(i * 8 + 7) * vc + nv][j] * data_[(i * 8 + 7) * vc + nv][j];
	movq	-672(%rbp), %r9	# %sfp, tmp634
	vfmadd213sd	(%r9,%rax), %xmm0, %xmm0	# MEM <double> [(vector(8) double *)&xbar_xi_sq7 + ivtmp.363_691 * 1], _164, _213
	vmovsd	%xmm0, (%r9,%rax)	# _213, MEM <double> [(vector(8) double *)&xbar_xi_sq7 + ivtmp.363_691 * 1]
# /box/cp.cc:305:         for (int j = 0; j < nr; j++) {
	addq	$8, %rax	#, ivtmp.363
	cmpq	%rax, -688(%rbp)	# ivtmp.363, %sfp
	jne	.L78	#,
# /box/cp.cc:31:     return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(11, 10, 9, 8, 3, 2, 1, 0) ,vec1);
	vmovapd	-496(%rbp), %zmm16	# xbar_xi_sq1, xbar_xi_sq1_lsm.335
	vmovapd	-560(%rbp), %zmm12	# xbar_xi_sq0, xbar_xi_sq0_lsm.334
	vmovapd	-368(%rbp), %zmm15	# xbar_xi_sq3, xbar_xi_sq3_lsm.337
	vmovapd	-432(%rbp), %zmm11	# xbar_xi_sq2, xbar_xi_sq2_lsm.336
	vmovapd	-240(%rbp), %zmm14	# xbar_xi_sq5, xbar_xi_sq5_lsm.339
	vmovapd	-304(%rbp), %zmm10	# xbar_xi_sq4, xbar_xi_sq4_lsm.338
	vmovapd	-112(%rbp), %zmm13	# xbar_xi_sq7, xbar_xi_sq7_lsm.341
	vmovapd	-176(%rbp), %zmm1	# xbar_xi_sq6, xbar_xi_sq6_lsm.340
.L79:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm12, %zmm0	# xbar_xi_sq0_lsm.334, tmp429
	vpermt2pd	%zmm16, %zmm5, %zmm0	# xbar_xi_sq1_lsm.335, tmp626, tmp429
	vpermt2pd	%zmm16, %zmm4, %zmm12	# xbar_xi_sq1_lsm.335, tmp627, tmp434
# /box/cp.cc:65:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm12, %zmm0, %zmm12	# tmp434, tmp429, _362
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm11, %zmm0	# xbar_xi_sq2_lsm.336, tmp439
	vpermt2pd	%zmm15, %zmm5, %zmm0	# xbar_xi_sq3_lsm.337, tmp626, tmp439
	vpermt2pd	%zmm15, %zmm4, %zmm11	# xbar_xi_sq3_lsm.337, tmp627, tmp444
# /box/cp.cc:72:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm11, %zmm0, %zmm11	# tmp444, tmp439, _367
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm12, %zmm0	# _362, tmp449
	vpermt2pd	%zmm11, %zmm7, %zmm0	# _367, tmp628, tmp449
	vpermt2pd	%zmm11, %zmm6, %zmm12	# _367, tmp630, tmp454
	vmovapd	%zmm10, %zmm11	# xbar_xi_sq4_lsm.338, tmp459
	vpermt2pd	%zmm14, %zmm5, %zmm11	# xbar_xi_sq5_lsm.339, tmp626, tmp459
	vpermt2pd	%zmm14, %zmm4, %zmm10	# xbar_xi_sq5_lsm.339, tmp627, tmp464
# /box/cp.cc:85:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm10, %zmm11, %zmm10	# tmp464, tmp459, _375
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm1, %zmm11	# xbar_xi_sq6_lsm.340, tmp469
	vpermt2pd	%zmm13, %zmm5, %zmm11	# xbar_xi_sq7_lsm.341, tmp626, tmp469
	vpermt2pd	%zmm13, %zmm4, %zmm1	# xbar_xi_sq7_lsm.341, tmp627, tmp474
# /box/cp.cc:91:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm1, %zmm11, %zmm11	# tmp474, tmp469, _380
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm10, %zmm1	# _375, tmp479
# /box/cp.cc:78:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm12, %zmm0, %zmm0	# tmp454, tmp449, _370
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm11, %zmm7, %zmm1	# _380, tmp628, tmp479
	vpermt2pd	%zmm11, %zmm6, %zmm10	# _380, tmp630, tmp484
# /box/cp.cc:97:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm10, %zmm1, %zmm10	# tmp484, tmp479, _383
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm0, %zmm1	# _370, tmp489
	vpermt2pd	%zmm10, %zmm9, %zmm1	# _383, tmp631, tmp489
	vpermt2pd	%zmm10, %zmm8, %zmm0	# _383, tmp632, tmp494
# /box/cp.cc:102:     result += tmp2 + tmp3;
	vaddpd	%zmm0, %zmm1, %zmm1	# tmp494, tmp489, tmp499
# /box/cp.cc:102:     result += tmp2 + tmp3;
	vaddpd	%zmm2, %zmm1, %zmm1	# tmp421, tmp499, _388
	vucomisd	%xmm1, %xmm3	# _59, tmp503
# /box/cp.cc:343:         xbar_xi_sq[i * 8 + 0] = sqrt(sum[0]);
	vmovapd	%ymm1, %ymm10	# _388, tmp619
	vmovapd	%xmm1, %xmm0	# tmp619, tmp502
	ja	.L94	#,
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _59, _61
.L55:
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	-704(%rbp), %rax	# %sfp, .omp_data_i
	movq	16(%rax), %rax	# *.omp_data_i_11(D).xbar_xi_sq, *.omp_data_i_11(D).xbar_xi_sq
	movq	(%rax), %rbx	# *_62.D.110197._M_impl.D.109541._M_start, _130
# /box/cp.cc:343:         xbar_xi_sq[i * 8 + 0] = sqrt(sum[0]);
	movq	-696(%rbp), %rax	# %sfp, ivtmp.383
	vmovsd	%xmm0, (%rbx,%rax)	# _61, *_124
# /box/cp.cc:344:         xbar_xi_sq[i * 8 + 1] = sqrt(sum[1]);
	vunpckhpd	%xmm10, %xmm10, %xmm0	# tmp506, _64
	vucomisd	%xmm0, %xmm3	# _64, tmp503
	ja	.L95	#,
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _64, _66
.L58:
# /box/cp.cc:344:         xbar_xi_sq[i * 8 + 1] = sqrt(sum[1]);
	movq	-720(%rbp), %rax	# %sfp, _205
	vmovsd	%xmm0, (%rbx,%rax)	# _66, *_133
# /box/cp.cc:345:         xbar_xi_sq[i * 8 + 2] = sqrt(sum[2]);
	vextractf64x2	$1, %ymm10, %xmm0	#, tmp619, _68
	vucomisd	%xmm0, %xmm3	# _68, tmp503
	ja	.L96	#,
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _68, _70
.L61:
# /box/cp.cc:346:         xbar_xi_sq[i * 8 + 3] = sqrt(sum[3]);
	valignq	$3, %ymm10, %ymm10, %ymm10	#, tmp619, _72
# /box/cp.cc:345:         xbar_xi_sq[i * 8 + 2] = sqrt(sum[2]);
	movq	-728(%rbp), %rax	# %sfp, _228
	vmovsd	%xmm0, (%rbx,%rax)	# _70, *_141
	vucomisd	%xmm10, %xmm3	# _72, tmp503
	ja	.L97	#,
# /box/cp.cc:346:         xbar_xi_sq[i * 8 + 3] = sqrt(sum[3]);
	vsqrtsd	%xmm10, %xmm10, %xmm10	# _72, _74
.L64:
# /box/cp.cc:346:         xbar_xi_sq[i * 8 + 3] = sqrt(sum[3]);
	movq	-736(%rbp), %rax	# %sfp, _255
	vmovsd	%xmm10, (%rbx,%rax)	# _74, *_149
# /box/cp.cc:347:         xbar_xi_sq[i * 8 + 4] = sqrt(sum[4]);
	vextractf64x4	$0x1, %zmm1, %ymm10	# _388, tmp621
	vextractf64x2	$2, %zmm1, %xmm1	#, _388, _76
	vucomisd	%xmm1, %xmm3	# _76, tmp503
	ja	.L98	#,
	vsqrtsd	%xmm1, %xmm1, %xmm1	# _76, _78
.L67:
# /box/cp.cc:348:         xbar_xi_sq[i * 8 + 5] = sqrt(sum[5]);
	vunpckhpd	%xmm10, %xmm10, %xmm0	# tmp518, _80
	vucomisd	%xmm0, %xmm3	# _80, tmp503
# /box/cp.cc:347:         xbar_xi_sq[i * 8 + 4] = sqrt(sum[4]);
	movq	-744(%rbp), %rax	# %sfp, _274
	vmovsd	%xmm1, (%rbx,%rax)	# _78, *_157
	ja	.L99	#,
# /box/cp.cc:348:         xbar_xi_sq[i * 8 + 5] = sqrt(sum[5]);
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _80, _82
.L70:
# /box/cp.cc:348:         xbar_xi_sq[i * 8 + 5] = sqrt(sum[5]);
	movq	-752(%rbp), %rax	# %sfp, _287
	vmovsd	%xmm0, (%rbx,%rax)	# _82, *_165
# /box/cp.cc:349:         xbar_xi_sq[i * 8 + 6] = sqrt(sum[6]);
	vextractf64x2	$1, %ymm10, %xmm0	#, tmp621, _84
	vucomisd	%xmm0, %xmm3	# _84, tmp503
	ja	.L100	#,
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _84, _86
.L73:
# /box/cp.cc:350:         xbar_xi_sq[i * 8 + 7] = sqrt(sum[7]);
	valignq	$3, %ymm10, %ymm10, %ymm10	#, tmp621, _88
# /box/cp.cc:349:         xbar_xi_sq[i * 8 + 6] = sqrt(sum[6]);
	movq	-760(%rbp), %rax	# %sfp, _300
	vmovsd	%xmm0, (%rbx,%rax)	# _86, *_172
	vucomisd	%xmm10, %xmm3	# _88, tmp503
	ja	.L101	#,
# /box/cp.cc:350:         xbar_xi_sq[i * 8 + 7] = sqrt(sum[7]);
	vsqrtsd	%xmm10, %xmm10, %xmm10	# _88, _90
.L76:
# /box/cp.cc:350:         xbar_xi_sq[i * 8 + 7] = sqrt(sum[7]);
	movq	-768(%rbp), %rax	# %sfp, _313
	addq	$64, %r13	#, ivtmp.381
	vmovsd	%xmm10, (%rbx,%rax)	# _90, *_179
	movl	-808(%rbp), %eax	# %sfp, _587
	addq	$64, -696(%rbp)	#, %sfp
	addl	%eax, -780(%rbp)	# _587, %sfp
	addl	%eax, -712(%rbp)	# _587, %sfp
	addl	%eax, -708(%rbp)	# _587, %sfp
	addl	%eax, -776(%rbp)	# _587, %sfp
	cmpq	%r13, -816(%rbp)	# ivtmp.381, %sfp
	jne	.L77	#,
	vzeroupper
.L102:
# /box/cp.cc:261:     #pragma omp parallel for
	addq	$832, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L104:
	.cfi_restore_state
# /box/cp.cc:279:         for (int j = 0; j < nv; j++) {
	vxorpd	%xmm1, %xmm1, %xmm1	# xbar_xi_sq6_lsm.340
	vmovapd	%zmm1, %zmm13	#, xbar_xi_sq7_lsm.341
	vmovapd	%zmm1, %zmm10	#, xbar_xi_sq4_lsm.338
	vmovapd	%zmm1, %zmm14	#, xbar_xi_sq5_lsm.339
	vmovapd	%zmm1, %zmm11	#, xbar_xi_sq2_lsm.336
	vmovapd	%zmm1, %zmm15	#, xbar_xi_sq3_lsm.337
	vmovapd	%zmm1, %zmm12	#, xbar_xi_sq0_lsm.334
	vmovapd	%zmm1, %zmm16	#, xbar_xi_sq1_lsm.335
	jmp	.L81	#
.L49:
	incl	%eax	# q.82_1
# /box/cp.cc:261:     #pragma omp parallel for
	xorl	%edx, %edx	# tt.83_2
	jmp	.L82	#
.L101:
# /box/cp.cc:350:         xbar_xi_sq[i * 8 + 7] = sqrt(sum[7]);
	vmovsd	%xmm10, %xmm10, %xmm0	# _88,
	vzeroupper
	call	sqrt@PLT	#
	vmovsd	%xmm0, %xmm0, %xmm10	# tmp646, _90
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L76	#
.L100:
	vmovapd	%ymm10, -624(%rbp)	# tmp621, %sfp
# /box/cp.cc:349:         xbar_xi_sq[i * 8 + 6] = sqrt(sum[6]);
	vzeroupper
	call	sqrt@PLT	#
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-624(%rbp), %ymm10	# %sfp, tmp621
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L73	#
.L99:
	vmovapd	%ymm10, -624(%rbp)	# tmp621, %sfp
# /box/cp.cc:348:         xbar_xi_sq[i * 8 + 5] = sqrt(sum[5]);
	vzeroupper
	call	sqrt@PLT	#
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-624(%rbp), %ymm10	# %sfp, tmp621
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L70	#
.L98:
	vmovapd	%ymm10, -624(%rbp)	# tmp621, %sfp
# /box/cp.cc:347:         xbar_xi_sq[i * 8 + 4] = sqrt(sum[4]);
	vmovsd	%xmm1, %xmm1, %xmm0	# _76,
	vzeroupper
	call	sqrt@PLT	#
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp643, _78
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-624(%rbp), %ymm10	# %sfp, tmp621
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L67	#
.L97:
	vmovapd	%zmm1, -624(%rbp)	# _388, %sfp
# /box/cp.cc:346:         xbar_xi_sq[i * 8 + 3] = sqrt(sum[3]);
	vmovsd	%xmm10, %xmm10, %xmm0	# _72,
	vzeroupper
	call	sqrt@PLT	#
	vmovsd	%xmm0, %xmm0, %xmm10	# tmp642, _74
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-624(%rbp), %zmm1	# %sfp, _388
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L64	#
.L96:
	vmovapd	%ymm10, -656(%rbp)	# tmp619, %sfp
	vmovapd	%zmm1, -624(%rbp)	# _388, %sfp
# /box/cp.cc:345:         xbar_xi_sq[i * 8 + 2] = sqrt(sum[2]);
	vzeroupper
	call	sqrt@PLT	#
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-656(%rbp), %ymm10	# %sfp, tmp619
	vmovapd	-624(%rbp), %zmm1	# %sfp, _388
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L61	#
.L95:
	vmovapd	%ymm10, -656(%rbp)	# tmp619, %sfp
	vmovapd	%zmm1, -624(%rbp)	# _388, %sfp
# /box/cp.cc:344:         xbar_xi_sq[i * 8 + 1] = sqrt(sum[1]);
	vzeroupper
	call	sqrt@PLT	#
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-656(%rbp), %ymm10	# %sfp, tmp619
	vmovapd	-624(%rbp), %zmm1	# %sfp, _388
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L58	#
.L94:
	vmovapd	%ymm1, -656(%rbp)	# tmp619, %sfp
	vmovapd	%zmm1, -624(%rbp)	# _388, %sfp
# /box/cp.cc:343:         xbar_xi_sq[i * 8 + 0] = sqrt(sum[0]);
	vzeroupper
	call	sqrt@PLT	#
	vmovdqa64	.LC6(%rip), %zmm8	#, tmp632
	vmovdqa64	.LC5(%rip), %zmm9	#, tmp631
	vmovdqa64	.LC4(%rip), %zmm6	#, tmp630
	vmovdqa64	.LC3(%rip), %zmm7	#, tmp628
	vmovdqa64	.LC2(%rip), %zmm4	#, tmp627
	vmovdqa64	.LC1(%rip), %zmm5	#, tmp626
	vmovapd	-656(%rbp), %ymm10	# %sfp, tmp619
	vmovapd	-624(%rbp), %zmm1	# %sfp, _388
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp503
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp421
	jmp	.L55	#
	.cfi_endproc
.LFE10571:
	.size	_Z9correlateiiPKfPf._omp_fn.2, .-_Z9correlateiiPKfPf._omp_fn.2
	.p2align 4
	.type	_Z9correlateiiPKfPf._omp_fn.1, @function
_Z9correlateiiPKfPf._omp_fn.1:
.LFB10570:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp351, .omp_data_i
	andq	$-64, %rsp	#,
	subq	$64, %rsp	#,
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	# tmp352, _13
	call	omp_get_thread_num@PLT	#
	movl	%eax, %ecx	# tmp353, _14
	movl	24(%rbx), %eax	# *.omp_data_i_9(D).nc, *.omp_data_i_9(D).nc
	cltd
	idivl	%r12d	# _13
	cmpl	%edx, %ecx	# tt.85_2, _14
	jl	.L106	#,
.L112:
	testl	%eax, %eax	# q.84_1
	jle	.L115	#,
	imull	%eax, %ecx	# q.84_1, tmp226
# /box/cp.cc:217:     #pragma omp parallel for
	movl	20(%rbx), %r15d	# *.omp_data_i_9(D).vc, vc
# /box/cp.cc:247:         ra[i * 8 + 0] = sum[0] / nx;
	vxorps	%xmm10, %xmm10, %xmm10	# tmp354
	addl	%edx, %ecx	# tt.85_2, _19
	vcvtsi2sdl	16(%rbx), %xmm10, %xmm10	# *.omp_data_i_9(D).nx, tmp354, tmp355
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	8(%rbx), %rdx	# *.omp_data_i_9(D).ra, *.omp_data_i_9(D).ra
# /box/cp.cc:228:             sum0 += data_[(i * 8 + 0) * vc  + j];
	movq	(%rbx), %r8	# *.omp_data_i_9(D).data_, _92
	leal	0(,%r15,8), %ebx	#, _358
	movl	%ebx, %r12d	# _358, ivtmp.437
	imull	%ecx, %r12d	# _19, ivtmp.437
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rdx), %rsi	# *_36.D.110197._M_impl.D.109541._M_start, _164
	movl	%eax, %eax	# q.84_1, q.84_1
	leal	0(,%rcx,8), %edx	#, tmp229
	movslq	%ecx, %rcx	# _19, _19
	addq	%rcx, %rax	# _19, tmp234
	salq	$6, %rax	#, tmp235
	addq	%rsi, %rax	# _164, _344
	movq	%rax, 56(%rsp)	# _344, %sfp
	leal	1(%rdx), %eax	#, tmp236
	imull	%r15d, %eax	# vc, tmp237
	movslq	%edx, %rdi	# tmp229, tmp230
	movl	%ebx, 52(%rsp)	# _358, %sfp
	subl	%r12d, %eax	# ivtmp.437, tmp237
	movl	%eax, 20(%rsp)	# tmp237, %sfp
	leal	2(%rdx), %eax	#, tmp238
	imull	%r15d, %eax	# vc, tmp239
	vmovdqa64	.LC1(%rip), %zmm9	#, tmp344
	vmovdqa64	.LC2(%rip), %zmm8	#, tmp345
	subl	%r12d, %eax	# ivtmp.437, tmp239
	movl	%eax, 24(%rsp)	# tmp239, %sfp
	leal	3(%rdx), %eax	#, tmp240
	imull	%r15d, %eax	# vc, tmp241
	vmovdqa64	.LC3(%rip), %zmm12	#, tmp346
	vmovdqa64	.LC4(%rip), %zmm11	#, tmp347
	subl	%r12d, %eax	# ivtmp.437, tmp241
	movl	%eax, 28(%rsp)	# tmp241, %sfp
	leal	4(%rdx), %eax	#, tmp242
	imull	%r15d, %eax	# vc, tmp243
	vmovdqa64	.LC5(%rip), %zmm15	#, tmp348
	vmovdqa64	.LC6(%rip), %zmm14	#, tmp349
	subl	%r12d, %eax	# ivtmp.437, tmp243
	movl	%eax, 32(%rsp)	# tmp243, %sfp
	leal	5(%rdx), %eax	#, tmp244
	imull	%r15d, %eax	# vc, tmp245
# /box/cp.cc:102:     result += tmp2 + tmp3;
	movl	%r15d, 48(%rsp)	# vc, %sfp
	vbroadcastsd	%xmm10, %ymm10	# _342, _390
	subl	%r12d, %eax	# ivtmp.437, tmp245
	movl	%eax, 36(%rsp)	# tmp245, %sfp
	leal	6(%rdx), %eax	#, tmp246
	imull	%r15d, %eax	# vc, tmp247
	addl	$7, %edx	#, tmp248
	imull	%r15d, %edx	# vc, tmp249
	subl	%r12d, %eax	# ivtmp.437, tmp247
	movl	%eax, 40(%rsp)	# tmp247, %sfp
	subl	%r12d, %edx	# ivtmp.437, tmp249
	movslq	%r15d, %rax	# vc, vc
	movl	%edx, 44(%rsp)	# tmp249, %sfp
	movq	%rax, 8(%rsp)	# vc, %sfp
	leaq	(%rsi,%rdi,8), %r14	#, ivtmp.434
	vxorpd	%xmm13, %xmm13, %xmm13	# tmp321
	movq	%r8, %r15	# _92, _92
	.p2align 4,,10
	.p2align 3
.L109:
# /box/cp.cc:227:         for (int j = 0; j < vc; j++) {
	movl	48(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L117	#,
	movq	8(%rsp), %rsi	# %sfp, vc
	movslq	%r12d, %rax	# ivtmp.437, _397
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%r15), %rbx	# *_92.D.109126._M_impl.D.108433._M_start, _181
	movq	%rax, %r13	# _397, _398
	addq	%rsi, %rax	# vc, tmp328
	salq	$6, %rax	#, tmp329
	salq	$6, %r13	#, _398
	leaq	(%rbx,%r13), %rdx	#, ivtmp.420
	addq	%rax, %rbx	# tmp329, _369
# /box/cp.cc:229:             sum1 += data_[(i * 8 + 1) * vc  + j];
	movl	20(%rsp), %eax	# %sfp, _333
# /box/cp.cc:226:         double8_t sum7 = d8zero;
	vxorpd	%xmm7, %xmm7, %xmm7	# sum7
# /box/cp.cc:229:             sum1 += data_[(i * 8 + 1) * vc  + j];
	leal	(%rax,%r12), %r11d	#, tmp330
# /box/cp.cc:230:             sum2 += data_[(i * 8 + 2) * vc  + j];
	movl	24(%rsp), %eax	# %sfp, _322
	movslq	%r11d, %r11	# tmp330, tmp331
	leal	(%rax,%r12), %r10d	#, tmp332
# /box/cp.cc:231:             sum3 += data_[(i * 8 + 3) * vc  + j];
	movl	28(%rsp), %eax	# %sfp, _311
	movslq	%r10d, %r10	# tmp332, tmp333
	leal	(%rax,%r12), %r9d	#, tmp334
# /box/cp.cc:232:             sum4 += data_[(i * 8 + 4) * vc  + j];
	movl	32(%rsp), %eax	# %sfp, _300
	movslq	%r9d, %r9	# tmp334, tmp335
	leal	(%rax,%r12), %r8d	#, tmp336
# /box/cp.cc:233:             sum5 += data_[(i * 8 + 5) * vc  + j];
	movl	36(%rsp), %eax	# %sfp, _289
	movslq	%r8d, %r8	# tmp336, tmp337
	leal	(%rax,%r12), %edi	#, tmp338
# /box/cp.cc:234:             sum6 += data_[(i * 8 + 6) * vc  + j];
	movl	40(%rsp), %eax	# %sfp, _278
	movslq	%edi, %rdi	# tmp338, tmp339
	leal	(%rax,%r12), %esi	#, tmp340
# /box/cp.cc:235:             sum7 += data_[(i * 8 + 7) * vc  + j];
	movl	44(%rsp), %eax	# %sfp, _267
	movslq	%esi, %rsi	# tmp340, tmp341
	leal	(%rax,%r12), %ecx	#, tmp342
	movslq	%ecx, %rcx	# tmp342, tmp343
	salq	$6, %r11	#, _406
	salq	$6, %r10	#, _412
	salq	$6, %r9	#, _418
	salq	$6, %r8	#, _424
	salq	$6, %rdi	#, _54
	salq	$6, %rsi	#, _381
	salq	$6, %rcx	#, _375
# /box/cp.cc:225:         double8_t sum6 = d8zero;
	vmovapd	%zmm7, %zmm3	#, sum6
# /box/cp.cc:224:         double8_t sum5 = d8zero;
	vmovapd	%zmm7, %zmm6	# tmp23, sum5
# /box/cp.cc:223:         double8_t sum4 = d8zero;
	vmovapd	%zmm7, %zmm2	# tmp23, sum4
# /box/cp.cc:222:         double8_t sum3 = d8zero;
	vmovapd	%zmm7, %zmm5	# tmp22, sum3
# /box/cp.cc:221:         double8_t sum2 = d8zero;
	vmovapd	%zmm7, %zmm1	# tmp22, sum2
# /box/cp.cc:220:         double8_t sum1 = d8zero;
	vmovapd	%zmm7, %zmm4	# tmp21, sum1
# /box/cp.cc:219:         double8_t sum0 = d8zero;
	vmovapd	%zmm7, %zmm0	# tmp21, sum0
	.p2align 4,,10
	.p2align 3
.L110:
	movq	%rdx, %rax	# ivtmp.420, _404
	subq	%r13, %rax	# _398, _404
# /box/cp.cc:228:             sum0 += data_[(i * 8 + 0) * vc  + j];
	vaddpd	(%rdx), %zmm0, %zmm0	# MEM[(value_type *)_400], sum0, sum0
# /box/cp.cc:227:         for (int j = 0; j < vc; j++) {
	addq	$64, %rdx	#, ivtmp.420
# /box/cp.cc:229:             sum1 += data_[(i * 8 + 1) * vc  + j];
	vaddpd	(%rax,%r11), %zmm4, %zmm4	# MEM[(value_type *)_404 + _406 * 1], sum1, sum1
# /box/cp.cc:230:             sum2 += data_[(i * 8 + 2) * vc  + j];
	vaddpd	(%rax,%r10), %zmm1, %zmm1	# MEM[(value_type *)_404 + _412 * 1], sum2, sum2
# /box/cp.cc:231:             sum3 += data_[(i * 8 + 3) * vc  + j];
	vaddpd	(%rax,%r9), %zmm5, %zmm5	# MEM[(value_type *)_404 + _418 * 1], sum3, sum3
# /box/cp.cc:232:             sum4 += data_[(i * 8 + 4) * vc  + j];
	vaddpd	(%rax,%r8), %zmm2, %zmm2	# MEM[(value_type *)_404 + _424 * 1], sum4, sum4
# /box/cp.cc:233:             sum5 += data_[(i * 8 + 5) * vc  + j];
	vaddpd	(%rax,%rdi), %zmm6, %zmm6	# MEM[(value_type *)_404 + _54 * 1], sum5, sum5
# /box/cp.cc:234:             sum6 += data_[(i * 8 + 6) * vc  + j];
	vaddpd	(%rax,%rsi), %zmm3, %zmm3	# MEM[(value_type *)_404 + _381 * 1], sum6, sum6
# /box/cp.cc:235:             sum7 += data_[(i * 8 + 7) * vc  + j];
	vaddpd	(%rax,%rcx), %zmm7, %zmm7	# MEM[(value_type *)_404 + _375 * 1], sum7, sum7
# /box/cp.cc:227:         for (int j = 0; j < vc; j++) {
	cmpq	%rdx, %rbx	# ivtmp.420, _369
	jne	.L110	#,
.L111:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm0, %zmm16	# sum0, tmp250
	vpermt2pd	%zmm4, %zmm9, %zmm16	# sum1, tmp344, tmp250
	vpermt2pd	%zmm4, %zmm8, %zmm0	# sum1, tmp345, tmp255
	vmovapd	%zmm1, %zmm4	# sum2, tmp260
# /box/cp.cc:65:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm0, %zmm16, %zmm0	# tmp255, tmp250, _188
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm5, %zmm8, %zmm1	# sum3, tmp345, tmp265
	vpermt2pd	%zmm5, %zmm9, %zmm4	# sum3, tmp344, tmp260
# /box/cp.cc:72:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm1, %zmm4, %zmm4	# tmp265, tmp260, _193
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm0, %zmm1	# _188, tmp270
	movl	52(%rsp), %eax	# %sfp, _358
	vpermt2pd	%zmm4, %zmm11, %zmm0	# _193, tmp347, tmp275
	vpermt2pd	%zmm4, %zmm12, %zmm1	# _193, tmp346, tmp270
# /box/cp.cc:78:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm0, %zmm1, %zmm1	# tmp275, tmp270, _196
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm2, %zmm0	# sum4, tmp280
	vpermt2pd	%zmm6, %zmm9, %zmm0	# sum5, tmp344, tmp280
	vpermt2pd	%zmm6, %zmm8, %zmm2	# sum5, tmp345, tmp285
# /box/cp.cc:85:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm2, %zmm0, %zmm0	# tmp285, tmp280, _201
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm3, %zmm2	# sum6, tmp290
	vpermt2pd	%zmm7, %zmm9, %zmm2	# sum7, tmp344, tmp290
	vpermt2pd	%zmm7, %zmm8, %zmm3	# sum7, tmp345, tmp295
# /box/cp.cc:91:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm3, %zmm2, %zmm3	# tmp295, tmp290, _206
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm0, %zmm2	# _201, tmp300
	addq	$64, %r14	#, ivtmp.434
	vpermt2pd	%zmm3, %zmm11, %zmm0	# _206, tmp347, tmp305
	vpermt2pd	%zmm3, %zmm12, %zmm2	# _206, tmp346, tmp300
# /box/cp.cc:97:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm0, %zmm2, %zmm2	# tmp305, tmp300, _209
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm1, %zmm0	# _196, tmp310
	addl	%eax, %r12d	# _358, ivtmp.437
	vpermt2pd	%zmm2, %zmm14, %zmm1	# _209, tmp349, tmp315
	vpermt2pd	%zmm2, %zmm15, %zmm0	# _209, tmp348, tmp310
# /box/cp.cc:102:     result += tmp2 + tmp3;
	vaddpd	%zmm1, %zmm0, %zmm0	# tmp315, tmp310, tmp320
# /box/cp.cc:102:     result += tmp2 + tmp3;
	vaddpd	%zmm13, %zmm0, %zmm0	# tmp321, tmp320, _214
# /box/cp.cc:247:         ra[i * 8 + 0] = sum[0] / nx;
	vdivpd	%ymm10, %ymm0, %ymm1	# _390, tmp322, vect__33.414
	vshuff64x2	$238, %zmm0, %zmm0, %zmm0	#, _214, tmp324
	vdivpd	%ymm10, %ymm0, %ymm0	# _390, tmp325, vect__33.414
# /box/cp.cc:247:         ra[i * 8 + 0] = sum[0] / nx;
	vmovupd	%ymm1, -64(%r14)	# vect__33.414, MEM <vector(4) double> [(value_type &)_353]
	vmovupd	%ymm0, -32(%r14)	# vect__33.414, MEM <vector(4) double> [(value_type &)_353 + 32]
	cmpq	%r14, 56(%rsp)	# ivtmp.434, %sfp
	jne	.L109	#,
	vzeroupper
.L115:
# /box/cp.cc:217:     #pragma omp parallel for
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore_state
# /box/cp.cc:226:         double8_t sum7 = d8zero;
	vxorpd	%xmm7, %xmm7, %xmm7	# sum7
# /box/cp.cc:225:         double8_t sum6 = d8zero;
	vmovapd	%zmm7, %zmm3	#, sum6
# /box/cp.cc:224:         double8_t sum5 = d8zero;
	vmovapd	%zmm7, %zmm6	# tmp23, sum5
# /box/cp.cc:223:         double8_t sum4 = d8zero;
	vmovapd	%zmm7, %zmm2	# tmp23, sum4
# /box/cp.cc:222:         double8_t sum3 = d8zero;
	vmovapd	%zmm7, %zmm5	# tmp22, sum3
# /box/cp.cc:221:         double8_t sum2 = d8zero;
	vmovapd	%zmm7, %zmm1	# tmp22, sum2
# /box/cp.cc:220:         double8_t sum1 = d8zero;
	vmovapd	%zmm7, %zmm4	# tmp21, sum1
# /box/cp.cc:219:         double8_t sum0 = d8zero;
	vmovapd	%zmm7, %zmm0	# tmp21, sum0
	jmp	.L111	#
.L106:
	incl	%eax	# q.84_1
# /box/cp.cc:217:     #pragma omp parallel for
	xorl	%edx, %edx	# tt.85_2
	jmp	.L112	#
	.cfi_endproc
.LFE10570:
	.size	_Z9correlateiiPKfPf._omp_fn.1, .-_Z9correlateiiPKfPf._omp_fn.1
	.p2align 4
	.type	_Z9correlateiiPKfPf._omp_fn.3, @function
_Z9correlateiiPKfPf._omp_fn.3:
.LFB10572:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$8, %ecx	#,
	movl	$1, %edx	#,
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movq	%rdi, %r14	# tmp1438, .omp_data_i
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	andq	$-64, %rsp	#,
	subq	$960, %rsp	#,
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# /box/cp.cc:357:     #pragma omp parallel for schedule (dynamic, 8)
	movslq	32(%rdi), %rsi	# *.omp_data_i_13(D).nc,
	movl	28(%rdi), %r15d	# *.omp_data_i_13(D).vc, vc
	movq	(%rdi), %rdi	# *.omp_data_i_13(D).result, result
	leaq	376(%rsp), %rbx	#, tmp1403
	leaq	368(%rsp), %r12	#, tmp1402
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1442
	movq	%rax, 952(%rsp)	# tmp1442, D.125116
	xorl	%eax, %eax	# tmp1442
	movq	%rbx, %r9	# tmp1403,
	movq	%rdi, 160(%rsp)	# result, %sfp
	movq	%r12, %r8	# tmp1402,
	xorl	%edi, %edi	#
	movl	%esi, 172(%rsp)	# nc, %sfp
	movl	%r15d, 168(%rsp)	# vc, %sfp
	movl	24(%r14), %r13d	# *.omp_data_i_13(D).ny, ny
	call	GOMP_loop_nonmonotonic_dynamic_start@PLT	#
	testb	%al, %al	# tmp1439
	je	.L119	#,
	leal	0(,%r13,8), %eax	#, tmp1411
	movl	%eax, 96(%rsp)	# tmp1411, %sfp
	leal	0(,%r15,8), %eax	#, _774
	movl	%eax, 220(%rsp)	# _774, %sfp
	movslq	%r15d, %rax	# vc, vc
	salq	$6, %rax	#, vc
	movq	%rax, 312(%rsp)	# vc, %sfp
	movq	%r14, 64(%rsp)	# .omp_data_i, %sfp
	movq	%r12, 56(%rsp)	# tmp1402, %sfp
	movq	%rbx, 48(%rsp)	# tmp1403, %sfp
	vmovdqa64	.LC1(%rip), %zmm1	#, tmp1430
	vmovdqa64	.LC2(%rip), %zmm0	#, tmp1431
	vmovdqa64	.LC3(%rip), %zmm3	#, tmp1432
	vmovdqa64	.LC4(%rip), %zmm2	#, tmp1433
	vmovdqa64	.LC5(%rip), %zmm14	#, tmp1434
	vmovdqa64	.LC6(%rip), %zmm13	#, tmp1435
	movl	%r13d, %ecx	# ny, ny
.L123:
	movq	368(%rsp), %rdx	# .istart0.78, .istart0.80_21
	movl	172(%rsp), %ebx	# %sfp, nc
	movq	376(%rsp), %rax	# .iend0.79, .iend0.81_23
	movl	%edx, %edi	# .istart0.80_21, i
	cmpl	%edx, %ebx	# .istart0.80_21, nc
	jle	.L120	#,
	cmpl	%eax, %ebx	# tmp1441, nc
	cmovle	%ebx, %eax	# nc,, tmp1441
	leal	0(,%rdx,8), %r15d	#, ivtmp.528
	movl	168(%rsp), %ebx	# %sfp, vc
	movl	%eax, %esi	# tmp1441, _1148
	movl	%r15d, %eax	# ivtmp.528, ivtmp.528
	cltq
	movl	%ebx, %edx	# vc, ivtmp.547
	imull	%eax, %edx	# ivtmp.528, ivtmp.547
	leal	1(%r15), %r11d	#, ivtmp.529
	leal	2(%r15), %r10d	#, ivtmp.530
	movl	%edx, 176(%rsp)	# ivtmp.547, %sfp
	movl	%ebx, %edx	# vc, ivtmp.548
	imull	%r11d, %edx	# ivtmp.529, ivtmp.548
	movl	%r11d, 308(%rsp)	# ivtmp.529, %sfp
	leal	3(%rax), %r11d	#, _247
	movl	%edx, 180(%rsp)	# ivtmp.548, %sfp
	movl	%ebx, %edx	# vc, ivtmp.549
	imull	%r10d, %edx	# ivtmp.530, ivtmp.549
	movl	%r11d, 264(%rsp)	# _247, %sfp
	movl	%r15d, 236(%rsp)	# ivtmp.528, %sfp
	movl	%edx, 184(%rsp)	# ivtmp.549, %sfp
	movl	%ebx, %edx	# vc, ivtmp.550
	imull	%r11d, %edx	# _247, ivtmp.550
	leal	4(%rax), %r11d	#, _255
	imull	%ecx, %r15d	# ny, ivtmp.541
	movl	%edx, 188(%rsp)	# ivtmp.550, %sfp
	movl	%ebx, %edx	# vc, ivtmp.551
	imull	%r11d, %edx	# _255, ivtmp.551
	movl	%r10d, 292(%rsp)	# ivtmp.530, %sfp
	movl	%r15d, 288(%rsp)	# ivtmp.541, %sfp
	movl	%edx, 192(%rsp)	# ivtmp.551, %sfp
	leal	5(%rax), %edx	#, tmp645
	imull	%ebx, %edx	# vc, tmp645
	movl	%r11d, 232(%rsp)	# _255, %sfp
# /box/cp.cc:360:             double8_t result0 = d8zero;
	movl	%esi, 76(%rsp)	# _1148, %sfp
	movl	%edx, 196(%rsp)	# tmp645, %sfp
	leal	6(%rax), %edx	#, tmp646
	imull	%ebx, %edx	# vc, tmp646
	leaq	0(,%rax,8), %r9	#, ivtmp.545
	vxorpd	%xmm15, %xmm15, %xmm15	# tmp665
	movl	%edx, 200(%rsp)	# tmp646, %sfp
	leal	7(%rax), %edx	#, tmp647
	imull	%ebx, %edx	# vc, tmp647
	leal	(%rcx,%rcx), %ebx	#, tmp1410
	movl	%ebx, 100(%rsp)	# tmp1410, %sfp
	movl	%edx, 204(%rsp)	# tmp647, %sfp
	addl	%ecx, %ebx	# ny, tmp650
	movl	%ebx, 88(%rsp)	# tmp650, %sfp
	movl	%edi, %ebx	# i, i
	movq	64(%rsp), %rdi	# %sfp, .omp_data_i
	.p2align 4,,10
	.p2align 3
.L122:
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$3, %rax	#, _251
	movq	%rax, 296(%rsp)	# _251, %sfp
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movslq	308(%rsp), %rax	# %sfp, _232
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movl	288(%rsp), %edx	# %sfp, ivtmp.541
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$3, %rax	#, _207
	movq	%rax, 280(%rsp)	# _207, %sfp
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	leal	(%rcx,%rdx), %eax	#, _539
	movl	%eax, 212(%rsp)	# _539, %sfp
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movslq	292(%rsp), %rax	# %sfp, _239
	movslq	176(%rsp), %r8	# %sfp,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$3, %rax	#, _159
	movq	%rax, 240(%rsp)	# _159, %sfp
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movl	100(%rsp), %eax	# %sfp, tmp1410
	movq	%r8, %rsi	#,
	addl	%edx, %eax	# ivtmp.541, _557
	movl	%eax, 208(%rsp)	# _557, %sfp
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movslq	264(%rsp), %rax	# %sfp, _247
	salq	$6, %r8	#, _1071
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$3, %rax	#, _115
	movq	%rax, 224(%rsp)	# _115, %sfp
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movl	88(%rsp), %eax	# %sfp, tmp650
	movl	%esi, 268(%rsp)	# ivtmp.547, %sfp
	addl	%edx, %eax	# ivtmp.541, _499
	movl	%eax, 216(%rsp)	# _499, %sfp
	movslq	180(%rsp), %rax	# %sfp, ivtmp.548
	movl	%ebx, 304(%rsp)	# i, %sfp
	salq	$6, %rax	#, ivtmp.548
	movq	%rax, %r15	# ivtmp.548, _1068
	movslq	184(%rsp), %rax	# %sfp, ivtmp.549
	movl	%ebx, 92(%rsp)	# i, %sfp
	salq	$6, %rax	#, ivtmp.549
	movq	%rax, 152(%rsp)	# ivtmp.549, %sfp
	movslq	188(%rsp), %rax	# %sfp, ivtmp.550
	movl	236(%rsp), %esi	# %sfp, ivtmp.528
	salq	$6, %rax	#, ivtmp.550
	movq	%rax, %r10	# ivtmp.550, _1094
	movslq	192(%rsp), %rax	# %sfp, ivtmp.551
	movq	%r9, 272(%rsp)	# ivtmp.545, %sfp
	salq	$6, %rax	#, ivtmp.551
	movq	%rax, 144(%rsp)	# ivtmp.551, %sfp
	movslq	196(%rsp), %rax	# %sfp, ivtmp.552
	movq	%r9, 80(%rsp)	# ivtmp.545, %sfp
	salq	$6, %rax	#, ivtmp.552
	movq	%rax, %r14	# ivtmp.552, _1088
	movslq	200(%rsp), %rax	# %sfp, ivtmp.553
	movl	%esi, %ebx	# ivtmp.513, ivtmp.513
	salq	$6, %rax	#, ivtmp.553
	movq	%rax, %r12	# ivtmp.553, _1085
	movslq	204(%rsp), %rax	# %sfp, ivtmp.554
	salq	$6, %rax	#, ivtmp.554
	movq	%rax, 320(%rsp)	# ivtmp.554, %sfp
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	leal	0(,%rcx,4), %eax	#, tmp1421
	movl	%eax, 108(%rsp)	# tmp1421, %sfp
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	addl	%ecx, %eax	# ny, tmp1422
	addl	%edx, %eax	# ivtmp.541, tmp1423
	movl	%eax, 104(%rsp)	# tmp1423, %sfp
	movq	%r15, 136(%rsp)	# _1068, %sfp
	movq	%r8, 128(%rsp)	# _1071, %sfp
	movq	%r12, 120(%rsp)	# _1085, %sfp
	movq	%r14, 112(%rsp)	# _1088, %sfp
	movq	%r10, %r15	# _1094, _1094
	.p2align 4,,10
	.p2align 3
.L121:
# /box/cp.cc:368:             for (int k = 0; k < vc; k++) {
	movl	168(%rsp), %eax	# %sfp,
# /box/cp.cc:360:             double8_t result0 = d8zero;
	vmovapd	%zmm15, 384(%rsp)	# tmp665, result0
# /box/cp.cc:361:             double8_t result1 = d8zero;
	vmovapd	%zmm15, 448(%rsp)	# tmp665, result1
# /box/cp.cc:362:             double8_t result2 = d8zero;
	vmovapd	%zmm15, 512(%rsp)	# tmp665, result2
# /box/cp.cc:363:             double8_t result3 = d8zero;
	vmovapd	%zmm15, 576(%rsp)	# tmp665, result3
# /box/cp.cc:364:             double8_t result4 = d8zero;
	vmovapd	%zmm15, 640(%rsp)	# tmp665, result4
# /box/cp.cc:365:             double8_t result5 = d8zero;
	vmovapd	%zmm15, 704(%rsp)	# tmp665, result5
# /box/cp.cc:366:             double8_t result6 = d8zero;
	vmovapd	%zmm15, 768(%rsp)	# tmp665, result6
# /box/cp.cc:367:             double8_t result7 = d8zero;
	vmovapd	%zmm15, 832(%rsp)	# tmp665, result7
# /box/cp.cc:368:             for (int k = 0; k < vc; k++) {
	testl	%eax, %eax	#
	jle	.L132	#,
	movslq	268(%rsp), %rax	# %sfp,
# /box/cp.cc:371:                 double8_t y1 = data_[(j * 8 + 1) * vc + k];
	movl	176(%rsp), %esi	# %sfp, ivtmp.547
	movq	%rax, %rdx	#,
	salq	$6, %rax	#, ivtmp.514
	movq	%rax, 336(%rsp)	# ivtmp.514, %sfp
	movl	180(%rsp), %eax	# %sfp, tmp770
# /box/cp.cc:374:                 double8_t y4 = data_[(j * 8 + 4) * vc + k];
	movl	192(%rsp), %r11d	# %sfp, tmp779
# /box/cp.cc:371:                 double8_t y1 = data_[(j * 8 + 1) * vc + k];
	subl	%esi, %eax	# ivtmp.547, tmp770
	addl	%edx, %eax	# ivtmp.514, tmp771
	cltq
	salq	$6, %rax	#, tmp772
	movq	%rax, 344(%rsp)	# tmp772, %sfp
# /box/cp.cc:372:                 double8_t y2 = data_[(j * 8 + 2) * vc + k];
	movl	184(%rsp), %eax	# %sfp, tmp773
# /box/cp.cc:375:                 double8_t y5 = data_[(j * 8 + 5) * vc + k];
	movl	196(%rsp), %r10d	# %sfp, tmp782
# /box/cp.cc:372:                 double8_t y2 = data_[(j * 8 + 2) * vc + k];
	subl	%esi, %eax	# ivtmp.547, tmp773
	addl	%edx, %eax	# ivtmp.514, tmp774
	cltq
	salq	$6, %rax	#, tmp775
	movq	%rax, 352(%rsp)	# tmp775, %sfp
# /box/cp.cc:373:                 double8_t y3 = data_[(j * 8 + 3) * vc + k];
	movl	188(%rsp), %eax	# %sfp, tmp776
# /box/cp.cc:374:                 double8_t y4 = data_[(j * 8 + 4) * vc + k];
	subl	%esi, %r11d	# ivtmp.547, tmp779
# /box/cp.cc:373:                 double8_t y3 = data_[(j * 8 + 3) * vc + k];
	subl	%esi, %eax	# ivtmp.547, tmp776
	addl	%edx, %eax	# ivtmp.514, tmp777
	cltq
	salq	$6, %rax	#, tmp778
	movq	%rax, 360(%rsp)	# tmp778, %sfp
# /box/cp.cc:376:                 double8_t y6 = data_[(j * 8 + 6) * vc + k];
	movl	200(%rsp), %eax	# %sfp, tmp785
# /box/cp.cc:375:                 double8_t y5 = data_[(j * 8 + 5) * vc + k];
	subl	%esi, %r10d	# ivtmp.547, tmp782
# /box/cp.cc:376:                 double8_t y6 = data_[(j * 8 + 6) * vc + k];
	subl	%esi, %eax	# ivtmp.547, tmp785
	addl	%edx, %eax	# ivtmp.514, tmp786
	cltq
	salq	$6, %rax	#, tmp787
	movq	%rax, 256(%rsp)	# tmp787, %sfp
# /box/cp.cc:377:                 double8_t y7 = data_[(j * 8 + 7) * vc + k];
	movl	204(%rsp), %eax	# %sfp, tmp788
# /box/cp.cc:374:                 double8_t y4 = data_[(j * 8 + 4) * vc + k];
	addl	%edx, %r11d	# ivtmp.514, tmp780
# /box/cp.cc:377:                 double8_t y7 = data_[(j * 8 + 7) * vc + k];
	subl	%esi, %eax	# ivtmp.547, tmp788
	addl	%edx, %eax	# ivtmp.514, tmp789
	cltq
	movq	%rax, %rsi	# tmp790, tmp790
	movq	144(%rsp), %rax	# %sfp, _1091
# /box/cp.cc:375:                 double8_t y5 = data_[(j * 8 + 5) * vc + k];
	addl	%edx, %r10d	# ivtmp.514, tmp783
# /box/cp.cc:377:                 double8_t y7 = data_[(j * 8 + 7) * vc + k];
	movq	%rax, 328(%rsp)	# _1091, %sfp
	movl	%ebx, 248(%rsp)	# ivtmp.513, %sfp
	movslq	%r11d, %r11	# tmp780, tmp781
	movslq	%r10d, %r10	# tmp783, tmp784
	salq	$6, %rsi	#, tmp790
	movq	152(%rsp), %r13	# %sfp, _1065
	movq	136(%rsp), %r9	# %sfp, _1068
	movq	128(%rsp), %r8	# %sfp, _1071
	movq	120(%rsp), %r12	# %sfp, _1085
	movq	112(%rsp), %r14	# %sfp, _1088
	movq	256(%rsp), %rbx	# %sfp, _1076
	movl	%ecx, 252(%rsp)	# ny, %sfp
	salq	$6, %r11	#, _1053
	salq	$6, %r10	#, _1078
	xorl	%edx, %edx	# ivtmp.499
	movq	%rsi, %rcx	# _1074, _1074
	.p2align 4,,10
	.p2align 3
.L131:
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	8(%rdi), %rax	# *.omp_data_i_13(D).data_, *.omp_data_i_13(D).data_
# /box/cp.cc:370:                 double8_t y0 = data_[(j * 8 + 0) * vc + k];
	movq	(%rax), %rsi	# *_174.D.109126._M_impl.D.108433._M_start, tmp792
	addq	%rdx, %rsi	# ivtmp.499, tmp792
	movq	%rsi, %rax	# tmp792, tmp792
	movq	336(%rsp), %rsi	# %sfp, _1061
# /box/cp.cc:374:                 double8_t y4 = data_[(j * 8 + 4) * vc + k];
	vmovapd	(%rax,%r11), %zmm5	# *_329, y4.54_201
# /box/cp.cc:370:                 double8_t y0 = data_[(j * 8 + 0) * vc + k];
	vmovapd	(%rax,%rsi), %zmm7	# *_338, y0.50_175
# /box/cp.cc:371:                 double8_t y1 = data_[(j * 8 + 1) * vc + k];
	movq	344(%rsp), %rsi	# %sfp, _1059
# /box/cp.cc:375:                 double8_t y5 = data_[(j * 8 + 5) * vc + k];
	vmovapd	(%rax,%r10), %zmm9	# *_327, y5.55_208
# /box/cp.cc:371:                 double8_t y1 = data_[(j * 8 + 1) * vc + k];
	vmovapd	(%rax,%rsi), %zmm11	# *_335, y1.51_182
# /box/cp.cc:372:                 double8_t y2 = data_[(j * 8 + 2) * vc + k];
	movq	352(%rsp), %rsi	# %sfp, _1057
# /box/cp.cc:376:                 double8_t y6 = data_[(j * 8 + 6) * vc + k];
	vmovapd	(%rax,%rbx), %zmm4	# *_325, y6.56_214
# /box/cp.cc:372:                 double8_t y2 = data_[(j * 8 + 2) * vc + k];
	vmovapd	(%rax,%rsi), %zmm6	# *_333, y2.52_188
# /box/cp.cc:373:                 double8_t y3 = data_[(j * 8 + 3) * vc + k];
	movq	360(%rsp), %rsi	# %sfp, _1055
# /box/cp.cc:377:                 double8_t y7 = data_[(j * 8 + 7) * vc + k];
	vmovapd	(%rax,%rcx), %zmm8	# *_323, y7.57_220
# /box/cp.cc:373:                 double8_t y3 = data_[(j * 8 + 3) * vc + k];
	vmovapd	(%rax,%rsi), %zmm10	# *_331, y3.53_194
# /box/cp.cc:379:                 asm("#start");
#APP
# 379 "/box/cp.cc" 1
	#start
# 0 "" 2
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
#NO_APP
	movq	8(%rdi), %rax	# *.omp_data_i_13(D).data_, *.omp_data_i_13(D).data_
# /box/cp.cc:380:                 x0 = data_[(i * 8 + 0) * vc + k];
	movq	(%rax), %rsi	# *_227.D.109126._M_impl.D.108433._M_start, tmp809
	addq	%rdx, %rsi	# ivtmp.499, tmp809
	vmovapd	(%rsi,%r8), %zmm12	# *_321, x0.58_228
	movq	%rsi, %rax	# tmp809, tmp809
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x0.58_228, y0.50_175, _621
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x0.58_228, y1.51_182, _623
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x0.58_228, y3.53_194, _630
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _621, tmp811
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _623, tmp1430, tmp811
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _623, tmp1431, tmp816
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp816, tmp811, _626
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x0.58_228, y2.52_188, _628
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _628, tmp821
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _630, tmp1430, tmp821
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _630, tmp1431, tmp826
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp826, tmp821, _633
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _626, tmp831
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x0.58_228, y5.55_208, _640
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _633, tmp1433, tmp836
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _633, tmp1432, tmp831
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x0.58_228, y4.54_201, _638
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp836, tmp831, _636
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _638, tmp841
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _640, tmp1430, tmp841
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _640, tmp1431, tmp846
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x0.58_228, y6.56_214, _645
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x0.58_228, y7.57_220, _647
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp846, tmp841, _643
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _645, tmp851
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _647, tmp1430, tmp851
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _647, tmp1431, tmp856
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp856, tmp851, _650
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _643, tmp861
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _650, tmp1432, tmp861
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _650, tmp1433, tmp866
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp866, tmp861, _653
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _636, tmp871
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _653, tmp1434, tmp871
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _653, tmp1435, tmp876
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp876, tmp871, tmp881
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	384(%rsp), %zmm12, %zmm12	# result0, tmp881, tmp882
	vmovapd	%zmm12, 384(%rsp)	# tmp882, result0
# /box/cp.cc:382:                 x1 = data_[(i * 8 + 1) * vc + k];
	vmovapd	(%rsi,%r9), %zmm12	# *_318, x1.59_236
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x1.59_236, y0.50_175, _581
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x1.59_236, y1.51_182, _583
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x1.59_236, y3.53_194, _590
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _581, tmp885
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _583, tmp1430, tmp885
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _583, tmp1431, tmp890
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp890, tmp885, _586
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x1.59_236, y2.52_188, _588
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _588, tmp895
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _590, tmp1430, tmp895
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _590, tmp1431, tmp900
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp900, tmp895, _593
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _586, tmp905
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x1.59_236, y5.55_208, _600
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _593, tmp1433, tmp910
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _593, tmp1432, tmp905
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x1.59_236, y4.54_201, _598
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp910, tmp905, _596
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _598, tmp915
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _600, tmp1430, tmp915
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _600, tmp1431, tmp920
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x1.59_236, y6.56_214, _605
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x1.59_236, y7.57_220, _607
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp920, tmp915, _603
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _605, tmp925
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _607, tmp1430, tmp925
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _607, tmp1431, tmp930
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp930, tmp925, _610
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _603, tmp935
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _610, tmp1432, tmp935
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _610, tmp1433, tmp940
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp940, tmp935, _613
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _596, tmp945
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _613, tmp1434, tmp945
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _613, tmp1435, tmp950
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp950, tmp945, tmp955
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	448(%rsp), %zmm12, %zmm12	# result1, tmp955, tmp956
	vmovapd	%zmm12, 448(%rsp)	# tmp956, result1
# /box/cp.cc:384:                 x0 = data_[(i * 8 + 2) * vc + k];
	vmovapd	(%rsi,%r13), %zmm12	# *_316, x0.60_244
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x0.60_244, y0.50_175, _541
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x0.60_244, y1.51_182, _543
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x0.60_244, y3.53_194, _550
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _541, tmp959
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _543, tmp1430, tmp959
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _543, tmp1431, tmp964
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp964, tmp959, _546
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x0.60_244, y2.52_188, _548
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _548, tmp969
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _550, tmp1430, tmp969
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _550, tmp1431, tmp974
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp974, tmp969, _553
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _546, tmp979
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x0.60_244, y5.55_208, _560
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _553, tmp1433, tmp984
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _553, tmp1432, tmp979
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x0.60_244, y4.54_201, _558
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp984, tmp979, _556
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _558, tmp989
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _560, tmp1430, tmp989
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _560, tmp1431, tmp994
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x0.60_244, y6.56_214, _565
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x0.60_244, y7.57_220, _567
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp994, tmp989, _563
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _565, tmp999
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _567, tmp1430, tmp999
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _567, tmp1431, tmp1004
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp1004, tmp999, _570
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _563, tmp1009
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _570, tmp1432, tmp1009
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _570, tmp1433, tmp1014
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp1014, tmp1009, _573
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _556, tmp1019
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _573, tmp1434, tmp1019
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _573, tmp1435, tmp1024
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp1024, tmp1019, tmp1029
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	512(%rsp), %zmm12, %zmm12	# result2, tmp1029, tmp1030
	vmovapd	%zmm12, 512(%rsp)	# tmp1030, result2
# /box/cp.cc:386:                 x1 = data_[(i * 8 + 3) * vc + k];
	vmovapd	(%rsi,%r15), %zmm12	# *_314, x1.61_252
# /box/cp.cc:388:                 x0 = data_[(i * 8 + 4) * vc + k];
	movq	328(%rsp), %rsi	# %sfp, _1091
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x1.61_252, y0.50_175, _501
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x1.61_252, y1.51_182, _503
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x1.61_252, y3.53_194, _510
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _501, tmp1033
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _503, tmp1430, tmp1033
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _503, tmp1431, tmp1038
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp1038, tmp1033, _506
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x1.61_252, y2.52_188, _508
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _508, tmp1043
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _510, tmp1430, tmp1043
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _510, tmp1431, tmp1048
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp1048, tmp1043, _513
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _506, tmp1053
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x1.61_252, y5.55_208, _520
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _513, tmp1433, tmp1058
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _513, tmp1432, tmp1053
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x1.61_252, y4.54_201, _518
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp1058, tmp1053, _516
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _518, tmp1063
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _520, tmp1430, tmp1063
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _520, tmp1431, tmp1068
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x1.61_252, y6.56_214, _525
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x1.61_252, y7.57_220, _527
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp1068, tmp1063, _523
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _525, tmp1073
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _527, tmp1430, tmp1073
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _527, tmp1431, tmp1078
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp1078, tmp1073, _530
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _523, tmp1083
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _530, tmp1432, tmp1083
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _530, tmp1433, tmp1088
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp1088, tmp1083, _533
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _516, tmp1093
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _533, tmp1434, tmp1093
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _533, tmp1435, tmp1098
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp1098, tmp1093, tmp1103
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	576(%rsp), %zmm12, %zmm12	# result3, tmp1103, tmp1104
	vmovapd	%zmm12, 576(%rsp)	# tmp1104, result3
# /box/cp.cc:388:                 x0 = data_[(i * 8 + 4) * vc + k];
	vmovapd	(%rax,%rsi), %zmm12	# *_312, x0.62_260
# /box/cp.cc:394:                 x1 = data_[(i * 8 + 7) * vc + k];
	movq	320(%rsp), %rsi	# %sfp, _1082
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x0.62_260, y0.50_175, _461
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x0.62_260, y1.51_182, _463
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x0.62_260, y3.53_194, _470
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _461, tmp1107
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _463, tmp1430, tmp1107
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _463, tmp1431, tmp1112
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp1112, tmp1107, _466
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x0.62_260, y2.52_188, _468
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _468, tmp1117
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _470, tmp1430, tmp1117
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _470, tmp1431, tmp1122
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp1122, tmp1117, _473
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _466, tmp1127
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x0.62_260, y5.55_208, _480
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _473, tmp1433, tmp1132
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _473, tmp1432, tmp1127
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x0.62_260, y4.54_201, _478
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp1132, tmp1127, _476
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _478, tmp1137
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _480, tmp1430, tmp1137
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _480, tmp1431, tmp1142
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x0.62_260, y6.56_214, _485
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x0.62_260, y7.57_220, _487
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp1142, tmp1137, _483
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _485, tmp1147
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _487, tmp1430, tmp1147
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _487, tmp1431, tmp1152
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp1152, tmp1147, _490
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _483, tmp1157
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _490, tmp1432, tmp1157
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _490, tmp1433, tmp1162
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp1162, tmp1157, _493
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _476, tmp1167
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _493, tmp1434, tmp1167
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _493, tmp1435, tmp1172
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp1172, tmp1167, tmp1177
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	640(%rsp), %zmm12, %zmm12	# result4, tmp1177, tmp1178
	vmovapd	%zmm12, 640(%rsp)	# tmp1178, result4
# /box/cp.cc:390:                 x1 = data_[(i * 8 + 5) * vc + k];
	vmovapd	(%rax,%r14), %zmm12	# *_310, x1.63_268
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x1.63_268, y0.50_175, _421
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x1.63_268, y1.51_182, _423
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x1.63_268, y3.53_194, _430
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _421, tmp1181
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _423, tmp1430, tmp1181
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _423, tmp1431, tmp1186
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp1186, tmp1181, _426
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x1.63_268, y2.52_188, _428
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _428, tmp1191
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _430, tmp1430, tmp1191
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _430, tmp1431, tmp1196
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp1196, tmp1191, _433
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _426, tmp1201
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x1.63_268, y5.55_208, _440
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _433, tmp1433, tmp1206
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _433, tmp1432, tmp1201
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x1.63_268, y4.54_201, _438
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp1206, tmp1201, _436
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _438, tmp1211
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _440, tmp1430, tmp1211
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _440, tmp1431, tmp1216
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x1.63_268, y6.56_214, _445
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x1.63_268, y7.57_220, _447
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp1216, tmp1211, _443
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _445, tmp1221
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _447, tmp1430, tmp1221
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _447, tmp1431, tmp1226
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp1226, tmp1221, _450
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _443, tmp1231
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _450, tmp1432, tmp1231
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _450, tmp1433, tmp1236
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp1236, tmp1231, _453
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _436, tmp1241
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _453, tmp1434, tmp1241
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _453, tmp1435, tmp1246
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp1246, tmp1241, tmp1251
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	704(%rsp), %zmm12, %zmm12	# result5, tmp1251, tmp1252
	vmovapd	%zmm12, 704(%rsp)	# tmp1252, result5
# /box/cp.cc:392:                 x0 = data_[(i * 8 + 6) * vc + k];
	vmovapd	(%rax,%r12), %zmm12	# *_308, x0.64_276
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm16	# x0.64_276, y0.50_175, _381
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm18	# x0.64_276, y1.51_182, _383
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm19	# x0.64_276, y3.53_194, _390
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm17	# _381, tmp1255
	vpermt2pd	%zmm18, %zmm1, %zmm17	# _383, tmp1430, tmp1255
	vpermt2pd	%zmm18, %zmm0, %zmm16	# _383, tmp1431, tmp1260
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm16, %zmm17, %zmm17	# tmp1260, tmp1255, _386
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm16	# x0.64_276, y2.52_188, _388
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm18	# _388, tmp1265
	vpermt2pd	%zmm19, %zmm1, %zmm18	# _390, tmp1430, tmp1265
	vpermt2pd	%zmm19, %zmm0, %zmm16	# _390, tmp1431, tmp1270
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm16, %zmm18, %zmm18	# tmp1270, tmp1265, _393
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm16	# _386, tmp1275
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm19	# x0.64_276, y5.55_208, _400
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _393, tmp1433, tmp1280
	vpermt2pd	%zmm18, %zmm3, %zmm16	# _393, tmp1432, tmp1275
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm18	# x0.64_276, y4.54_201, _398
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm17, %zmm16, %zmm16	# tmp1280, tmp1275, _396
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm18, %zmm17	# _398, tmp1285
	vpermt2pd	%zmm19, %zmm1, %zmm17	# _400, tmp1430, tmp1285
	vpermt2pd	%zmm19, %zmm0, %zmm18	# _400, tmp1431, tmp1290
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm19	# x0.64_276, y6.56_214, _405
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm12	# x0.64_276, y7.57_220, _407
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm18, %zmm17, %zmm17	# tmp1290, tmp1285, _403
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm19, %zmm18	# _405, tmp1295
	vpermt2pd	%zmm12, %zmm1, %zmm18	# _407, tmp1430, tmp1295
	vpermt2pd	%zmm12, %zmm0, %zmm19	# _407, tmp1431, tmp1300
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm19, %zmm18, %zmm18	# tmp1300, tmp1295, _410
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm17, %zmm12	# _403, tmp1305
	vpermt2pd	%zmm18, %zmm3, %zmm12	# _410, tmp1432, tmp1305
	vpermt2pd	%zmm18, %zmm2, %zmm17	# _410, tmp1433, tmp1310
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm17, %zmm12, %zmm17	# tmp1310, tmp1305, _413
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm16, %zmm12	# _396, tmp1315
	vpermt2pd	%zmm17, %zmm14, %zmm12	# _413, tmp1434, tmp1315
	vpermt2pd	%zmm17, %zmm13, %zmm16	# _413, tmp1435, tmp1320
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm16, %zmm12, %zmm12	# tmp1320, tmp1315, tmp1325
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	768(%rsp), %zmm12, %zmm12	# result6, tmp1325, tmp1326
	vmovapd	%zmm12, 768(%rsp)	# tmp1326, result6
# /box/cp.cc:394:                 x1 = data_[(i * 8 + 7) * vc + k];
	vmovapd	(%rax,%rsi), %zmm12	# *_306, x1.65_283
# /box/cp.cc:111:     prod0 = A * B0;
	vmulpd	%zmm12, %zmm7, %zmm7	# x1.65_283, y0.50_175, _341
# /box/cp.cc:112:     prod1 = A * B1;
	vmulpd	%zmm12, %zmm11, %zmm11	# x1.65_283, y1.51_182, _343
# /box/cp.cc:119:     prod0 = A * B2;
	vmulpd	%zmm12, %zmm6, %zmm6	# x1.65_283, y2.52_188, _348
# /box/cp.cc:120:     prod1 = A * B3;
	vmulpd	%zmm12, %zmm10, %zmm10	# x1.65_283, y3.53_194, _350
# /box/cp.cc:133:     prod0 = A * B4;
	vmulpd	%zmm12, %zmm5, %zmm5	# x1.65_283, y4.54_201, _358
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm7, %zmm16	# _341, tmp1329
	vpermt2pd	%zmm11, %zmm1, %zmm16	# _343, tmp1430, tmp1329
	vpermt2pd	%zmm11, %zmm0, %zmm7	# _343, tmp1431, tmp1334
	vmovapd	%zmm6, %zmm11	# _348, tmp1339
# /box/cp.cc:118:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm7, %zmm16, %zmm7	# tmp1334, tmp1329, _346
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vpermt2pd	%zmm10, %zmm0, %zmm6	# _350, tmp1431, tmp1344
	vpermt2pd	%zmm10, %zmm1, %zmm11	# _350, tmp1430, tmp1339
# /box/cp.cc:126:     tmp4 = tmp4 + tmp5;
	vaddpd	%zmm6, %zmm11, %zmm10	# tmp1344, tmp1339, _353
# /box/cp.cc:134:     prod1 = A * B5;
	vmulpd	%zmm12, %zmm9, %zmm9	# x1.65_283, y5.55_208, _360
# /box/cp.cc:141:     prod0 = A * B6;
	vmulpd	%zmm12, %zmm4, %zmm4	# x1.65_283, y6.56_214, _365
# /box/cp.cc:142:     prod1 = A * B7;
	vmulpd	%zmm12, %zmm8, %zmm8	# x1.65_283, y7.57_220, _367
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm7, %zmm6	# _346, tmp1349
	vpermt2pd	%zmm10, %zmm3, %zmm6	# _353, tmp1432, tmp1349
	vpermt2pd	%zmm10, %zmm2, %zmm7	# _353, tmp1433, tmp1354
# /box/cp.cc:132:     tmp4 = tmp2 + tmp3;
	vaddpd	%zmm7, %zmm6, %zmm6	# tmp1354, tmp1349, _356
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm5, %zmm7	# _358, tmp1359
	vpermt2pd	%zmm9, %zmm1, %zmm7	# _360, tmp1430, tmp1359
	vpermt2pd	%zmm9, %zmm0, %zmm5	# _360, tmp1431, tmp1364
# /box/cp.cc:140:     tmp0 = tmp0 + tmp1;
	vaddpd	%zmm5, %zmm7, %zmm5	# tmp1364, tmp1359, _363
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm4, %zmm7	# _365, tmp1369
	vpermt2pd	%zmm8, %zmm1, %zmm7	# _367, tmp1430, tmp1369
	vpermt2pd	%zmm8, %zmm0, %zmm4	# _367, tmp1431, tmp1374
# /box/cp.cc:148:     tmp2 = tmp2 + tmp3;
	vaddpd	%zmm4, %zmm7, %zmm7	# tmp1374, tmp1369, _370
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm5, %zmm4	# _363, tmp1379
	vpermt2pd	%zmm7, %zmm3, %zmm4	# _370, tmp1432, tmp1379
	vpermt2pd	%zmm7, %zmm2, %zmm5	# _370, tmp1433, tmp1384
# /box/cp.cc:154:     tmp5 = tmp3 + tmp5;
	vaddpd	%zmm5, %zmm4, %zmm5	# tmp1384, tmp1379, _373
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6714:   return (__m512d) __builtin_ia32_vpermt2varpd512_mask ((__v8di) __I
	vmovapd	%zmm6, %zmm4	# _356, tmp1389
	vpermt2pd	%zmm5, %zmm14, %zmm4	# _373, tmp1434, tmp1389
	vpermt2pd	%zmm5, %zmm13, %zmm6	# _373, tmp1435, tmp1394
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	%zmm6, %zmm4, %zmm4	# tmp1394, tmp1389, tmp1399
# /box/cp.cc:159:     result += tmp2 + tmp3;
	vaddpd	832(%rsp), %zmm4, %zmm4	# result7, tmp1399, tmp1400
	vmovapd	%zmm4, 832(%rsp)	# tmp1400, result7
# /box/cp.cc:396:                 asm("#end");
#APP
# 396 "/box/cp.cc" 1
	#end
# 0 "" 2
# /box/cp.cc:368:             for (int k = 0; k < vc; k++) {
#NO_APP
	movq	312(%rsp), %rax	# %sfp, _1080
	addq	$64, %rdx	#, ivtmp.499
	cmpq	%rax, %rdx	# _1080, ivtmp.499
	jne	.L131	#,
	movl	252(%rsp), %ecx	# %sfp, ny
	movl	248(%rsp), %ebx	# %sfp, ivtmp.513
.L132:
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	movl	288(%rsp), %eax	# %sfp, ivtmp.541
	movq	%rdi, 336(%rsp)	# .omp_data_i, %sfp
	leal	(%rax,%rbx), %r10d	#, _604
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movl	212(%rsp), %eax	# %sfp, _539
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	movq	16(%rdi), %r11	# *.omp_data_i_13(D).xbar_xi_sq, _50
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	addl	%ebx, %eax	# ivtmp.513, _542
	movl	%eax, 360(%rsp)	# _542, %sfp
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movl	208(%rsp), %eax	# %sfp, _557
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movq	272(%rsp), %rdx	# %sfp, ivtmp.477
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	addl	%ebx, %eax	# ivtmp.513, _564
	movl	%eax, 352(%rsp)	# _564, %sfp
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movl	216(%rsp), %eax	# %sfp, _499
	movq	160(%rsp), %r12	# %sfp, result
	addl	%ebx, %eax	# ivtmp.513, _502
	movl	236(%rsp), %esi	# %sfp, ivtmp.528
	movl	%eax, 344(%rsp)	# _502, %sfp
	xorl	%eax, %eax	# ivtmp.456
	.p2align 4,,10
	.p2align 3
.L125:
# /box/cp.cc:415:                 if (j * 8 + k >= ny) continue;
	leal	(%rbx,%rax), %r9d	#, tmp673
	cmpl	%r9d, %ecx	# tmp673, ny
	jle	.L130	#,
# /box/cp.cc:417:                 if (i * 8 + 0 >= ny) continue;
	cmpl	%esi, %ecx	# ivtmp.528, ny
	jle	.L130	#,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%r11), %r9	# *_50.D.110197._M_impl.D.109541._M_start, _259
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	movq	296(%rsp), %r14	# %sfp, _251
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	vmovsd	(%r9,%rdx), %xmm5	# *_267, _54
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	vmovsd	384(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result0 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result0 + ivtmp.456_1004 * 8]
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	leal	(%r10,%rax), %r13d	#, tmp674
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14), %xmm4, %xmm4	# *_243, MEM <double> [(vector(8) double *)&result0 + ivtmp.456_1004 * 8], tmp677
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp677, tmp679
# /box/cp.cc:421:                 if (i * 8 + 1 >= ny) continue;
	movl	308(%rsp), %r14d	# %sfp, ivtmp.529
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	movslq	%r13d, %r13	# tmp674, tmp675
# /box/cp.cc:420:                 result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp679, tmp682
	vmovss	%xmm4, (%r12,%r13,4)	# tmp682, *_62
# /box/cp.cc:421:                 if (i * 8 + 1 >= ny) continue;
	cmpl	%r14d, %ecx	# ivtmp.529, ny
	jle	.L130	#,
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movl	360(%rsp), %r14d	# %sfp, _542
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	vmovsd	448(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result1 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result1 + ivtmp.456_1004 * 8]
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	leal	(%r14,%rax), %r13d	#, tmp683
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movq	280(%rsp), %r14	# %sfp, _207
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	movslq	%r13d, %r13	# tmp683, tmp684
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14), %xmm4, %xmm4	# *_200, MEM <double> [(vector(8) double *)&result1 + ivtmp.456_1004 * 8], tmp686
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp686, tmp688
# /box/cp.cc:426:                 if (i * 8 + 2 >= ny) continue;
	movl	292(%rsp), %r14d	# %sfp, ivtmp.530
# /box/cp.cc:424:                 result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp688, tmp691
	vmovss	%xmm4, (%r12,%r13,4)	# tmp691, *_78
# /box/cp.cc:426:                 if (i * 8 + 2 >= ny) continue;
	cmpl	%r14d, %ecx	# ivtmp.530, ny
	jle	.L130	#,
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movl	352(%rsp), %r14d	# %sfp, _564
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	vmovsd	512(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result2 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result2 + ivtmp.456_1004 * 8]
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	leal	(%r14,%rax), %r13d	#, tmp692
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movq	240(%rsp), %r14	# %sfp, _159
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	movslq	%r13d, %r13	# tmp692, tmp693
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14), %xmm4, %xmm4	# *_156, MEM <double> [(vector(8) double *)&result2 + ivtmp.456_1004 * 8], tmp695
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp695, tmp697
# /box/cp.cc:429:                 if (i * 8 + 3 >= ny) continue;
	movl	264(%rsp), %r14d	# %sfp, _247
# /box/cp.cc:428:                 result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp697, tmp700
	vmovss	%xmm4, (%r12,%r13,4)	# tmp700, *_92
# /box/cp.cc:429:                 if (i * 8 + 3 >= ny) continue;
	cmpl	%r14d, %ecx	# _247, ny
	jle	.L130	#,
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movl	344(%rsp), %r14d	# %sfp, _502
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	vmovsd	576(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result3 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result3 + ivtmp.456_1004 * 8]
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	leal	(%r14,%rax), %r13d	#, tmp701
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movq	224(%rsp), %r14	# %sfp, _115
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	movslq	%r13d, %r13	# tmp701, tmp702
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14), %xmm4, %xmm4	# *_112, MEM <double> [(vector(8) double *)&result3 + ivtmp.456_1004 * 8], tmp704
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp704, tmp706
# /box/cp.cc:432:                 if (i * 8 + 4 >= ny) continue;
	movslq	232(%rsp), %r14	# %sfp,
# /box/cp.cc:431:                 result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp706, tmp709
	vmovss	%xmm4, (%r12,%r13,4)	# tmp709, *_106
# /box/cp.cc:432:                 if (i * 8 + 4 >= ny) continue;
	cmpl	%r14d, %ecx	# _255, ny
	jle	.L130	#,
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	vmovsd	640(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result4 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result4 + ivtmp.456_1004 * 8]
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	movl	108(%rsp), %edi	# %sfp, tmp1421
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14,8), %xmm4, %xmm4	# *_68, MEM <double> [(vector(8) double *)&result4 + ivtmp.456_1004 * 8], tmp717
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp717, tmp719
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	movl	288(%rsp), %r13d	# %sfp, ivtmp.541
# /box/cp.cc:435:                 if (i * 8 + 5 >= ny) continue;
	leal	5(%rsi), %r14d	#, _125
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	addl	%edi, %r13d	# tmp1421, tmp711
	addl	%ebx, %r13d	# ivtmp.513, tmp712
	addl	%eax, %r13d	# _1014, tmp713
	movslq	%r13d, %r13	# tmp713, tmp714
# /box/cp.cc:434:                 result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp719, tmp722
	vmovss	%xmm4, (%r12,%r13,4)	# tmp722, *_122
# /box/cp.cc:435:                 if (i * 8 + 5 >= ny) continue;
	cmpl	%r14d, %ecx	# _125, ny
	jle	.L130	#,
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	vmovsd	704(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result5 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result5 + ivtmp.456_1004 * 8]
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	movslq	%r14d, %r14	# _125, _125
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14,8), %xmm4, %xmm4	# *_300, MEM <double> [(vector(8) double *)&result5 + ivtmp.456_1004 * 8], tmp732
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp732, tmp734
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	movl	104(%rsp), %edi	# %sfp, tmp1423
# /box/cp.cc:438:                 if (i * 8 + 6 >= ny) continue;
	leal	6(%rsi), %r14d	#, _139
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	leal	(%rdi,%rbx), %r13d	#, tmp727
	addl	%eax, %r13d	# _1014, tmp728
	movslq	%r13d, %r13	# tmp728, tmp729
# /box/cp.cc:437:                 result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp734, tmp737
	vmovss	%xmm4, (%r12,%r13,4)	# tmp737, *_136
# /box/cp.cc:438:                 if (i * 8 + 6 >= ny) continue;
	cmpl	%r14d, %ecx	# _139, ny
	jle	.L130	#,
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	vmovsd	768(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result6 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result6 + ivtmp.456_1004 * 8]
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	movslq	%r14d, %r14	# _139, _139
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14,8), %xmm4, %xmm4	# *_302, MEM <double> [(vector(8) double *)&result6 + ivtmp.456_1004 * 8], tmp748
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp748, tmp750
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	movl	100(%rsp), %edi	# %sfp, tmp1410
# /box/cp.cc:441:                 if (i * 8 + 7 >= ny) continue;
	leal	7(%rsi), %r14d	#, _153
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	leal	(%rdi,%rcx), %r13d	#, tmp740
	movl	288(%rsp), %edi	# %sfp, ivtmp.541
	leal	(%rdi,%r13,2), %r13d	#, tmp742
	addl	%ebx, %r13d	# ivtmp.513, tmp743
	addl	%eax, %r13d	# _1014, tmp744
	movslq	%r13d, %r13	# tmp744, tmp745
# /box/cp.cc:440:                 result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp750, tmp753
	vmovss	%xmm4, (%r12,%r13,4)	# tmp753, *_150
# /box/cp.cc:441:                 if (i * 8 + 7 >= ny) continue;
	cmpl	%r14d, %ecx	# _153, ny
	jle	.L130	#,
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	vmovsd	832(%rsp,%rax,8), %xmm4	# MEM <double> [(vector(8) double *)&result7 + ivtmp.456_1004 * 8], MEM <double> [(vector(8) double *)&result7 + ivtmp.456_1004 * 8]
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	movslq	%r14d, %r14	# _153, _153
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	vdivsd	(%r9,%r14,8), %xmm4, %xmm4	# *_304, MEM <double> [(vector(8) double *)&result7 + ivtmp.456_1004 * 8], tmp763
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	vdivsd	%xmm5, %xmm4, %xmm4	# _54, tmp763, tmp765
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	movl	96(%rsp), %r13d	# %sfp, tmp756
	subl	%ecx, %r13d	# ny, tmp756
	addl	%edi, %r13d	# ivtmp.541, tmp757
	addl	%ebx, %r13d	# ivtmp.513, tmp758
	addl	%eax, %r13d	# _1014, tmp759
	movslq	%r13d, %r13	# tmp759, tmp760
# /box/cp.cc:443:                 result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
	vcvtsd2ss	%xmm4, %xmm4, %xmm4	# tmp765, tmp768
	vmovss	%xmm4, (%r12,%r13,4)	# tmp768, *_166
	.p2align 4,,10
	.p2align 3
.L130:
# /box/cp.cc:414:             for (int k = 0; k < vs; k++) {
	incq	%rax	# ivtmp.456
	addq	$8, %rdx	#, ivtmp.477
	cmpq	$8, %rax	#, ivtmp.456
	jne	.L125	#,
# /box/cp.cc:359:         for (int j = i; j < nc; j++) {
	incl	304(%rsp)	# %sfp
# /box/cp.cc:359:         for (int j = i; j < nc; j++) {
	movl	220(%rsp), %esi	# %sfp, _774
	addq	$64, 272(%rsp)	#, %sfp
	addl	%esi, 268(%rsp)	# _774, %sfp
# /box/cp.cc:359:         for (int j = i; j < nc; j++) {
	movl	304(%rsp), %eax	# %sfp, j
	movq	336(%rsp), %rdi	# %sfp, .omp_data_i
# /box/cp.cc:359:         for (int j = i; j < nc; j++) {
	addl	$8, %ebx	#, ivtmp.513
	cmpl	%eax, 172(%rsp)	# j, %sfp
	jg	.L121	#,
	addl	$8, 236(%rsp)	#, %sfp
	movl	%esi, %eax	# _774, _774
	movl	92(%rsp), %ebx	# %sfp, i
	addl	%eax, 176(%rsp)	# _774, %sfp
	addl	%eax, 180(%rsp)	# _774, %sfp
	addl	%eax, 184(%rsp)	# _774, %sfp
	addl	%eax, 188(%rsp)	# _774, %sfp
	addl	%eax, 192(%rsp)	# _774, %sfp
	addl	%eax, 196(%rsp)	# _774, %sfp
	addl	%eax, 200(%rsp)	# _774, %sfp
	addl	%eax, 204(%rsp)	# _774, %sfp
	movq	80(%rsp), %r9	# %sfp, ivtmp.545
	movl	96(%rsp), %esi	# %sfp, tmp1411
	movl	76(%rsp), %eax	# %sfp, _1148
	incl	%ebx	# i
	addl	$8, 308(%rsp)	#, %sfp
	addl	$8, 292(%rsp)	#, %sfp
	addl	%esi, 288(%rsp)	# tmp1411, %sfp
	movl	236(%rsp), %edx	# %sfp, ivtmp.528
	addq	$64, %r9	#, ivtmp.545
	cmpl	%eax, %ebx	# _1148, i
	jge	.L120	#,
	leal	3(%rdx), %esi	#, _247
	movslq	%edx, %rax	# ivtmp.528, _231
	addl	$4, %edx	#, _255
	movl	%esi, 264(%rsp)	# _247, %sfp
	movl	%edx, 232(%rsp)	# _255, %sfp
	jmp	.L122	#
.L120:
	movl	%ecx, 360(%rsp)	# ny, %sfp
	movq	48(%rsp), %rsi	# %sfp,
	movq	56(%rsp), %rdi	# %sfp,
	vzeroupper
	call	GOMP_loop_nonmonotonic_dynamic_next@PLT	#
	testb	%al, %al	# tmp1440
	vmovdqa64	.LC1(%rip), %zmm1	#, tmp1430
	vmovdqa64	.LC2(%rip), %zmm0	#, tmp1431
	vmovdqa64	.LC3(%rip), %zmm3	#, tmp1432
	vmovdqa64	.LC4(%rip), %zmm2	#, tmp1433
	vmovdqa64	.LC5(%rip), %zmm14	#, tmp1434
	vmovdqa64	.LC6(%rip), %zmm13	#, tmp1435
	movl	360(%rsp), %ecx	# %sfp, ny
	jne	.L123	#,
	vzeroupper
.L119:
	call	GOMP_loop_end_nowait@PLT	#
# /box/cp.cc:357:     #pragma omp parallel for schedule (dynamic, 8)
	movq	952(%rsp), %rax	# D.125116, tmp1443
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1443
	jne	.L149	#,
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L149:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE10572:
	.size	_Z9correlateiiPKfPf._omp_fn.3, .-_Z9correlateiiPKfPf._omp_fn.3
	.p2align 4
	.globl	_Z12print_vectorDv8_d
	.type	_Z12print_vectorDv8_d, @function
_Z12print_vectorDv8_d:
.LFB9653:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14	#
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	leaq	-176(%rbp), %r14	#, ivtmp.568
	pushq	%r13	#
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
# /usr/include/c++/12/ostream:526: 	return __ostream_insert(__out, &__c, 1);
	leaq	-57(%rbp), %r13	#, tmp113
# /box/cp.cc:14: void print_vector (__m512d vector) {
	pushq	%r12	#
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	leaq	-112(%rbp), %r12	#, _2
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	pushq	%rbx	#
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	leaq	_ZSt4cout(%rip), %rbx	#, tmp112
	subq	$136, %rsp	#,
# /box/cp.cc:14: void print_vector (__m512d vector) {
	vmovapd	%zmm0, -176(%rbp)	# vector, vector
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -56(%rbp)	# tmp115, D.125141
	xorl	%eax, %eax	# tmp115
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L154:
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	vmovsd	(%r14), %xmm0	# MEM <double> [(vector(8) double * {ref-all})_15], MEM <double> [(vector(8) double * {ref-all})_15]
	movq	%rbx, %rdi	# tmp112,
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
	movb	$32, -57(%rbp)	#, MEM[(char *)_3]
	movq	%rax, %rdi	# tmp114, _8
# /usr/include/c++/12/ostream:525:       if (__out.width() != 0)
	movq	(%rax), %rax	# MEM[(struct basic_ostream *)_8]._vptr.basic_ostream, MEM[(struct basic_ostream *)_8]._vptr.basic_ostream
# /usr/include/c++/12/bits/ios_base.h:756:     { return _M_width; }
	movq	-24(%rax), %rax	# MEM[(long int *)_10 + -24B], MEM[(long int *)_10 + -24B]
# /usr/include/c++/12/ostream:525:       if (__out.width() != 0)
	cmpq	$0, 16(%rdi,%rax)	#, MEM[(const struct ios_base *)_13]._M_width
	je	.L151	#,
# /usr/include/c++/12/ostream:526: 	return __ostream_insert(__out, &__c, 1);
	movl	$1, %edx	#,
	movq	%r13, %rsi	# tmp113,
# /box/cp.cc:15:     for (int i = 0; i < 8; i++) {
	addq	$8, %r14	#, ivtmp.568
# /usr/include/c++/12/ostream:526: 	return __ostream_insert(__out, &__c, 1);
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /box/cp.cc:15:     for (int i = 0; i < 8; i++) {
	cmpq	%r14, %r12	# ivtmp.568, _2
	jne	.L154	#,
.L153:
	movb	$10, -57(%rbp)	#, MEM[(char *)_3]
# /usr/include/c++/12/ostream:525:       if (__out.width() != 0)
	movq	_ZSt4cout(%rip), %rax	# cout._vptr.basic_ostream, cout._vptr.basic_ostream
# /usr/include/c++/12/bits/ios_base.h:756:     { return _M_width; }
	movq	-24(%rax), %rax	# MEM[(long int *)_19 + -24B], MEM[(long int *)_19 + -24B]
# /usr/include/c++/12/ostream:525:       if (__out.width() != 0)
	cmpq	$0, 16(%rbx,%rax)	#, MEM[(const struct ios_base *)_22]._M_width
	je	.L155	#,
# /usr/include/c++/12/ostream:526: 	return __ostream_insert(__out, &__c, 1);
	leaq	-57(%rbp), %rsi	#, tmp107
	movl	$1, %edx	#,
	movq	%rbx, %rdi	# tmp112,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
.L150:
# /box/cp.cc:19: }
	movq	-56(%rbp), %rax	# D.125141, tmp116
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	jne	.L160	#,
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L151:
	.cfi_restore_state
# /usr/include/c++/12/ostream:527:       __out.put(__c);
	movl	$32, %esi	#,
# /box/cp.cc:15:     for (int i = 0; i < 8; i++) {
	addq	$8, %r14	#, ivtmp.568
# /usr/include/c++/12/ostream:527:       __out.put(__c);
	call	_ZNSo3putEc@PLT	#
# /box/cp.cc:15:     for (int i = 0; i < 8; i++) {
	cmpq	%r14, %r12	# ivtmp.568, _2
	jne	.L154	#,
	jmp	.L153	#
	.p2align 4,,10
	.p2align 3
.L155:
# /usr/include/c++/12/ostream:527:       __out.put(__c);
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# tmp112,
	call	_ZNSo3putEc@PLT	#
# /box/cp.cc:19: }
	jmp	.L150	#
.L160:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9653:
	.size	_Z12print_vectorDv8_d, .-_Z12print_vectorDv8_d
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4
	.globl	_Z9correlateiiPKfPf
	.type	_Z9correlateiiPKfPf, @function
_Z9correlateiiPKfPf:
.LFB9663:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9663
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %r8	# tmp211, data
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
# /box/cp.cc:167:     const int vc = (nx - 1 + vs) / vs; // number of vector column
	leal	14(%rsi), %r12d	#, tmp141
# /box/cp.cc:166: void correlate(int ny, int nx, const float *data, float *result) {
	pushq	%rbx	#
	andq	$-64, %rsp	#,
	subq	$256, %rsp	#,
	.cfi_offset 3, -56
# /box/cp.cc:166: void correlate(int ny, int nx, const float *data, float *result) {
	movq	%rcx, 72(%rsp)	# tmp212, %sfp
	leaq	112(%rsp), %r15	#, tmp207
	vmovq	%r15, %xmm2	# tmp207, tmp207
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp218
	movq	%rax, 248(%rsp)	# tmp218, D.125274
	xorl	%eax, %eax	# tmp218
	leaq	144(%rsp), %rax	#, tmp138
	vpinsrq	$1, %rax, %xmm2, %xmm1	# tmp138, tmp207, _104
# /box/cp.cc:167:     const int vc = (nx - 1 + vs) / vs; // number of vector column
	movl	%esi, %eax	# nx, tmp139
	addl	$7, %eax	#, tmp139
	cmovns	%eax, %r12d	# tmp141,, tmp139, tmp140
	vmovdqa	%xmm1, 80(%rsp)	# _104, %sfp
	sarl	$3, %r12d	#, tmp142
# /box/cp.cc:168:     const int nv = nx / vs; // number of iteration using vector
	testl	%esi, %esi	# nx
	cmovns	%esi, %eax	# tmp139,, nx, nx
	sarl	$3, %eax	#, nx
	movl	%eax, 68(%rsp)	# nx, %sfp
# /box/cp.cc:169:     const int nr = nx % vs; // remander of iteration not using vector
	movl	%esi, %eax	# nx, tmp146
	sarl	$31, %eax	#, tmp146
	shrl	$29, %eax	#, tmp147
	leal	(%rsi,%rax), %edx	#, tmp148
	andl	$7, %edx	#, tmp149
	subl	%eax, %edx	# tmp147, tmp149
	movl	%edx, 64(%rsp)	# tmp149, %sfp
# /box/cp.cc:170:     const int nc = (ny + nb - 1) / nb; // number of blocks of rows
	movl	%edi, %edx	# ny, tmp151
	addl	$7, %edx	#, tmp151
	leal	14(%rdi), %eax	#, tmp153
	cmovns	%edx, %eax	# tmp153,, tmp151, tmp152
	movl	%eax, %r14d	# tmp152, tmp154
# /box/cp.cc:171:     const int np = nb * nc; // number of rows after padding
	andl	$-8, %eax	#, tmp152
# /box/cp.cc:174:     std::vector<double8_t> data_(np * vc);
	movl	%eax, %edx	# np, tmp155
	imull	%r12d, %edx	# tmp142, tmp155
# /box/cp.cc:171:     const int np = nb * nc; // number of rows after padding
	movl	%eax, 96(%rsp)	# np, %sfp
# /box/cp.cc:170:     const int nc = (ny + nb - 1) / nb; // number of blocks of rows
	sarl	$3, %r14d	#, tmp154
# /box/cp.cc:174:     std::vector<double8_t> data_(np * vc);
	movslq	%edx, %rdx	# tmp155, _4
# /usr/include/c++/12/bits/stl_vector.h:1904: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movq	%rdx, %rax	# _4, tmp219
	shrq	$57, %rax	#, tmp219
	jne	.L207	#,
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 112(%rsp)	#, MEM[(struct _Vector_impl_data *)&data_]._M_start
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 120(%rsp)	#, MEM[(struct _Vector_impl_data *)&data_]._M_finish
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 128(%rsp)	#, MEM[(struct _Vector_impl_data *)&data_]._M_end_of_storage
	movl	%edi, %r13d	# tmp209, ny
	movl	%esi, %ebx	# tmp210, nx
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rdx, %rdx	# _4
	je	.L208	#,
# /usr/include/c++/12/bits/new_allocator.h:133: 	    return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp),
	salq	$6, %rdx	#, _116
	movq	%rdx, %rdi	# _116,
	movl	$64, %esi	#,
	movq	%r8, 56(%rsp)	# data, %sfp
	movq	%rdx, 104(%rsp)	# _116, %sfp
.LEHB0:
	call	_ZnwmSt11align_val_t@PLT	#
.LEHE0:
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	104(%rsp), %rdx	# %sfp, _116
# /usr/include/c++/12/bits/stl_uninitialized.h:662: 	      ++__first;
	leaq	64(%rax), %rcx	#, __first
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	%rax, %rdx	# _117, __first
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp159
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rcx, %rdx	# __first, __first
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 112(%rsp)	# _117, MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rdx, 128(%rsp)	# __first, MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_end_of_storage
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	movq	56(%rsp), %r8	# %sfp, data
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vmovapd	%zmm0, (%rax)	# tmp159, *_117
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	je	.L202	#,
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	leaq	128(%rax), %rcx	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovapd	%zmm0, 64(%rax)	# tmp159, MEM[(vector(8) double *)_117 + 64B]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rdx, %rcx	# __first, __first
	je	.L202	#,
	.p2align 4,,10
	.p2align 3
.L167:
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovapd	(%rax), %zmm3	# MEM[(const vector(8) double &)_117], tmp234
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	addq	$64, %rcx	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovapd	%zmm3, -64(%rcx)	# tmp234, MEM[(vector(8) double *)__first_191]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rcx, %rdx	# __first, __first
	jne	.L167	#,
.L202:
	vzeroupper
.L164:
# /box/cp.cc:175:     #pragma omp parallel for
	movl	%r14d, 236(%rsp)	# tmp154, MEM[(struct .omp_data_s.66 *)_221].nc
	movl	%r12d, 232(%rsp)	# tmp142, MEM[(struct .omp_data_s.66 *)_221].vc
	movq	%r8, 208(%rsp)	# data, MEM[(struct .omp_data_s.66 *)_221].data
	movl	%ebx, 228(%rsp)	# nx, MEM[(struct .omp_data_s.66 *)_221].nx
	movl	%r13d, 224(%rsp)	# ny, MEM[(struct .omp_data_s.66 *)_221].ny
	movq	%r15, 216(%rsp)	# tmp207, MEM[(struct .omp_data_s.66 *)_221].data_
	leaq	208(%rsp), %rax	#, tmp208
	movq	%rax, %rsi	# tmp208,
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rdx, 120(%rsp)	# __first, data_.D.109126._M_impl.D.108433._M_finish
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	leaq	_Z9correlateiiPKfPf._omp_fn.0(%rip), %rdi	#, tmp164
	movq	%rax, 104(%rsp)	# tmp208, %sfp
	call	GOMP_parallel@PLT	#
# /box/cp.cc:216:     std::vector<double> ra (np); // row average
	movslq	96(%rsp), %rax	# %sfp, _5
# /usr/include/c++/12/bits/stl_vector.h:1904: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movq	%rax, %rsi	# _5, tmp220
	shrq	$60, %rsi	#, tmp220
	jne	.L209	#,
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 144(%rsp)	#, MEM[(struct _Vector_impl_data *)&ra]._M_start
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 152(%rsp)	#, MEM[(struct _Vector_impl_data *)&ra]._M_finish
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 160(%rsp)	#, MEM[(struct _Vector_impl_data *)&ra]._M_end_of_storage
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rax, %rax	# _5
	je	.L169	#,
# /usr/include/c++/12/bits/new_allocator.h:137: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	salq	$3, %rax	#, _136
	movq	%rax, %rdi	# _136,
	movq	%rax, 96(%rsp)	# _136, %sfp
.LEHB1:
	call	_Znwm@PLT	#
.LEHE1:
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	96(%rsp), %rsi	# %sfp, _136
# /usr/include/c++/12/bits/stl_uninitialized.h:662: 	      ++__first;
	leaq	8(%rax), %rdi	#, __first
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	(%rax,%rsi), %rcx	#, _108
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 144(%rsp)	# tmp167, MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rcx, 160(%rsp)	# _108, MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_end_of_storage
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	movq	$0x000000000, (%rax)	#, *_137
# /usr/include/c++/12/bits/stl_algobase.h:921:       for (; __first != __last; ++__first)
	cmpq	%rdi, %rcx	# __first, _108
	je	.L210	#,
# /usr/include/c++/12/bits/stl_algobase.h:922: 	*__first = __tmp;
	leaq	-8(%rsi), %rdx	#, tmp171
	xorl	%esi, %esi	#
	movq	%rcx, 56(%rsp)	# _108, %sfp
	call	memset@PLT	#
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	56(%rsp), %rcx	# %sfp, _108
# /box/cp.cc:217:     #pragma omp parallel for
	vmovdqa	80(%rsp), %xmm5	# %sfp, _104
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rcx, 152(%rsp)	# _108, ra.D.110197._M_impl.D.109541._M_finish
# /box/cp.cc:217:     #pragma omp parallel for
	movl	%r14d, 232(%rsp)	# tmp154, MEM[(struct .omp_data_s.67 *)_221].nc
	movl	%r12d, 228(%rsp)	# tmp142, MEM[(struct .omp_data_s.67 *)_221].vc
	movl	%ebx, 224(%rsp)	# nx, MEM[(struct .omp_data_s.67 *)_221].nx
	vmovdqa	%xmm5, 208(%rsp)	# _104, MEM <vector(2) long unsigned int> [(void *)_221]
.L206:
	movq	104(%rsp), %rsi	# %sfp,
	leaq	_Z9correlateiiPKfPf._omp_fn.1(%rip), %rdi	#, tmp177
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	call	GOMP_parallel@PLT	#
# /usr/include/c++/12/bits/new_allocator.h:137: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	96(%rsp), %rbx	# %sfp, _136
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 176(%rsp)	#, MEM[(struct _Vector_impl_data *)&xbar_xi_sq]._M_start
# /usr/include/c++/12/bits/new_allocator.h:137: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	movq	%rbx, %rdi	# _136,
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 184(%rsp)	#, MEM[(struct _Vector_impl_data *)&xbar_xi_sq]._M_finish
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 192(%rsp)	#, MEM[(struct _Vector_impl_data *)&xbar_xi_sq]._M_end_of_storage
.LEHB2:
# /usr/include/c++/12/bits/new_allocator.h:137: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE2:
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rbx, %rsi	# _136, _136
# /usr/include/c++/12/bits/stl_uninitialized.h:662: 	      ++__first;
	leaq	8(%rax), %rdi	#, __first
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	(%rax,%rbx), %rbx	#, __first
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 176(%rsp)	# tmp178, MEM[(struct _Vector_base *)&xbar_xi_sq]._M_impl.D.109541._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rbx, 192(%rsp)	# __first, MEM[(struct _Vector_base *)&xbar_xi_sq]._M_impl.D.109541._M_end_of_storage
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	movq	$0x000000000, (%rax)	#, *_158
# /usr/include/c++/12/bits/stl_algobase.h:921:       for (; __first != __last; ++__first)
	cmpq	%rdi, %rbx	# __first, __first
	je	.L172	#,
# /usr/include/c++/12/bits/stl_algobase.h:922: 	*__first = __tmp;
	subq	$8, %rsi	#, _136
	movq	%rsi, %rdx	# _136, tmp180
	xorl	%esi, %esi	#
	call	memset@PLT	#
.L172:
# /box/cp.cc:261:     #pragma omp parallel for
	movl	64(%rsp), %eax	# %sfp, tmp150
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rbx, 184(%rsp)	# __first, xbar_xi_sq.D.110197._M_impl.D.109541._M_finish
# /box/cp.cc:261:     #pragma omp parallel for
	movl	%eax, 240(%rsp)	# tmp150, MEM[(struct .omp_data_s.68 *)_221].nr
	movl	68(%rsp), %eax	# %sfp, tmp145
	leaq	176(%rsp), %rbx	#, tmp185
	vmovdqa	80(%rsp), %xmm4	# %sfp, _104
	movl	%eax, 236(%rsp)	# tmp145, MEM[(struct .omp_data_s.68 *)_221].nv
	movl	%r14d, 244(%rsp)	# tmp154, MEM[(struct .omp_data_s.68 *)_221].nc
	movl	%r12d, 232(%rsp)	# tmp142, MEM[(struct .omp_data_s.68 *)_221].vc
	movq	%rbx, 224(%rsp)	# tmp185, MEM[(struct .omp_data_s.68 *)_221].xbar_xi_sq
	movq	104(%rsp), %rsi	# %sfp,
	vmovdqa	%xmm4, 208(%rsp)	# _104, MEM <vector(2) long unsigned int> [(void *)_221]
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	leaq	_Z9correlateiiPKfPf._omp_fn.2(%rip), %rdi	#, tmp187
	call	GOMP_parallel@PLT	#
# /box/cp.cc:357:     #pragma omp parallel for schedule (dynamic, 8)
	movq	72(%rsp), %rax	# %sfp, result
	movl	%r14d, 240(%rsp)	# tmp154, MEM[(struct .omp_data_s.69 *)_221].nc
	movl	%r12d, 236(%rsp)	# tmp142, MEM[(struct .omp_data_s.69 *)_221].vc
	movq	%rax, 208(%rsp)	# result, MEM[(struct .omp_data_s.69 *)_221].result
	movl	%r13d, 232(%rsp)	# ny, MEM[(struct .omp_data_s.69 *)_221].ny
	movq	%r15, 216(%rsp)	# tmp207, MEM[(struct .omp_data_s.69 *)_221].data_
	movq	%rbx, 224(%rsp)	# tmp185, MEM[(struct .omp_data_s.69 *)_221].xbar_xi_sq
	movq	104(%rsp), %rsi	# %sfp,
	leaq	_Z9correlateiiPKfPf._omp_fn.3(%rip), %rdi	#, tmp191
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	call	GOMP_parallel@PLT	#
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	176(%rsp), %rdi	# xbar_xi_sq.D.110197._M_impl.D.109541._M_start, _70
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _70
	je	.L173	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	192(%rsp), %rsi	# MEM[(struct _Vector_base *)&xbar_xi_sq]._M_impl.D.109541._M_end_of_storage, tmp192
	subq	%rdi, %rsi	# _70, tmp192
# /usr/include/c++/12/bits/new_allocator.h:158: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L173:
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	144(%rsp), %rdi	# ra.D.110197._M_impl.D.109541._M_start, _17
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _17
	je	.L174	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	160(%rsp), %rsi	# MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_end_of_storage, tmp194
	subq	%rdi, %rsi	# _17, tmp194
# /usr/include/c++/12/bits/new_allocator.h:158: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvm@PLT	#
.L174:
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	112(%rsp), %rdi	# data_.D.109126._M_impl.D.108433._M_start, _64
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _64
	je	.L161	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	128(%rsp), %rsi	# MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_end_of_storage, tmp196
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	movl	$64, %edx	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rdi, %rsi	# _64, tmp196
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	call	_ZdlPvmSt11align_val_t@PLT	#
.L161:
# /box/cp.cc:447: }
	movq	248(%rsp), %rax	# D.125274, tmp221
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp221
	jne	.L211	#,
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L208:
	.cfi_restore_state
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	$0, 112(%rsp)	#, MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	$0, 128(%rsp)	#, MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_end_of_storage
	jmp	.L164	#
	.p2align 4,,10
	.p2align 3
.L169:
# /box/cp.cc:217:     #pragma omp parallel for
	movl	%ebx, 224(%rsp)	# nx, MEM[(struct .omp_data_s.67 *)_221].nx
	vmovdqa	80(%rsp), %xmm6	# %sfp, _104
	movl	%r14d, 232(%rsp)	# tmp154, MEM[(struct .omp_data_s.67 *)_221].nc
	movl	%r12d, 228(%rsp)	# tmp142, MEM[(struct .omp_data_s.67 *)_221].vc
	movq	104(%rsp), %rsi	# %sfp,
	vmovdqa	%xmm6, 208(%rsp)	# _104, MEM <vector(2) long unsigned int> [(void *)_221]
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	leaq	_Z9correlateiiPKfPf._omp_fn.1(%rip), %rdi	#, tmp170
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	$0, 144(%rsp)	#, MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	$0, 160(%rsp)	#, MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_end_of_storage
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	$0, 152(%rsp)	#, ra.D.110197._M_impl.D.109541._M_finish
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xorl	%ebx, %ebx	# __first
	call	GOMP_parallel@PLT	#
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	$0, 176(%rsp)	#, MEM[(struct _Vector_base *)&xbar_xi_sq]._M_impl.D.109541._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	$0, 192(%rsp)	#, MEM[(struct _Vector_base *)&xbar_xi_sq]._M_impl.D.109541._M_end_of_storage
	jmp	.L172	#
	.p2align 4,,10
	.p2align 3
.L210:
# /box/cp.cc:217:     #pragma omp parallel for
	vmovdqa	80(%rsp), %xmm7	# %sfp, _104
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rcx, 152(%rsp)	# _108, ra.D.110197._M_impl.D.109541._M_finish
# /box/cp.cc:217:     #pragma omp parallel for
	movl	%r14d, 232(%rsp)	# tmp154, MEM[(struct .omp_data_s.67 *)_221].nc
	movl	%r12d, 228(%rsp)	# tmp142, MEM[(struct .omp_data_s.67 *)_221].vc
	movl	%ebx, 224(%rsp)	# nx, MEM[(struct .omp_data_s.67 *)_221].nx
	vmovdqa	%xmm7, 208(%rsp)	# _104, MEM <vector(2) long unsigned int> [(void *)_221]
	jmp	.L206	#
.L209:
# /usr/include/c++/12/bits/stl_vector.h:1905: 	  __throw_length_error(
	leaq	.LC8(%rip), %rdi	#, tmp166
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE3:
.L211:
# /box/cp.cc:447: }
	call	__stack_chk_fail@PLT	#
.L207:
# /usr/include/c++/12/bits/stl_vector.h:1905: 	  __throw_length_error(
	leaq	.LC8(%rip), %rdi	#, tmp157
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE4:
.L183:
	endbr64	
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	%rax, %rbx	# tmp216, tmp200
	jmp	.L176	#
.L182:
	endbr64	
	movq	%rax, %rbx	# tmp217, tmp199
	vzeroupper
	jmp	.L178	#
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9663-.LLSDACSB9663
.LLSDACSB9663:
	.uleb128 .LEHB0-.LFB9663
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9663
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L182-.LFB9663
	.uleb128 0
	.uleb128 .LEHB2-.LFB9663
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L183-.LFB9663
	.uleb128 0
	.uleb128 .LEHB3-.LFB9663
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L182-.LFB9663
	.uleb128 0
	.uleb128 .LEHB4-.LFB9663
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE9663:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC9663
	.type	_Z9correlateiiPKfPf.cold, @function
_Z9correlateiiPKfPf.cold:
.LFSB9663:
.L176:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	144(%rsp), %rdi	# ra.D.110197._M_impl.D.109541._M_start, _75
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	160(%rsp), %rsi	# MEM[(struct _Vector_base *)&ra]._M_impl.D.109541._M_end_of_storage, _77
	subq	%rdi, %rsi	# _75, _77
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _75
	je	.L203	#,
# /usr/include/c++/12/bits/new_allocator.h:158: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	vzeroupper
	call	_ZdlPvm@PLT	#
.L178:
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	112(%rsp), %rdi	# data_.D.109126._M_impl.D.108433._M_start, _80
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	128(%rsp), %rsi	# MEM[(struct _Vector_base *)&data_]._M_impl.D.108433._M_end_of_storage, _82
	subq	%rdi, %rsi	# _80, _82
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _80
	je	.L179	#,
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	movl	$64, %edx	#,
	call	_ZdlPvmSt11align_val_t@PLT	#
.L179:
	movq	%rbx, %rdi	# tmp199,
.LEHB5:
	call	_Unwind_Resume@PLT	#
.LEHE5:
.L203:
	vzeroupper
	jmp	.L178	#
	.cfi_endproc
.LFE9663:
	.section	.gcc_except_table
.LLSDAC9663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC9663-.LLSDACSBC9663
.LLSDACSBC9663:
	.uleb128 .LEHB5-.LCOLDB9
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC9663:
	.section	.text.unlikely
	.text
	.size	_Z9correlateiiPKfPf, .-_Z9correlateiiPKfPf
	.section	.text.unlikely
	.size	_Z9correlateiiPKfPf.cold, .-_Z9correlateiiPKfPf.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z12print_vectorDv8_d, @function
_GLOBAL__sub_I__Z12print_vectorDv8_d:
.LFB10568:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbx	#, tmp82
	movq	%rbx, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	movq	%rbx, %rsi	# tmp82,
	leaq	__dso_handle(%rip), %rdx	#, tmp83
# /box/cp.cc:447: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE10568:
	.size	_GLOBAL__sub_I__Z12print_vectorDv8_d, .-_GLOBAL__sub_I__Z12print_vectorDv8_d
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12print_vectorDv8_d
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 64
.LC1:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	8
	.quad	9
	.quad	10
	.quad	11
	.align 64
.LC2:
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.quad	12
	.quad	13
	.quad	14
	.quad	15
	.align 64
.LC3:
	.quad	0
	.quad	1
	.quad	4
	.quad	5
	.quad	8
	.quad	9
	.quad	12
	.quad	13
	.align 64
.LC4:
	.quad	2
	.quad	3
	.quad	6
	.quad	7
	.quad	10
	.quad	11
	.quad	14
	.quad	15
	.align 64
.LC5:
	.quad	0
	.quad	2
	.quad	4
	.quad	6
	.quad	8
	.quad	10
	.quad	12
	.quad	14
	.align 64
.LC6:
	.quad	1
	.quad	3
	.quad	5
	.quad	7
	.quad	9
	.quad	11
	.quad	13
	.quad	15
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 12.3.0-1ubuntu1~22.04) 12.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
