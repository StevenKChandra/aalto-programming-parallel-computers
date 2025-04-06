Compiling to assembly
Compiling...
Compiled
Output for assembly:
	.file	"i8mm.cc"
# GNU C++20 (Ubuntu 12.3.0-1ubuntu1~22.04) version 12.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=cascadelake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mavx512f -mbmi -mbmi2 -maes -mpclmul -mavx512vl -mavx512bw -mavx512dq -mavx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=19712 -mtune=cascadelake -mno-avx512vnni -O3 -std=c++20 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.text._Z13insert_resultOiRiS0_S0_RDv8_xPi,"axG",@progbits,_Z13insert_resultOiRiS0_S0_RDv8_xPi,comdat
	.p2align 4
	.weak	_Z13insert_resultOiRiS0_S0_RDv8_xPi
	.type	_Z13insert_resultOiRiS0_S0_RDv8_xPi, @function
_Z13insert_resultOiRiS0_S0_RDv8_xPi:
.LFB9064:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %r10	# tmp343, m
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
# /box/i8mm.cc:179:     x = x_base;
	movl	(%rdi), %r11d	# *x_base_151(D), prephitmp_383
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), prephitmp_388
# /box/i8mm.cc:180:     y = y_base;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%r11d, (%rdx)	# prephitmp_383, *m_155(D)
	jle	.L17	#,
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%ebx, %eax	# prephitmp_384, pretmp_267
	jg	.L57	#,
# /box/i8mm.cc:182:     y = y_base + 1;
	leal	1(%rbx), %edx	#, y
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %eax	# y, pretmp_267
	jle	.L5	#,
.L65:
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	imull	%r11d, %eax	# prephitmp_383, tmp260
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	addl	%edx, %eax	# y, tmp261
	cltq
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	vpextrd	$1, %xmm0, (%r9,%rax,4)	#, _191, *_16
# /box/i8mm.cc:184:     y = y_base + 2;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:184:     y = y_base + 2;
	leal	2(%rbx), %edx	#, y
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %eax	# y, pretmp_267
	jle	.L7	#,
.L66:
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	imull	%r11d, %eax	# prephitmp_383, tmp264
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	addl	%edx, %eax	# y, tmp265
	cltq
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	vpextrd	$2, %xmm0, (%r9,%rax,4)	#, _191, *_24
# /box/i8mm.cc:186:     y = y_base + 3;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:186:     y = y_base + 3;
	leal	3(%rbx), %edx	#, y
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%edx, %eax	# y, pretmp_267
	jle	.L9	#,
.L67:
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	imull	%r11d, %eax	# prephitmp_383, tmp268
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	addl	%edx, %eax	# y, tmp269
	cltq
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	vpextrd	$3, %xmm0, (%r9,%rax,4)	#, _191, *_32
# /box/i8mm.cc:188:     y = y_base + 4;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), prephitmp_388
# /box/i8mm.cc:188:     y = y_base + 4;
	leal	4(%rbx), %edx	#, y
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vextracti32x4	$1, %zmm0, %xmm1	#, prephitmp_388, _162
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L10	#,
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%edx, %eax	# y, pretmp_267
	jle	.L11	#,
.L68:
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	imull	%r11d, %eax	# prephitmp_383, tmp276
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	addl	%edx, %eax	# y, tmp277
	cltq
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	vmovd	%xmm1, (%r9,%rax,4)	# _162, *_41
# /box/i8mm.cc:191:     y = y_base + 5;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:191:     y = y_base + 5;
	leal	5(%rbx), %edx	#, y
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %eax	# y, pretmp_267
	jle	.L13	#,
.L69:
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	imull	%r11d, %eax	# prephitmp_383, tmp280
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	addl	%eax, %edx	# tmp280, tmp281
	movslq	%edx, %rdx	# tmp281, tmp282
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	vpextrd	$1, %xmm1, (%r9,%rdx,4)	#, _162, *_49
# /box/i8mm.cc:193:     y = y_base + 6;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:193:     y = y_base + 6;
	leal	6(%rbx), %edx	#, y
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%eax, %edx	# pretmp_267, y
	jge	.L15	#,
.L70:
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	imull	%r11d, %eax	# prephitmp_383, tmp284
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	addl	%eax, %edx	# tmp284, tmp285
	movslq	%edx, %rdx	# tmp285, tmp286
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	vpextrd	$2, %xmm1, (%r9,%rdx,4)	#, _162, *_57
# /box/i8mm.cc:195:     y = y_base + 7;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:195:     y = y_base + 7;
	leal	7(%rbx), %edx	#, y
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%eax, %edx	# pretmp_267, y
	jge	.L6	#,
.L18:
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	imull	%r11d, %eax	# prephitmp_383, tmp288
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	addl	%edx, %eax	# y, tmp289
	cltq
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	vpextrd	$3, %xmm1, (%r9,%rax,4)	#, _162, *_65
# /box/i8mm.cc:197:     x = x_base + 1;
	movl	(%rdi), %r11d	# *x_base_151(D), prephitmp_383
# /box/i8mm.cc:198:     y = y_base + 0;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), prephitmp_388
.L17:
# /box/i8mm.cc:197:     x = x_base + 1;
	leal	1(%r11), %eax	#, x
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vextracti32x4	$2, %zmm0, %xmm0	#, prephitmp_388, _208
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%ebx, %edx	# prephitmp_384, pretmp_417
	jg	.L58	#,
# /box/i8mm.cc:201:     y = y_base + 1;
	leal	1(%rbx), %edi	#, y
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %edi	# pretmp_417, y
	jge	.L21	#,
.L59:
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	imull	%eax, %edx	# x, tmp300
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	addl	%edi, %edx	# y, tmp301
	movslq	%edx, %rdx	# tmp301, tmp302
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	vpextrd	$1, %xmm0, (%r9,%rdx,4)	#, _208, *_82
# /box/i8mm.cc:203:     y = y_base + 2;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:203:     y = y_base + 2;
	leal	2(%rbx), %edi	#, y
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %edi	# pretmp_417, y
	jge	.L23	#,
.L60:
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	imull	%eax, %edx	# x, tmp304
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	addl	%edi, %edx	# y, tmp305
	movslq	%edx, %rdx	# tmp305, tmp306
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	vpextrd	$2, %xmm0, (%r9,%rdx,4)	#, _208, *_90
# /box/i8mm.cc:205:     y = y_base + 3;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:205:     y = y_base + 3;
	leal	3(%rbx), %edi	#, y
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%edx, %edi	# pretmp_417, y
	jge	.L25	#,
.L61:
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	imull	%eax, %edx	# x, tmp308
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	addl	%edi, %edx	# y, tmp309
	movslq	%edx, %rdx	# tmp309, tmp310
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	vpextrd	$3, %xmm0, (%r9,%rdx,4)	#, _208, *_98
# /box/i8mm.cc:207:     y = y_base + 4;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), *result_149(D)
# /box/i8mm.cc:207:     y = y_base + 4;
	leal	4(%rbx), %edi	#, y
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vextracti32x4	$3, %zmm0, %xmm0	#, *result_149(D), _216
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%edx, %edi	# pretmp_417, y
	jge	.L27	#,
.L62:
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	imull	%eax, %edx	# x, tmp316
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	addl	%edi, %edx	# y, tmp317
	movslq	%edx, %rdx	# tmp317, tmp318
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	vmovd	%xmm0, (%r9,%rdx,4)	# _216, *_107
# /box/i8mm.cc:210:     y = y_base + 5;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:210:     y = y_base + 5;
	leal	5(%rbx), %edi	#, y
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %edi	# pretmp_417, y
	jge	.L29	#,
.L63:
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	imull	%eax, %edx	# x, tmp320
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	addl	%edi, %edx	# y, tmp321
	movslq	%edx, %rdx	# tmp321, tmp322
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	vpextrd	$1, %xmm0, (%r9,%rdx,4)	#, _216, *_115
# /box/i8mm.cc:212:     y = y_base + 6;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:212:     y = y_base + 6;
	leal	6(%rbx), %r8d	#, y
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %r8d	# pretmp_417, y
	jge	.L31	#,
.L64:
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	movl	%edx, %edi	# pretmp_417, pretmp_417
	imull	%eax, %edi	# x, pretmp_417
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	addl	%r8d, %edi	# y, tmp325
	movslq	%edi, %rdi	# tmp325, tmp326
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	vpextrd	$2, %xmm0, (%r9,%rdi,4)	#, _216, *_123
# /box/i8mm.cc:214:     y = y_base + 7;
	movl	(%rsi), %esi	# *y_base_153(D), *y_base_153(D)
	addl	$7, %esi	#, y
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
.L34:
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%edx, %esi	# pretmp_417, y
	jge	.L53	#,
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	imull	%eax, %edx	# x, tmp329
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	addl	%esi, %edx	# y, tmp330
	movslq	%edx, %rdx	# tmp330, tmp331
# /box/i8mm.cc:215:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	vpextrd	$3, %xmm0, (%r9,%rdx,4)	#, _216, *_131
.L53:
	vzeroupper
# /box/i8mm.cc:216: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	imull	%eax, %edx	# x, tmp296
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	addl	%ebx, %edx	# prephitmp_384, tmp297
	movslq	%edx, %rdx	# tmp297, tmp298
# /box/i8mm.cc:200:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	vmovd	%xmm0, (%r9,%rdx,4)	# _208, *_74
# /box/i8mm.cc:201:     y = y_base + 1;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:201:     y = y_base + 1;
	leal	1(%rbx), %edi	#, y
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%eax, (%r10)	# x, *m_155(D)
	jle	.L53	#,
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	movl	(%rcx), %edx	# *n_156(D), pretmp_417
# /box/i8mm.cc:202:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %edi	# pretmp_417, y
	jl	.L59	#,
.L21:
# /box/i8mm.cc:203:     y = y_base + 2;
	leal	2(%rbx), %edi	#, y
# /box/i8mm.cc:204:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %edi	# pretmp_417, y
	jl	.L60	#,
.L23:
# /box/i8mm.cc:205:     y = y_base + 3;
	leal	3(%rbx), %edi	#, y
# /box/i8mm.cc:206:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%edx, %edi	# pretmp_417, y
	jl	.L61	#,
.L25:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), *result_149(D)
# /box/i8mm.cc:207:     y = y_base + 4;
	leal	4(%rbx), %edi	#, y
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vextracti32x4	$3, %zmm0, %xmm0	#, *result_149(D), _216
# /box/i8mm.cc:209:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%edx, %edi	# pretmp_417, y
	jl	.L62	#,
.L27:
# /box/i8mm.cc:210:     y = y_base + 5;
	leal	5(%rbx), %edi	#, y
# /box/i8mm.cc:211:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %edi	# pretmp_417, y
	jl	.L63	#,
.L29:
# /box/i8mm.cc:212:     y = y_base + 6;
	leal	6(%rbx), %r8d	#, y
# /box/i8mm.cc:213:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %r8d	# pretmp_417, y
	jl	.L64	#,
.L31:
# /box/i8mm.cc:214:     y = y_base + 7;
	leal	7(%rbx), %esi	#, y
	jmp	.L34	#
	.p2align 4,,10
	.p2align 3
.L57:
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	imull	%r11d, %eax	# prephitmp_383, tmp256
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	addl	%ebx, %eax	# prephitmp_384, tmp257
	cltq
# /box/i8mm.cc:181:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	vmovd	%xmm0, (%r9,%rax,4)	# _191, *_8
# /box/i8mm.cc:182:     y = y_base + 1;
	movl	(%rsi), %ebx	# *y_base_153(D), prephitmp_384
# /box/i8mm.cc:182:     y = y_base + 1;
	leal	1(%rbx), %edx	#, y
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%r11d, (%r10)	# prephitmp_383, *m_155(D)
	jle	.L6	#,
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	movl	(%rcx), %eax	# *n_156(D), pretmp_267
# /box/i8mm.cc:183:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %eax	# y, pretmp_267
	jg	.L65	#,
.L5:
# /box/i8mm.cc:184:     y = y_base + 2;
	leal	2(%rbx), %edx	#, y
# /box/i8mm.cc:185:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%edx, %eax	# y, pretmp_267
	jg	.L66	#,
.L7:
# /box/i8mm.cc:186:     y = y_base + 3;
	leal	3(%rbx), %edx	#, y
# /box/i8mm.cc:187:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%edx, %eax	# y, pretmp_267
	jg	.L67	#,
.L9:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm2	# *result_149(D), tmp350
# /box/i8mm.cc:188:     y = y_base + 4;
	leal	4(%rbx), %edx	#, y
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vextracti32x4	$1, %zmm2, %xmm1	#, tmp350, _162
# /box/i8mm.cc:190:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
	cmpl	%edx, %eax	# y, pretmp_267
	jg	.L68	#,
.L11:
# /box/i8mm.cc:191:     y = y_base + 5;
	leal	5(%rbx), %edx	#, y
# /box/i8mm.cc:192:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
	cmpl	%edx, %eax	# y, pretmp_267
	jg	.L69	#,
.L13:
# /box/i8mm.cc:193:     y = y_base + 6;
	leal	6(%rbx), %edx	#, y
# /box/i8mm.cc:194:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
	cmpl	%eax, %edx	# pretmp_267, y
	jl	.L70	#,
.L15:
# /box/i8mm.cc:195:     y = y_base + 7;
	leal	7(%rbx), %edx	#, y
# /box/i8mm.cc:196:     if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
	cmpl	%eax, %edx	# pretmp_267, y
	jl	.L18	#,
.L6:
# /box/i8mm.cc:197:     x = x_base + 1;
	movl	(%rdi), %r11d	# *x_base_151(D), prephitmp_383
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6054:   return (__m128i) __builtin_ia32_extracti32x4_mask ((__v16si) __A,
	vmovdqa32	(%r8), %zmm0	# *result_149(D), prephitmp_388
	jmp	.L17	#
.L10:
# /box/i8mm.cc:197:     x = x_base + 1;
	movl	(%rdi), %r11d	# *x_base_151(D), prephitmp_383
	jmp	.L17	#
	.cfi_endproc
.LFE9064:
	.size	_Z13insert_resultOiRiS0_S0_RDv8_xPi, .-_Z13insert_resultOiRiS0_S0_RDv8_xPi
	.text
	.p2align 4
	.type	_Z4gemmiiiPKaS0_Pi._omp_fn.0, @function
_Z4gemmiiiPKaS0_Pi._omp_fn.0:
.LFB9782:
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
	andq	$-64, %rsp	#,
	subq	$640, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# /box/i8mm.cc:250:     #pragma omp parallel for collapse(2)
	movq	%rdi, 144(%rsp)	# .omp_data_i, %sfp
	movl	48(%rdi), %r15d	# *.omp_data_i_11(D).bn, bn
	movl	44(%rdi), %r12d	# *.omp_data_i_11(D).an, an
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1977
	movq	%rax, 632(%rsp)	# tmp1977, D.110571
	xorl	%eax, %eax	# tmp1977
	movl	%r15d, 156(%rsp)	# bn, %sfp
	testl	%r12d, %r12d	# an
	jle	.L71	#,
	testl	%r15d, %r15d	# bn
	jle	.L71	#,
	call	omp_get_num_threads@PLT	#
	movl	%eax, %ebx	# tmp1975, _19
	call	omp_get_thread_num@PLT	#
	movl	%r15d, %esi	# bn, tmp802
	imull	%r12d, %esi	# an, tmp802
	movl	%eax, %ecx	# tmp1976, _22
	xorl	%edx, %edx	# tt.32_2
	movl	%esi, %eax	# tmp802, tmp802
	divl	%ebx	# _19
	movl	%eax, %esi	# tmp802, q.31_1
	cmpl	%edx, %ecx	# tt.32_2, _22
	jb	.L74	#,
.L80:
	imull	%esi, %ecx	# q.31_1, tmp805
	addl	%ecx, %edx	# tmp805, _27
	leal	(%rsi,%rdx), %eax	#, tmp806
	cmpl	%eax, %edx	# tmp806, _27
	jnb	.L71	#,
	movq	144(%rsp), %rcx	# %sfp, .omp_data_i
# /box/i8mm.cc:266:             __m512i result0 = m512i_epi32_zero; // result of tile A B C ... P (16 tiles)
	vmovdqa64	_ZL16m512i_epi32_zero(%rip), %zmm26	# m512i_epi32_zero, pretmp_198
# /box/i8mm.cc:250:     #pragma omp parallel for collapse(2)
	movq	16(%rcx), %rax	# *.omp_data_i_11(D).C, C
	movl	40(%rcx), %edi	# *.omp_data_i_11(D).vc, vc
	movq	%rax, 136(%rsp)	# C, %sfp
	movl	%edx, %eax	# _27, _27
	xorl	%edx, %edx	# j
	divl	156(%rsp)	# %sfp
	movl	%edi, 264(%rsp)	# vc, %sfp
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movl	$0, 176(%rsp)	#, %sfp
	vmovdqa	.LC0(%rip), %ymm9	#, tmp1972
	vmovdqa	.LC1(%rip), %ymm8	#, tmp1973
	vmovdqa32	%zmm26, (%rsp)	# _1037, %sfp
	movl	%eax, 168(%rsp)	# _27, %sfp
	movslq	%edi, %rax	# vc, vc
	salq	$6, %rax	#, vc
	movq	%rax, 272(%rsp)	# vc, %sfp
	movl	168(%rsp), %eax	# %sfp, i
	movl	%edx, 268(%rsp)	# j, %sfp
	leal	0(,%rax,8), %eax	#, _1144
	movl	%eax, 260(%rsp)	# _1144, %sfp
	leaq	320(%rsp), %rax	#, tmp1965
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movq	8(%rcx), %rdx	# *.omp_data_i_11(D).n, pretmp_196
	movq	%rax, 96(%rsp)	# tmp1965, %sfp
	leaq	312(%rsp), %rax	#, tmp1962
	movq	%rax, 112(%rsp)	# tmp1962, %sfp
	leaq	316(%rsp), %rax	#, tmp1963
	movq	%rdx, 120(%rsp)	# pretmp_196, %sfp
	movq	%rax, 104(%rsp)	# tmp1963, %sfp
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movq	(%rcx), %rdx	# *.omp_data_i_11(D).m, pretmp_194
	leaq	384(%rsp), %rax	#, tmp1966
	movq	%rax, 88(%rsp)	# tmp1966, %sfp
	leaq	448(%rsp), %rax	#, tmp1967
	movq	%rdx, 128(%rsp)	# pretmp_194, %sfp
	movq	%rax, 80(%rsp)	# tmp1967, %sfp
	leal	-1(%rsi), %edx	#, _1095
	leaq	512(%rsp), %rax	#, tmp1968
	movl	%edx, 152(%rsp)	# _1095, %sfp
	movq	%rax, 72(%rsp)	# tmp1968, %sfp
	.p2align 4,,10
	.p2align 3
.L75:
# /box/i8mm.cc:296:             y_base = j * nb;
	movl	268(%rsp), %eax	# %sfp, j
# /box/i8mm.cc:266:             __m512i result0 = m512i_epi32_zero; // result of tile A B C ... P (16 tiles)
	vmovdqa64	%zmm26, 320(%rsp)	# pretmp_198, result0
# /box/i8mm.cc:296:             y_base = j * nb;
	sall	$3, %eax	#, _1145
	movl	%eax, 256(%rsp)	# _1145, %sfp
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movl	260(%rsp), %eax	# %sfp, _1144
# /box/i8mm.cc:267:             __m512i result1 = m512i_epi32_zero; // result of tile Q R S ...
	vmovdqa64	%zmm26, 384(%rsp)	# pretmp_198, result1
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	leal	2(%rax), %ecx	#, _1146
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	leal	4(%rax), %esi	#, _1147
# /box/i8mm.cc:301:             insert_result(x_base + 6, y_base, m, n, result3, C);
	addl	$6, %eax	#, _1148
	movl	%eax, 180(%rsp)	# _1148, %sfp
# /box/i8mm.cc:270:             for (int l = 0; l < vc; l++) {
	movl	264(%rsp), %eax	# %sfp,
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movl	%ecx, 188(%rsp)	# _1146, %sfp
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	movl	%esi, 184(%rsp)	# _1147, %sfp
# /box/i8mm.cc:268:             __m512i result2 = m512i_epi32_zero; // etc.
	vmovdqa64	%zmm26, 448(%rsp)	# pretmp_198, result2
# /box/i8mm.cc:269:             __m512i result3 = m512i_epi32_zero;
	vmovdqa64	%zmm26, 512(%rsp)	# pretmp_198, result3
# /box/i8mm.cc:270:             for (int l = 0; l < vc; l++) {
	testl	%eax, %eax	#
	jle	.L79	#,
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	144(%rsp), %rdi	# %sfp, .omp_data_i
# /box/i8mm.cc:273:                 __m512i x1 = _mm512_loadu_si512(&A_v[(i * 8 + 1) * vc + l]);
	movl	264(%rsp), %r14d	# %sfp, vc
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	24(%rdi), %rax	# *.omp_data_i_11(D).A_v, *.omp_data_i_11(D).A_v
# /box/i8mm.cc:274:                 __m512i y1 = _mm512_loadu_si512(&B_t[(j * 8 + 1) * vc + l]);
	movl	256(%rsp), %esi	# %sfp, _1145
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %rbx	# *_73.D.100702._M_impl.D.100008._M_start, _123
	movq	32(%rdi), %rax	# *.omp_data_i_11(D).B_t, *.omp_data_i_11(D).B_t
# /box/i8mm.cc:274:                 __m512i y1 = _mm512_loadu_si512(&B_t[(j * 8 + 1) * vc + l]);
	leal	1(%rsi), %r12d	#, tmp826
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	(%rax), %r11	# *_80.D.100702._M_impl.D.100008._M_start, _115
# /box/i8mm.cc:273:                 __m512i x1 = _mm512_loadu_si512(&A_v[(i * 8 + 1) * vc + l]);
	movl	260(%rsp), %eax	# %sfp, _1144
# /box/i8mm.cc:274:                 __m512i y1 = _mm512_loadu_si512(&B_t[(j * 8 + 1) * vc + l]);
	imull	%r14d, %r12d	# vc, _93
# /box/i8mm.cc:273:                 __m512i x1 = _mm512_loadu_si512(&A_v[(i * 8 + 1) * vc + l]);
	leal	1(%rax), %r13d	#, tmp825
# /box/i8mm.cc:273:                 __m512i x1 = _mm512_loadu_si512(&A_v[(i * 8 + 1) * vc + l]);
	imull	%r14d, %r13d	# vc, _85
# /box/i8mm.cc:276:                 __m512i y2 = _mm512_loadu_si512(&B_t[(j * 8 + 2) * vc + l]);
	leal	(%r14,%r12), %r10d	#, _105
# /box/i8mm.cc:278:                 __m512i y3 = _mm512_loadu_si512(&B_t[(j * 8 + 3) * vc + l]);
	leal	(%r14,%r10), %r8d	#, _119
# /box/i8mm.cc:275:                 __m512i x2 = _mm512_loadu_si512(&A_v[(i * 8 + 2) * vc + l]);
	leal	(%r14,%r13), %r15d	#, _99
# /box/i8mm.cc:277:                 __m512i x3 = _mm512_loadu_si512(&A_v[(i * 8 + 3) * vc + l]);
	leal	(%r14,%r15), %r9d	#, _112
# /box/i8mm.cc:279:                 __m512i x4 = _mm512_loadu_si512(&A_v[(i * 8 + 4) * vc + l]);
	leal	(%r14,%r9), %edi	#, _126
# /box/i8mm.cc:280:                 __m512i y4 = _mm512_loadu_si512(&B_t[(j * 8 + 4) * vc + l]);
	leal	(%r14,%r8), %esi	#, _133
# /box/i8mm.cc:281:                 __m512i x5 = _mm512_loadu_si512(&A_v[(i * 8 + 5) * vc + l]);
	leal	(%r14,%rdi), %ecx	#, _140
# /box/i8mm.cc:282:                 __m512i y5 = _mm512_loadu_si512(&B_t[(j * 8 + 5) * vc + l]);
	leal	(%r14,%rsi), %edx	#, _147
# /box/i8mm.cc:283:                 __m512i x6 = _mm512_loadu_si512(&A_v[(i * 8 + 6) * vc + l]);
	leal	(%r14,%rcx), %eax	#, _154
	movl	%eax, 172(%rsp)	# _154, %sfp
# /box/i8mm.cc:284:                 __m512i y6 = _mm512_loadu_si512(&B_t[(j * 8 + 6) * vc + l]);
	leal	(%r14,%rdx), %eax	#, _161
	movl	%eax, 280(%rsp)	# _161, %sfp
# /box/i8mm.cc:271:                 __m512i x0 = _mm512_loadu_si512(&A_v[(i * 8 + 0) * vc + l]);
	movl	168(%rsp), %eax	# %sfp, tmp827
	movslq	%r13d, %r13	# _85, _85
	imull	%r14d, %eax	# vc, tmp827
	movslq	%r12d, %r12	# _93, _93
	salq	$6, %r13	#, tmp836
	movl	%eax, %r14d	# tmp827, tmp827
	sall	$3, %r14d	#, tmp828
	movslq	%r14d, %r14	# tmp828, tmp829
	salq	$6, %r14	#, tmp830
	leaq	(%rbx,%r14), %rax	#, _1044
	movq	%rax, 192(%rsp)	# _1044, %sfp
# /box/i8mm.cc:272:                 __m512i y0 = _mm512_loadu_si512(&B_t[(j * 8 + 0) * vc + l]);
	movl	264(%rsp), %r14d	# %sfp, vc
	movl	268(%rsp), %eax	# %sfp, tmp831
	salq	$6, %r12	#, tmp838
	imull	%r14d, %eax	# vc, tmp831
	addq	%rbx, %r13	# _123, _1050
	addq	%r11, %r12	# _115, _1053
	movl	%eax, %r14d	# tmp831, tmp831
	sall	$3, %r14d	#, tmp832
	movslq	%r14d, %r14	# tmp832, tmp833
	salq	$6, %r14	#, tmp834
	addq	%r11, %r14	# _115, _1047
	movq	%r13, 296(%rsp)	# _1050, %sfp
	movq	%r12, 288(%rsp)	# _1053, %sfp
	movslq	172(%rsp), %r13	# %sfp,
	movslq	280(%rsp), %r12	# %sfp, _161
	movq	%r14, 160(%rsp)	# _1047, %sfp
	movslq	%r15d, %r15	# _99, _99
# /box/i8mm.cc:285:                 __m512i x7 = _mm512_loadu_si512(&A_v[(i * 8 + 7) * vc + l]);
	movl	264(%rsp), %r14d	# %sfp, vc
	movslq	%r10d, %r10	# _105, _105
	movslq	%r9d, %r9	# _112, _112
	movslq	%r8d, %r8	# _119, _119
	movslq	%edi, %rdi	# _126, _126
	movslq	%esi, %rsi	# _133, _133
	movslq	%ecx, %rcx	# _140, _140
	movslq	%edx, %rdx	# _147, _147
	salq	$6, %r15	#, tmp840
	salq	$6, %r10	#, tmp842
	salq	$6, %r9	#, tmp844
	salq	$6, %r8	#, tmp846
	salq	$6, %rdi	#, tmp848
	salq	$6, %rsi	#, tmp850
	salq	$6, %rcx	#, tmp852
	salq	$6, %rdx	#, tmp854
	movq	%r13, %rax	#,
	salq	$6, %r12	#, tmp858
	salq	$6, %r13	#, tmp856
	addq	%rbx, %r15	# _123, _1056
	addq	%r11, %r10	# _115, _1059
	addq	%rbx, %r9	# _123, _1062
	addq	%r11, %r8	# _115, _1065
	addq	%rbx, %rdi	# _123, _1068
	addq	%r11, %rsi	# _115, _1071
	addq	%rbx, %rcx	# _123, _1074
	addq	%r11, %rdx	# _115, _1077
	addq	%rbx, %r13	# _123, _1080
	addq	%r11, %r12	# _115, _1083
	addl	%r14d, %eax	# vc, _154
	cltq
	salq	$6, %rax	#, tmp861
	addq	%rbx, %rax	# _123, _1086
# /box/i8mm.cc:286:                 __m512i y7 = _mm512_loadu_si512(&B_t[(j * 8 + 7) * vc + l]);
	movl	%r14d, %ebx	# vc, vc
	movl	280(%rsp), %r14d	# %sfp, _161
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	movq	%rax, 280(%rsp)	# _1086, %sfp
# /box/i8mm.cc:286:                 __m512i y7 = _mm512_loadu_si512(&B_t[(j * 8 + 7) * vc + l]);
	addl	%r14d, %ebx	# _161, tmp862
	movslq	%ebx, %rbx	# tmp862, tmp863
	salq	$6, %rbx	#, tmp864
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	movq	160(%rsp), %r14	# %sfp, _1047
	vmovdqa32	(%rsp), %zmm10	# %sfp, _1037
	addq	%r11, %rbx	# _115, _1089
	vmovdqa64	%zmm26, %zmm14	# pretmp_198, result3__lsm.129
	vmovdqa64	%zmm26, %zmm13	# pretmp_198, result2__lsm.128
	vmovdqa64	%zmm26, %zmm12	# pretmp_198, result1__lsm.127
	vmovdqa64	%zmm26, %zmm11	# pretmp_198, result0__lsm.126
	xorl	%r11d, %r11d	# ivtmp.151
	.p2align 4,,10
	.p2align 3
.L78:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	movq	192(%rsp), %rax	# %sfp, _1044
	vmovdqu64	(%r14,%r11), %zmm3	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1]
	vmovdqu64	(%rax,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1]
	movq	288(%rsp), %rax	# %sfp, _1053
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm3, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp867
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rax,%r11), %zmm19	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1]
	vmovdqu64	(%r8,%r11), %zmm18	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm4, %zmm1	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp881
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm1, %ymm2	# tmp881, tmp886
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm2, %ymm1, %ymm1	# tmp886, tmp890, tmp895
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm6	# tmp867, tmp872
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%r10,%r11), %zmm2	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm6, %ymm5, %ymm5	# tmp872, tmp876, tmp894
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm1, %ymm5, %ymm5	# tmp895, tmp894, tmp896
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp912
	vpmaddwd	%zmm2, %zmm4, %zmm1	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp898
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm1, %ymm15	# tmp898, tmp903
	vextracti32x8	$0x1, %zmm6, %ymm7	# tmp912, tmp917
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rsi,%r11), %zmm24	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1]
	vmovdqu64	(%rdx,%r11), %zmm17	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm7, %ymm6, %ymm6	# tmp917, tmp921, tmp926
	vpaddd	%ymm15, %ymm1, %ymm1	# tmp903, tmp907, tmp925
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm6, %ymm1, %ymm1	# tmp926, tmp925, tmp927
	vphaddd	%ymm1, %ymm5, %ymm5	# tmp927, tmp896, tmp928
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm24, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp930
	vpmaddwd	%zmm17, %zmm4, %zmm1	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp944
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm15	# tmp930, tmp935
	vextracti32x8	$0x1, %zmm1, %ymm7	# tmp944, tmp949
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm7, %ymm1, %ymm1	# tmp949, tmp953, tmp958
	vpaddd	%ymm15, %ymm6, %ymm6	# tmp935, tmp939, tmp957
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rbx,%r11), %zmm16	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm1, %ymm6, %ymm6	# tmp958, tmp957, tmp959
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%r12,%r11), %zmm1	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1]
	movq	296(%rsp), %rax	# %sfp, _1050
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm7	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp961
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1044 + ivtmp.151_1040 * 1], tmp975
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm7, %ymm20	# tmp961, tmp966
	vextracti32x8	$0x1, %zmm4, %ymm15	# tmp975, tmp980
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm7, %ymm7	# tmp966, tmp970, tmp988
	vpaddd	%ymm15, %ymm4, %ymm4	# tmp980, tmp984, tmp989
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm4, %ymm7, %ymm4	# tmp989, tmp988, tmp990
	vphaddd	%ymm4, %ymm6, %ymm4	# tmp990, tmp959, tmp991
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa	%ymm5, %ymm7	# tmp928, tmp992
	vpermt2d	%ymm4, %ymm9, %ymm7	# tmp991, tmp1972, tmp992
	vpermt2d	%ymm4, %ymm8, %ymm5	# tmp991, tmp1973, tmp997
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rax,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm5, %ymm7, %ymm7	# tmp997, tmp992, tmp1004
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1022
	vpmaddwd	%zmm3, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1009
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm20	# tmp1009, tmp1014
	vextracti32x8	$0x1, %zmm6, %ymm15	# tmp1022, tmp1027
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm6, %ymm6	# tmp1027, tmp1031, tmp1036
	vpaddd	%ymm20, %ymm5, %ymm5	# tmp1014, tmp1018, tmp1035
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1051
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1036, tmp1035, tmp1037
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1038
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm21	# tmp1038, tmp1043
	vextracti32x8	$0x1, %zmm15, %ymm20	# tmp1051, tmp1056
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm15, %ymm15	# tmp1056, tmp1060, tmp1065
	vpaddd	%ymm21, %ymm6, %ymm6	# tmp1043, tmp1047, tmp1064
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm6, %ymm6	# tmp1065, tmp1064, tmp1066
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1066, tmp1037, tmp1067
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1081
	vpmaddwd	%zmm24, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1068
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm21	# tmp1068, tmp1073
	vextracti32x8	$0x1, %zmm15, %ymm20	# tmp1081, tmp1086
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm15, %ymm15	# tmp1086, tmp1090, tmp1095
	vpaddd	%ymm21, %ymm6, %ymm6	# tmp1073, tmp1077, tmp1094
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm6, %ymm6	# tmp1095, tmp1094, tmp1096
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1097
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1050 + ivtmp.151_1040 * 1], tmp1110
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm15, %ymm21	# tmp1097, tmp1102
	vextracti32x8	$0x1, %zmm4, %ymm20	# tmp1110, tmp1115
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm15, %ymm15	# tmp1102, tmp1106, tmp1123
	vpaddd	%ymm20, %ymm4, %ymm4	# tmp1115, tmp1119, tmp1124
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm4, %ymm15, %ymm4	# tmp1124, tmp1123, tmp1125
	vphaddd	%ymm4, %ymm6, %ymm4	# tmp1125, tmp1096, tmp1126
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa	%ymm5, %ymm6	# tmp1067, tmp1127
	vpermt2d	%ymm4, %ymm9, %ymm6	# tmp1126, tmp1972, tmp1127
	vpermt2d	%ymm4, %ymm8, %ymm5	# tmp1126, tmp1973, tmp1132
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm5, %ymm6, %ymm4	# tmp1132, tmp1127, tmp1139
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	vinserti32x8	$0x1, %ymm4, %zmm10, %zmm4	# tmp1139, _1037, tmp1137
	vinserti32x8	$0x0, %ymm7, %zmm10, %zmm7	# tmp1004, _1037, tmp1002
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm4, %zmm7, %zmm7	# tmp1137, tmp1002, tmp1143
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%r15,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1]
	movq	280(%rsp), %rax	# %sfp, _1086
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm3, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1146
	vpmaddwd	%zmm19, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1159
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm20	# tmp1146, tmp1151
	vextracti32x8	$0x1, %zmm6, %ymm15	# tmp1159, tmp1164
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm6, %ymm6	# tmp1164, tmp1168, tmp1173
	vpaddd	%ymm20, %ymm5, %ymm5	# tmp1151, tmp1155, tmp1172
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1188
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1173, tmp1172, tmp1174
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1175
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm21	# tmp1175, tmp1180
	vextracti32x8	$0x1, %zmm15, %ymm20	# tmp1188, tmp1193
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm15, %ymm15	# tmp1193, tmp1197, tmp1202
	vpaddd	%ymm21, %ymm6, %ymm6	# tmp1180, tmp1184, tmp1201
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm6, %ymm6	# tmp1202, tmp1201, tmp1203
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1203, tmp1174, tmp1204
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1218
	vpmaddwd	%zmm24, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1205
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm21	# tmp1205, tmp1210
	vextracti32x8	$0x1, %zmm15, %ymm20	# tmp1218, tmp1223
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm15, %ymm15	# tmp1223, tmp1227, tmp1232
	vpaddd	%ymm21, %ymm6, %ymm6	# tmp1210, tmp1214, tmp1231
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm6, %ymm6	# tmp1232, tmp1231, tmp1233
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1234
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1056 + ivtmp.151_1040 * 1], tmp1247
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm15, %ymm21	# tmp1234, tmp1239
	vextracti32x8	$0x1, %zmm4, %ymm20	# tmp1247, tmp1252
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm15, %ymm15	# tmp1239, tmp1243, tmp1260
	vpaddd	%ymm20, %ymm4, %ymm4	# tmp1252, tmp1256, tmp1261
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm4, %ymm15, %ymm4	# tmp1261, tmp1260, tmp1262
	vphaddd	%ymm4, %ymm6, %ymm4	# tmp1262, tmp1233, tmp1263
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa32	%ymm5, %ymm21	# tmp1204, tmp1264
	vpermt2d	%ymm4, %ymm9, %ymm21	# tmp1263, tmp1972, tmp1264
	vpermt2d	%ymm4, %ymm8, %ymm5	# tmp1263, tmp1973, tmp1269
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%r9,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm5, %ymm21, %ymm21	# tmp1269, tmp1264, tmp1276
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1294
	vpmaddwd	%zmm3, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1281
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm20	# tmp1281, tmp1286
	vextracti32x8	$0x1, %zmm6, %ymm15	# tmp1294, tmp1299
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm6, %ymm6	# tmp1299, tmp1303, tmp1308
	vpaddd	%ymm20, %ymm5, %ymm5	# tmp1286, tmp1290, tmp1307
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1323
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1308, tmp1307, tmp1309
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1310
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm6, %ymm22	# tmp1310, tmp1315
	vextracti32x8	$0x1, %zmm15, %ymm20	# tmp1323, tmp1328
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm15, %ymm15	# tmp1328, tmp1332, tmp1337
	vpaddd	%ymm22, %ymm6, %ymm6	# tmp1315, tmp1319, tmp1336
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm6, %ymm6	# tmp1337, tmp1336, tmp1338
	vphaddd	%ymm6, %ymm5, %ymm5	# tmp1338, tmp1309, tmp1339
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm24, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1340
	vpmaddwd	%zmm17, %zmm4, %zmm6	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1353
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm15, %ymm22	# tmp1340, tmp1345
	vextracti32x8	$0x1, %zmm6, %ymm20	# tmp1353, tmp1358
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm6, %ymm6	# tmp1358, tmp1362, tmp1367
	vpaddd	%ymm22, %ymm15, %ymm15	# tmp1345, tmp1349, tmp1366
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1369
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1062 + ivtmp.151_1040 * 1], tmp1382
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm6, %ymm15, %ymm15	# tmp1367, tmp1366, tmp1368
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm4, %ymm22	# tmp1382, tmp1387
	vextracti32x8	$0x1, %zmm20, %ymm6	# tmp1369, tmp1374
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm6, %ymm20, %ymm6	# tmp1374, tmp1378, tmp1395
	vpaddd	%ymm22, %ymm4, %ymm4	# tmp1387, tmp1391, tmp1396
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm4, %ymm6, %ymm4	# tmp1396, tmp1395, tmp1397
	vphaddd	%ymm4, %ymm15, %ymm4	# tmp1397, tmp1368, tmp1398
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa	%ymm5, %ymm6	# tmp1339, tmp1399
	vpermt2d	%ymm4, %ymm9, %ymm6	# tmp1398, tmp1972, tmp1399
	vpermt2d	%ymm4, %ymm8, %ymm5	# tmp1398, tmp1973, tmp1404
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rdi,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm5, %ymm6, %ymm6	# tmp1404, tmp1399, tmp1411
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm3, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1418
	vpmaddwd	%zmm19, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1431
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	vinserti32x8	$0x0, %ymm21, %zmm10, %zmm21	# tmp1276, _1037, tmp1274
	vinserti32x8	$0x1, %ymm6, %zmm10, %zmm6	# tmp1411, _1037, tmp1409
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm6, %zmm21, %zmm6	# tmp1409, tmp1274, tmp1415
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm20	# tmp1431, tmp1436
	vextracti32x8	$0x1, %zmm15, %ymm21	# tmp1418, tmp1423
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm5, %ymm5	# tmp1436, tmp1440, tmp1445
	vpaddd	%ymm21, %ymm15, %ymm15	# tmp1423, tmp1427, tmp1444
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1460
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm5, %ymm15, %ymm15	# tmp1445, tmp1444, tmp1446
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm21	# tmp1460, tmp1465
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1447
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm20, %ymm20	# tmp1465, tmp1469, tmp1474
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm22	# tmp1447, tmp1452
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1474, tmp1474
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm5, %ymm5	# tmp1452, tmp1456, tmp1473
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1490
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm0, %ymm5, %ymm5	# tmp1474, tmp1473, tmp1475
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm21	# tmp1490, tmp1495
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm5, %ymm15, %ymm15	# tmp1475, tmp1446, tmp1476
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm20, %ymm20	# tmp1495, tmp1499, tmp1504
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm24, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1477
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1504, tmp1504
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm22	# tmp1477, tmp1482
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1506
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm5, %ymm5	# tmp1482, tmp1486, tmp1503
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1068 + ivtmp.151_1040 * 1], tmp1519
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm22	# tmp1506, tmp1511
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm20, %ymm20	# tmp1511, tmp1515, tmp1532
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm4, %ymm21	# tmp1519, tmp1524
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm0, %ymm5, %ymm5	# tmp1504, tmp1503, tmp1505
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm4, %ymm4	# tmp1524, tmp1528, tmp1533
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1532, tmp1532
	vphaddd	%ymm4, %ymm0, %ymm4	# tmp1533, tmp1532, tmp1534
	vphaddd	%ymm4, %ymm5, %ymm4	# tmp1534, tmp1505, tmp1535
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa32	%ymm15, %ymm21	# tmp1476, tmp1536
	vpermt2d	%ymm4, %ymm9, %ymm21	# tmp1535, tmp1972, tmp1536
	vpermt2d	%ymm4, %ymm8, %ymm15	# tmp1535, tmp1973, tmp1541
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rcx,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm21, %ymm21	# tmp1541, tmp1536, tmp1548
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1566
	vpmaddwd	%zmm3, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1553
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm15, %ymm22	# tmp1553, tmp1558
	vextracti32x8	$0x1, %zmm5, %ymm20	# tmp1566, tmp1571
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm5, %ymm5	# tmp1571, tmp1575, tmp1580
	vpaddd	%ymm22, %ymm15, %ymm15	# tmp1558, tmp1562, tmp1579
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1595
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm5, %ymm15, %ymm15	# tmp1580, tmp1579, tmp1581
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm22	# tmp1595, tmp1600
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1582
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm20, %ymm20	# tmp1600, tmp1604, tmp1609
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm23	# tmp1582, tmp1587
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1609, tmp1609
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm5, %ymm5	# tmp1587, tmp1591, tmp1608
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1625
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm0, %ymm5, %ymm5	# tmp1609, tmp1608, tmp1610
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm22	# tmp1625, tmp1630
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm5, %ymm15, %ymm15	# tmp1610, tmp1581, tmp1611
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm20, %ymm20	# tmp1630, tmp1634, tmp1639
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm24, %zmm4, %zmm5	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1612
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1639, tmp1639
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm5, %ymm23	# tmp1612, tmp1617
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1641
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm5, %ymm5	# tmp1617, tmp1621, tmp1638
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1074 + ivtmp.151_1040 * 1], tmp1654
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm23	# tmp1641, tmp1646
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm20, %ymm20	# tmp1646, tmp1650, tmp1667
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm4, %ymm22	# tmp1654, tmp1659
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm0, %ymm5, %ymm5	# tmp1639, tmp1638, tmp1640
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm4, %ymm4	# tmp1659, tmp1663, tmp1668
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1667, tmp1667
	vphaddd	%ymm4, %ymm0, %ymm4	# tmp1668, tmp1667, tmp1669
	vphaddd	%ymm4, %ymm5, %ymm4	# tmp1669, tmp1640, tmp1670
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa	%ymm15, %ymm5	# tmp1611, tmp1671
	vpermt2d	%ymm4, %ymm9, %ymm5	# tmp1670, tmp1972, tmp1671
	vpermt2d	%ymm4, %ymm8, %ymm15	# tmp1670, tmp1973, tmp1676
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	0(%r13,%r11), %zmm4	# MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm5, %ymm5	# tmp1676, tmp1671, tmp1683
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1703
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	vinserti32x8	$0x0, %ymm21, %zmm10, %zmm21	# tmp1548, _1037, tmp1546
	vinserti32x8	$0x1, %ymm5, %zmm10, %zmm5	# tmp1683, _1037, tmp1681
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm3, %zmm4, %zmm15	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1690
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm5, %zmm21, %zmm5	# tmp1681, tmp1546, tmp1687
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm21	# tmp1703, tmp1708
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm21, %ymm20, %ymm21	# tmp1708, tmp1712, tmp1717
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm15, %ymm22	# tmp1690, tmp1695
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1719
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm15, %ymm15	# tmp1695, tmp1699, tmp1716
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm21, %ymm0	# tmp1717, tmp1717
	vphaddd	%ymm0, %ymm15, %ymm0	# tmp1717, tmp1716, tmp1718
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm23	# tmp1719, tmp1724
	vmovdqa32	%ymm20, %ymm15	# tmp1719, tmp1728
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1732
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm22	# tmp1732, tmp1737
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm20, %ymm20	# tmp1737, tmp1741, tmp1746
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm0, %ymm21	# tmp1718, tmp1718
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm15, %ymm15	# tmp1724, tmp1728, tmp1745
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1746, tmp1746
	vphaddd	%ymm0, %ymm15, %ymm15	# tmp1746, tmp1745, tmp1747
	vmovdqa32	%ymm21, %ymm0	# tmp1718, tmp1718
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm4, %zmm21	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1762
	vpmaddwd	%zmm24, %zmm4, %zmm20	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1749
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm21, %ymm22	# tmp1762, tmp1767
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm21, %ymm21	# tmp1767, tmp1771, tmp1776
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm20, %ymm23	# tmp1749, tmp1754
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm20, %ymm20	# tmp1754, tmp1758, tmp1775
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm13, %zmm5, %zmm25	# result2__lsm.128, tmp1687, tmp1688
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm21, %ymm5	# tmp1776, tmp1776
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm4, %zmm21	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1778
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm0, %ymm15	# tmp1747, tmp1718, tmp1748
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm16, %zmm4, %zmm4	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1080 + ivtmp.151_1040 * 1], tmp1791
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm20, %ymm0	# tmp1775, tmp1775
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm21, %ymm23	# tmp1778, tmp1783
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm5, %ymm0, %ymm0	# tmp1776, tmp1775, tmp1777
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm23, %ymm21, %ymm21	# tmp1783, tmp1787, tmp1804
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm4, %ymm22	# tmp1791, tmp1796
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm0, %ymm20	# tmp1777, tmp1777
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm22, %ymm4, %ymm4	# tmp1796, tmp1800, tmp1805
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm21, %ymm0	# tmp1804, tmp1804
	vphaddd	%ymm4, %ymm0, %ymm4	# tmp1805, tmp1804, tmp1806
	vmovdqa32	%ymm20, %ymm0	# tmp1777, tmp1777
	vphaddd	%ymm4, %ymm0, %ymm4	# tmp1806, tmp1777, tmp1807
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa32	%ymm15, %ymm20	# tmp1748, tmp1808
	vpermt2d	%ymm4, %ymm9, %ymm20	# tmp1807, tmp1972, tmp1808
	vpermt2d	%ymm4, %ymm8, %ymm15	# tmp1807, tmp1973, tmp1813
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm15, %ymm20, %ymm4	# tmp1813, tmp1808, tmp1820
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:6501:   return *(__m512i_u *)__P;
	vmovdqu64	(%rax,%r11), %zmm15	# MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	vinserti32x8	$0x0, %ymm4, %zmm10, %zmm4	# tmp1820, _1037, tmp1818
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm19, %zmm15, %zmm19	# MEM[(__m512i_u * {ref-all})_1053 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1838
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm19, %ymm20	# tmp1838, tmp1843
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm3, %zmm15, %zmm3	# MEM[(__m512i_u * {ref-all})_1047 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1825
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm19, %ymm19	# tmp1843, tmp1847, tmp1852
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm18, %zmm15, %zmm18	# MEM[(__m512i_u * {ref-all})_1065 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1867
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm19, %ymm0	# tmp1852, tmp1852
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm2, %zmm15, %zmm2	# MEM[(__m512i_u * {ref-all})_1059 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1854
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm3, %ymm21	# tmp1825, tmp1830
	vextracti32x8	$0x1, %zmm18, %ymm19	# tmp1867, tmp1872
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm19, %ymm18, %ymm18	# tmp1872, tmp1876, tmp1881
	vpaddd	%ymm21, %ymm3, %ymm3	# tmp1830, tmp1834, tmp1851
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm2, %ymm20	# tmp1854, tmp1859
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm0, %ymm3, %ymm3	# tmp1852, tmp1851, tmp1853
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm20, %ymm2, %ymm2	# tmp1859, tmp1863, tmp1880
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vmovdqa32	%ymm18, %ymm0	# tmp1881, tmp1881
	vphaddd	%ymm0, %ymm2, %ymm2	# tmp1881, tmp1880, tmp1882
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm17, %zmm15, %zmm17	# MEM[(__m512i_u * {ref-all})_1077 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1897
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm2, %ymm3, %ymm2	# tmp1882, tmp1853, tmp1883
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm24, %zmm15, %zmm3	# MEM[(__m512i_u * {ref-all})_1071 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1884
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm3, %ymm18	# tmp1884, tmp1889
	vmovdqa	%ymm3, %ymm0	# tmp1884, tmp1893
	vextracti32x8	$0x1, %zmm17, %ymm3	# tmp1897, tmp1902
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm3, %ymm17, %ymm3	# tmp1902, tmp1906, tmp1911
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm1, %zmm15, %zmm1	# MEM[(__m512i_u * {ref-all})_1083 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1913
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm18, %ymm0, %ymm0	# tmp1889, tmp1893, tmp1910
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512bwintrin.h:1481:   return (__m512i) __builtin_ia32_pmaddwd512_mask ((__v32hi) __A,
	vpmaddwd	%zmm16, %zmm15, %zmm15	# MEM[(__m512i_u * {ref-all})_1089 + ivtmp.151_1040 * 1], MEM[(__m512i_u * {ref-all})_1086 + ivtmp.151_1040 * 1], tmp1926
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm3, %ymm0, %ymm0	# tmp1911, tmp1910, tmp1912
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2066:   return (__m256i) __builtin_ia32_extracti32x8_mask ((__v16si) __A,
	vextracti32x8	$0x1, %zmm1, %ymm17	# tmp1913, tmp1918
	vextracti32x8	$0x1, %zmm15, %ymm3	# tmp1926, tmp1931
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm3, %ymm15, %ymm15	# tmp1931, tmp1935, tmp1940
	vpaddd	%ymm17, %ymm1, %ymm1	# tmp1918, tmp1922, tmp1939
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:297:   return (__m256i) __builtin_ia32_phaddd256 ((__v8si)__X, (__v8si)__Y);
	vphaddd	%ymm15, %ymm1, %ymm1	# tmp1940, tmp1939, tmp1941
	vphaddd	%ymm1, %ymm0, %ymm3	# tmp1941, tmp1912, tmp1942
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512vlintrin.h:6676:   return (__m256i) __builtin_ia32_vpermt2vard256_mask ((__v8si) __I
	vmovdqa	%ymm2, %ymm1	# tmp1883, tmp1943
	vpermt2d	%ymm3, %ymm9, %ymm1	# tmp1942, tmp1972, tmp1943
	vpermt2d	%ymm3, %ymm8, %ymm2	# tmp1942, tmp1973, tmp1948
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx2intrin.h:121:   return (__m256i) ((__v8su)__A + (__v8su)__B);
	vpaddd	%ymm2, %ymm1, %ymm1	# tmp1948, tmp1943, tmp1955
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512dqintrin.h:2213:   return (__m512i) __builtin_ia32_inserti32x8_mask ((__v16si) __A,
	vinserti32x8	$0x1, %ymm1, %zmm10, %zmm1	# tmp1955, _1037, tmp1953
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm1, %zmm4, %zmm4	# tmp1953, tmp1818, tmp1959
# /box/i8mm.cc:270:             for (int l = 0; l < vc; l++) {
	movq	272(%rsp), %rax	# %sfp, _1091
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vpaddd	%zmm11, %zmm7, %zmm7	# result0__lsm.126, tmp1143, tmp1144
	vpaddd	%zmm12, %zmm6, %zmm6	# result1__lsm.127, tmp1415, tmp1416
	vpaddd	%zmm14, %zmm4, %zmm4	# result3__lsm.129, tmp1959, tmp1960
# /box/i8mm.cc:270:             for (int l = 0; l < vc; l++) {
	addq	$64, %r11	#, ivtmp.151
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avx512fintrin.h:895:   return (__m512i) ((__v16su) __A + (__v16su) __B);
	vmovdqa64	%zmm7, %zmm11	# tmp1144, result0__lsm.126
	vmovdqa64	%zmm6, %zmm12	# tmp1416, result1__lsm.127
	vmovdqa64	%zmm25, %zmm13	# tmp1688, result2__lsm.128
	vmovdqa64	%zmm4, %zmm14	# tmp1960, result3__lsm.129
# /box/i8mm.cc:270:             for (int l = 0; l < vc; l++) {
	cmpq	%rax, %r11	# _1091, ivtmp.151
	jne	.L78	#,
	vmovdqa64	%zmm7, 320(%rsp)	# tmp1144, result0
	vmovdqa64	%zmm6, 384(%rsp)	# tmp1416, result1
	vmovdqa64	%zmm25, 448(%rsp)	# tmp1688, result2
	vmovdqa64	%zmm4, 512(%rsp)	# tmp1960, result3
.L79:
# /box/i8mm.cc:296:             y_base = j * nb;
	movl	256(%rsp), %eax	# %sfp, _1145
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movq	136(%rsp), %r12	# %sfp, C
# /box/i8mm.cc:296:             y_base = j * nb;
	movl	%eax, 312(%rsp)	# _1145, y_base
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movl	260(%rsp), %eax	# %sfp, _1144
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movq	120(%rsp), %r13	# %sfp, pretmp_196
	movq	128(%rsp), %r14	# %sfp, pretmp_194
	movq	112(%rsp), %r15	# %sfp, tmp1962
	movq	104(%rsp), %rbx	# %sfp, tmp1963
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movl	%eax, 316(%rsp)	# _1144, MEM[(int *)_111]
# /box/i8mm.cc:298:             insert_result(x_base + 0, y_base, m, n, result0, C);
	movq	96(%rsp), %r8	# %sfp,
	vmovdqa64	%zmm26, 192(%rsp)	# pretmp_198, %sfp
	movq	%r12, %r9	# C,
	movq	%r13, %rcx	# pretmp_196,
	movq	%r14, %rdx	# pretmp_194,
	movq	%r15, %rsi	# tmp1962,
	movq	%rbx, %rdi	# tmp1963,
	vzeroupper
	call	_Z13insert_resultOiRiS0_S0_RDv8_xPi	#
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movl	188(%rsp), %eax	# %sfp, _1146
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movq	88(%rsp), %r8	# %sfp,
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movl	%eax, 316(%rsp)	# _1146, MEM[(int *)_111]
# /box/i8mm.cc:299:             insert_result(x_base + 2, y_base, m, n, result1, C);
	movq	%r12, %r9	# C,
	movq	%r13, %rcx	# pretmp_196,
	movq	%r14, %rdx	# pretmp_194,
	movq	%r15, %rsi	# tmp1962,
	movq	%rbx, %rdi	# tmp1963,
	call	_Z13insert_resultOiRiS0_S0_RDv8_xPi	#
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	movl	184(%rsp), %eax	# %sfp, _1147
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	movq	80(%rsp), %r8	# %sfp,
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	movl	%eax, 316(%rsp)	# _1147, MEM[(int *)_111]
# /box/i8mm.cc:300:             insert_result(x_base + 4, y_base, m, n, result2, C);
	movq	%r12, %r9	# C,
	movq	%r13, %rcx	# pretmp_196,
	movq	%r14, %rdx	# pretmp_194,
	movq	%r15, %rsi	# tmp1962,
	movq	%rbx, %rdi	# tmp1963,
	call	_Z13insert_resultOiRiS0_S0_RDv8_xPi	#
# /box/i8mm.cc:301:             insert_result(x_base + 6, y_base, m, n, result3, C);
	movl	180(%rsp), %eax	# %sfp, _1148
# /box/i8mm.cc:301:             insert_result(x_base + 6, y_base, m, n, result3, C);
	movq	72(%rsp), %r8	# %sfp,
# /box/i8mm.cc:301:             insert_result(x_base + 6, y_base, m, n, result3, C);
	movl	%eax, 316(%rsp)	# _1148, MEM[(int *)_111]
# /box/i8mm.cc:301:             insert_result(x_base + 6, y_base, m, n, result3, C);
	movq	%r14, %rdx	# pretmp_194,
	movq	%r12, %r9	# C,
	movq	%r13, %rcx	# pretmp_196,
	movq	%r15, %rsi	# tmp1962,
	movq	%rbx, %rdi	# tmp1963,
	call	_Z13insert_resultOiRiS0_S0_RDv8_xPi	#
	movl	152(%rsp), %edx	# %sfp, _1095
	cmpl	%edx, 176(%rsp)	# _1095, %sfp
	je	.L71	#,
	incl	268(%rsp)	# %sfp
	vmovdqa64	192(%rsp), %zmm26	# %sfp, pretmp_198
	vmovdqa	.LC0(%rip), %ymm9	#, tmp1972
	vmovdqa	.LC1(%rip), %ymm8	#, tmp1973
	movl	268(%rsp), %eax	# %sfp, j
	cmpl	%eax, 156(%rsp)	# j, %sfp
	jle	.L85	#,
.L77:
	incl	176(%rsp)	# %sfp
	jmp	.L75	#
	.p2align 4,,10
	.p2align 3
.L71:
# /box/i8mm.cc:250:     #pragma omp parallel for collapse(2)
	movq	632(%rsp), %rax	# D.110571, tmp1978
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1978
	jne	.L86	#,
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
.L85:
	.cfi_restore_state
	incl	168(%rsp)	# %sfp
	movl	$0, 268(%rsp)	#, %sfp
	movl	168(%rsp), %eax	# %sfp, i
	leal	0(,%rax,8), %eax	#, _1144
	movl	%eax, 260(%rsp)	# _1144, %sfp
	jmp	.L77	#
.L74:
	incl	%esi	# q.31_1
	xorl	%edx, %edx	# tt.32_2
	jmp	.L80	#
.L86:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE9782:
	.size	_Z4gemmiiiPKaS0_Pi._omp_fn.0, .-_Z4gemmiiiPKaS0_Pi._omp_fn.0
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.globl	_Z4gemmiiiPKaS0_Pi
	.type	_Z4gemmiiiPKaS0_Pi, @function
_Z4gemmiiiPKaS0_Pi:
.LFB9065:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9065
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %r10d	# m, tmp259
	movl	%esi, %eax	# n, tmp260
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
	movq	%rcx, %r12	# tmp262, A
# /box/i8mm.cc:220:     const int an = (m + nb - 1) / nb; // number of row blocks in array A
	leal	14(%rdi), %ecx	#, tmp199
# /box/i8mm.cc:218: void gemm(int m, int n, int k, const std::int8_t *A, const std::int8_t *B, std::int32_t *C) {
	pushq	%rbx	#
	.cfi_offset 3, -56
	movl	%edx, %ebx	# tmp261, k
# /box/i8mm.cc:219:     const int vc = (k - 1 + vs) / vs; // number of vector column
	leal	62(%rbx), %r14d	#, tmp194
# /box/i8mm.cc:218: void gemm(int m, int n, int k, const std::int8_t *A, const std::int8_t *B, std::int32_t *C) {
	andq	$-64, %rsp	#,
	subq	$256, %rsp	#,
# /box/i8mm.cc:218: void gemm(int m, int n, int k, const std::int8_t *A, const std::int8_t *B, std::int32_t *C) {
	movl	%esi, 120(%rsp)	# n, n
	movl	%edi, 124(%rsp)	# m, m
	movq	%r9, 64(%rsp)	# tmp264, %sfp
	movq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp268
	movq	%rdx, 248(%rsp)	# tmp268, D.110728
	xorl	%edx, %edx	# tmp268
# /box/i8mm.cc:219:     const int vc = (k - 1 + vs) / vs; // number of vector column
	movl	%ebx, %edx	# k, tmp192
	addl	$31, %edx	#, tmp192
	cmovns	%edx, %r14d	# tmp194,, tmp192, tmp193
# /box/i8mm.cc:221:     const int bn = (n + nb - 1) / nb; // number of column blocks in array B
	leal	14(%rax), %edx	#, tmp204
# /box/i8mm.cc:219:     const int vc = (k - 1 + vs) / vs; // number of vector column
	sarl	$5, %r14d	#, tmp195
# /box/i8mm.cc:220:     const int an = (m + nb - 1) / nb; // number of row blocks in array A
	addl	$7, %r10d	#, tmp196
	cmovns	%r10d, %ecx	# tmp199,, tmp196, tmp198
	movl	%ecx, %esi	# tmp198, tmp200
	sarl	$3, %esi	#, tmp200
# /box/i8mm.cc:221:     const int bn = (n + nb - 1) / nb; // number of column blocks in array B
	addl	$7, %eax	#, tmp201
	cmovs	%edx, %eax	# tmp204,, tmp203
# /box/i8mm.cc:220:     const int an = (m + nb - 1) / nb; // number of row blocks in array A
	movl	%esi, 60(%rsp)	# tmp200, %sfp
# /box/i8mm.cc:221:     const int bn = (n + nb - 1) / nb; // number of column blocks in array B
	movl	%eax, %esi	# tmp203, tmp205
	sarl	$3, %esi	#, tmp205
	movl	%esi, 56(%rsp)	# tmp205, %sfp
# /box/i8mm.cc:222:     const int ap = nb * an; // number of row in matrix A after padding
	movl	%ecx, %esi	# tmp198, tmp198
	andl	$-8, %esi	#, tmp198
# /box/i8mm.cc:223:     const int bp = nb * bn; // number of column in matrix B after padding
	andl	$-8, %eax	#, tmp203
	movl	%eax, 100(%rsp)	# tmp203, %sfp
# /box/i8mm.cc:225:     std::vector<int16_32t> A_v (ap * vc);
	movl	%esi, %eax	# ap, tmp206
	imull	%r14d, %eax	# tmp195, tmp206
# /box/i8mm.cc:222:     const int ap = nb * an; // number of row in matrix A after padding
	movl	%esi, 88(%rsp)	# ap, %sfp
# /box/i8mm.cc:225:     std::vector<int16_32t> A_v (ap * vc);
	cltq
# /usr/include/c++/12/bits/stl_vector.h:1904: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movq	%rax, %rsi	# _7, tmp269
	shrq	$57, %rsi	#, tmp269
	jne	.L153	#,
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 128(%rsp)	#, MEM[(struct _Vector_impl_data *)&A_v]._M_start
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 136(%rsp)	#, MEM[(struct _Vector_impl_data *)&A_v]._M_finish
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 144(%rsp)	#, MEM[(struct _Vector_impl_data *)&A_v]._M_end_of_storage
	movq	%r8, %r13	# tmp263, B
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rax, %rax	# _7
	je	.L154	#,
# /usr/include/c++/12/bits/new_allocator.h:133: 	    return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp),
	salq	$6, %rax	#, _7
	movl	$64, %esi	#,
	movq	%rax, %rdi	# _141,
	movq	%rax, %r15	# _7, _141
.LEHB0:
	call	_ZnwmSt11align_val_t@PLT	#
.LEHE0:
	movq	%rax, %rdx	# tmp265, _142
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 128(%rsp)	# _142, MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_start
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vpxor	%xmm0, %xmm0, %xmm0	# tmp210
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	leaq	(%rax,%r15), %rax	#, __first
# /usr/include/c++/12/bits/stl_uninitialized.h:662: 	      ++__first;
	leaq	64(%rdx), %rcx	#, __first
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rax, 144(%rsp)	# __first, MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_end_of_storage
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vmovdqa64	%zmm0, (%rdx)	# tmp210, *_142
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rcx, %rax	# __first, __first
	je	.L90	#,
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	leaq	128(%rdx), %rcx	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	%zmm0, 64(%rdx)	# tmp210, MEM[(vector(32) short int *)_142 + 64B]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rax, %rcx	# __first, __first
	je	.L90	#,
.L92:
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	(%rdx), %zmm2	# MEM[(const vector(32) short int &)_142], tmp378
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	addq	$64, %rcx	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	%zmm2, -64(%rcx)	# tmp378, MEM[(vector(32) short int *)__first_157]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rax, %rcx	# __first, __first
	jne	.L92	#,
.L90:
# /box/i8mm.cc:226:     std::vector<int16_32t> B_t (bp * vc);
	movl	100(%rsp), %r15d	# %sfp, tmp213
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rax, 136(%rsp)	# __first, A_v.D.100702._M_impl.D.100008._M_finish
# /box/i8mm.cc:226:     std::vector<int16_32t> B_t (bp * vc);
	imull	%r14d, %r15d	# tmp195, tmp213
# /box/i8mm.cc:226:     std::vector<int16_32t> B_t (bp * vc);
	movslq	%r15d, %r15	# tmp213, _9
# /usr/include/c++/12/bits/stl_vector.h:1904: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movq	%r15, %rax	# _9, tmp270
	shrq	$57, %rax	#, tmp270
	jne	.L155	#,
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 160(%rsp)	#, MEM[(struct _Vector_impl_data *)&B_t]._M_start
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 168(%rsp)	#, MEM[(struct _Vector_impl_data *)&B_t]._M_finish
# /usr/include/c++/12/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 176(%rsp)	#, MEM[(struct _Vector_impl_data *)&B_t]._M_end_of_storage
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%r15, %r15	# _9
	je	.L94	#,
# /usr/include/c++/12/bits/new_allocator.h:133: 	    return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp),
	salq	$6, %r15	#, _161
	movl	$64, %esi	#,
	movq	%r15, %rdi	# _161,
	vzeroupper
.LEHB1:
	call	_ZnwmSt11align_val_t@PLT	#
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vpxor	%xmm0, %xmm0, %xmm0	# tmp217
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	%rax, %r15	# _162, _126
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rax, 160(%rsp)	# _162, MEM[(struct _Vector_base *)&B_t]._M_impl.D.100008._M_start
# /usr/include/c++/12/bits/new_allocator.h:133: 	    return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp),
	movq	%rax, %r8	# tmp266, _162
# /usr/include/c++/12/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	vmovdqa64	%zmm0, (%rax)	# tmp217, *_162
# /usr/include/c++/12/bits/stl_uninitialized.h:662: 	      ++__first;
	leaq	64(%rax), %rax	#, __first
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%r15, 176(%rsp)	# _126, MEM[(struct _Vector_base *)&B_t]._M_impl.D.100008._M_end_of_storage
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rax, %r15	# __first, _126
	je	.L96	#,
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	leaq	128(%r8), %rax	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	%zmm0, 64(%r8)	# tmp217, MEM[(vector(32) short int *)_162 + 64B]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%r15, %rax	# _126, __first
	je	.L97	#,
.L98:
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	(%r8), %zmm3	# MEM[(const vector(32) short int &)_162], tmp381
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	addq	$64, %rax	#, __first
# /usr/include/c++/12/bits/stl_algobase.h:910: 	*__first = __value;
	vmovdqa64	%zmm3, -64(%rax)	# tmp381, MEM[(vector(32) short int *)__first_146]
# /usr/include/c++/12/bits/stl_algobase.h:909:       for (; __first != __last; ++__first)
	cmpq	%rax, %r15	# __first, _126
	jne	.L98	#,
.L97:
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	%r15, %rax	# _126, __first
.L96:
	leaq	124(%rsp), %rsi	#, tmp220
	vmovq	%rsi, %xmm1	# tmp220, tmp220
	leaq	120(%rsp), %rdx	#, tmp221
# /usr/include/c++/12/bits/stl_vector.h:1712: 	this->_M_impl._M_finish =
	movq	%rax, 168(%rsp)	# __first, B_t.D.100702._M_impl.D.100008._M_finish
	vpinsrq	$1, %rdx, %xmm1, %xmm1	# tmp221, tmp220, _82
# /box/i8mm.cc:228:     for (int i = 0; i < vc; i++) {
	testl	%ebx, %ebx	# k
	jle	.L99	#,
# /box/i8mm.cc:240:                 if (i * vs + l >= k || j >= n) {
	movl	120(%rsp), %edi	# n, n.3_28
# /box/i8mm.cc:231:                 if (j >= m || i * vs + l >= k) {
	movl	124(%rsp), %eax	# m, m.2_10
	movl	88(%rsp), %edx	# %sfp, ap
	movl	%edi, %esi	# n.3_28, _242
	sall	$5, %esi	#, _242
	movl	%esi, 76(%rsp)	# _242, %sfp
# /box/i8mm.cc:240:                 if (i * vs + l >= k || j >= n) {
	xorl	%ecx, %ecx	# ivtmp.216
# /box/i8mm.cc:228:     for (int i = 0; i < vc; i++) {
	xorl	%esi, %esi	# i
	cmpl	%edx, %eax	# ap, m.2_10
	cmovle	%eax, %edx	# m.2_10,, _261
# /box/i8mm.cc:231:                 if (j >= m || i * vs + l >= k) {
	movl	%eax, 80(%rsp)	# m.2_10, %sfp
	movl	100(%rsp), %eax	# %sfp, bp
# /box/i8mm.cc:240:                 if (i * vs + l >= k || j >= n) {
	movl	$0, 84(%rsp)	#, %sfp
	cmpl	%eax, %edi	# bp, n.3_28
	cmovle	%edi, %eax	# n.3_28,, _134
	movl	%edx, 96(%rsp)	# _261, %sfp
	movl	%eax, 92(%rsp)	# _134, %sfp
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	128(%rsp), %r9	# A_v.D.100702._M_impl.D.100008._M_start, _86
# /box/i8mm.cc:232:                     A_v[j * vc + i][l] = 0;
	vpxor	%xmm0, %xmm0, %xmm0	# tmp255
.L100:
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	movl	88(%rsp), %edx	# %sfp,
	testl	%edx, %edx	#
	jle	.L121	#,
	movl	80(%rsp), %eax	# %sfp,
	xorl	%r11d, %r11d	# j
	testl	%eax, %eax	#
	jg	.L156	#,
.L109:
	movl	%r11d, %r10d	# j, tmp228
	imull	%r14d, %r10d	# tmp195, tmp228
	movl	88(%rsp), %r15d	# %sfp, ap
	addl	%esi, %r10d	# i, ivtmp.198
	.p2align 4,,10
	.p2align 3
.L107:
# /box/i8mm.cc:235:                 A_v[j * vc + i][l] = A[j * k + i * vs + l];
	movslq	%r10d, %rdx	# ivtmp.198, ivtmp.198
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rdx	#, tmp230
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%r9, %rdx	# _86, tmp231
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	incl	%r11d	# j
# /box/i8mm.cc:232:                     A_v[j * vc + i][l] = 0;
	vmovdqu8	%ymm0, (%rdx)	# tmp255, MEM <char[1:64]> [(void *)_84]
	vmovdqu8	%ymm0, 32(%rdx)	# tmp255, MEM <char[1:64]> [(void *)_84]
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	addl	%r14d, %r10d	# tmp195, ivtmp.198
	cmpl	%r11d, %r15d	# j, ap
	jg	.L107	#,
.L121:
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	movl	100(%rsp), %r10d	# %sfp,
	testl	%r10d, %r10d	#
	jle	.L110	#,
	xorl	%r10d, %r10d	# j
	testl	%edi, %edi	# n.3_28
	jg	.L157	#,
.L112:
	movl	%r10d, %r11d	# j, tmp238
	imull	%r14d, %r11d	# tmp195, tmp238
	movl	100(%rsp), %eax	# %sfp, bp
	addl	%esi, %r11d	# i, ivtmp.179
	.p2align 4,,10
	.p2align 3
.L119:
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movslq	%r11d, %rdx	# ivtmp.179, ivtmp.179
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rdx	#, tmp240
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%r8, %rdx	# _162, tmp241
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	incl	%r10d	# j
# /box/i8mm.cc:241:                     B_t[j * vc + i][l] = 0;
	vmovdqu8	%ymm0, (%rdx)	# tmp255, MEM <char[1:64]> [(void *)_166]
	vmovdqu8	%ymm0, 32(%rdx)	# tmp255, MEM <char[1:64]> [(void *)_166]
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	addl	%r14d, %r11d	# tmp195, ivtmp.179
	cmpl	%r10d, %eax	# j, bp
	jg	.L119	#,
.L110:
# /box/i8mm.cc:228:     for (int i = 0; i < vc; i++) {
	movl	76(%rsp), %edx	# %sfp, _242
# /box/i8mm.cc:228:     for (int i = 0; i < vc; i++) {
	incl	%esi	# i
# /box/i8mm.cc:228:     for (int i = 0; i < vc; i++) {
	addl	%edx, 84(%rsp)	# _242, %sfp
	addl	$32, %ecx	#, ivtmp.216
	cmpl	%esi, %r14d	# i, tmp195
	jg	.L100	#,
.L99:
# /box/i8mm.cc:250:     #pragma omp parallel for collapse(2)
	movl	56(%rsp), %eax	# %sfp, tmp205
	movl	%r14d, 232(%rsp)	# tmp195, .omp_data_o.28.vc
	movl	%eax, 240(%rsp)	# tmp205, .omp_data_o.28.bn
	movl	60(%rsp), %eax	# %sfp, tmp200
	vmovdqa	%xmm1, 192(%rsp)	# _82, MEM <vector(2) long unsigned int> [(int * *)&.omp_data_o.28]
	movl	%eax, 236(%rsp)	# tmp200, .omp_data_o.28.an
	movq	64(%rsp), %rax	# %sfp, C
	xorl	%ecx, %ecx	#
	movq	%rax, 208(%rsp)	# C, .omp_data_o.28.C
	leaq	128(%rsp), %rax	#, tmp243
	movq	%rax, 216(%rsp)	# tmp243, .omp_data_o.28.A_v
	leaq	160(%rsp), %rax	#, tmp244
	movq	%rax, 224(%rsp)	# tmp244, .omp_data_o.28.B_t
	xorl	%edx, %edx	#
	leaq	_Z4gemmiiiPKaS0_Pi._omp_fn.0(%rip), %rdi	#, tmp246
	leaq	192(%rsp), %rsi	#, tmp245
	vzeroupper
	call	GOMP_parallel@PLT	#
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	160(%rsp), %rdi	# B_t.D.100702._M_impl.D.100008._M_start, _106
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _106
	je	.L123	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	176(%rsp), %rsi	# MEM[(struct _Vector_base *)&B_t]._M_impl.D.100008._M_end_of_storage, tmp247
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	movl	$64, %edx	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rdi, %rsi	# _106, tmp247
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	call	_ZdlPvmSt11align_val_t@PLT	#
.L123:
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	128(%rsp), %rdi	# A_v.D.100702._M_impl.D.100008._M_start, _101
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _101
	je	.L87	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	144(%rsp), %rsi	# MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_end_of_storage, tmp249
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	movl	$64, %edx	#,
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rdi, %rsi	# _101, tmp249
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	call	_ZdlPvmSt11align_val_t@PLT	#
.L87:
# /box/i8mm.cc:304: }
	movq	248(%rsp), %rax	# D.110728, tmp271
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp271
	jne	.L158	#,
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
.L156:
	.cfi_restore_state
	movl	%edi, 112(%rsp)	# n.3_28, %sfp
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	movl	%ecx, %r10d	# ivtmp.216, ivtmp.212
	movl	%esi, %r15d	# i, ivtmp.211
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	xorl	%r11d, %r11d	# j
.L106:
# /box/i8mm.cc:235:                 A_v[j * vc + i][l] = A[j * k + i * vs + l];
	movslq	%r15d, %rdi	# ivtmp.211, ivtmp.211
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rdi	#, tmp223
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%r9, %rdi	# _86, _290
	xorl	%eax, %eax	# ivtmp.200
	.p2align 4,,10
	.p2align 3
.L104:
# /box/i8mm.cc:231:                 if (j >= m || i * vs + l >= k) {
	leal	(%rcx,%rax), %edx	#, tmp224
	cmpl	%edx, %ebx	# tmp224, k
	jle	.L101	#,
# /box/i8mm.cc:235:                 A_v[j * vc + i][l] = A[j * k + i * vs + l];
	leal	(%r10,%rax), %edx	#, tmp225
	movslq	%edx, %rdx	# tmp225, tmp226
# /box/i8mm.cc:235:                 A_v[j * vc + i][l] = A[j * k + i * vs + l];
	movsbw	(%r12,%rdx), %dx	# *_320, *_320
	movw	%dx, (%rdi,%rax,2)	# *_320, MEM <short int> [(value_type &)_290 + ivtmp.200_292 * 2]
# /box/i8mm.cc:230:             for (int l = 0; l < vs; l++) {
	incq	%rax	# ivtmp.200
	cmpq	$32, %rax	#, ivtmp.200
	jne	.L104	#,
.L103:
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	incl	%r11d	# j
# /box/i8mm.cc:229:         for (int j = 0; j < ap; j++) {
	addl	%r14d, %r15d	# tmp195, ivtmp.211
	addl	%ebx, %r10d	# k, ivtmp.212
	cmpl	%r11d, 96(%rsp)	# j, %sfp
	jg	.L106	#,
	movl	112(%rsp), %edi	# %sfp, n.3_28
	cmpl	%r11d, 88(%rsp)	# j, %sfp
	jg	.L109	#,
	jmp	.L121	#
	.p2align 4,,10
	.p2align 3
.L101:
# /box/i8mm.cc:232:                     A_v[j * vc + i][l] = 0;
	xorl	%edx, %edx	#
	movw	%dx, (%rdi,%rax,2)	#, MEM <short int> [(value_type &)_290 + ivtmp.200_292 * 2]
# /box/i8mm.cc:230:             for (int l = 0; l < vs; l++) {
	incq	%rax	# ivtmp.200
	cmpq	$32, %rax	#, ivtmp.200
	jne	.L104	#,
	jmp	.L103	#
.L157:
	movl	%esi, 72(%rsp)	# i, %sfp
	movq	%r13, 112(%rsp)	# B, %sfp
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	movl	84(%rsp), %r15d	# %sfp, ivtmp.193
	movl	%esi, %r11d	# i, ivtmp.192
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	xorl	%r10d, %r10d	# j
.L118:
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movslq	%r11d, %rsi	# ivtmp.192, ivtmp.192
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	movq	%r8, 104(%rsp)	# _162, %sfp
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	salq	$6, %rsi	#, tmp234
# /usr/include/c++/12/bits/stl_vector.h:1124: 	return *(this->_M_impl._M_start + __n);
	addq	%r8, %rsi	# _162, _149
	movl	%r15d, %edx	# ivtmp.193, ivtmp.188
	xorl	%eax, %eax	# ivtmp.181
	.p2align 4,,10
	.p2align 3
.L116:
# /box/i8mm.cc:240:                 if (i * vs + l >= k || j >= n) {
	leal	(%rcx,%rax), %r13d	#, tmp235
	cmpl	%r13d, %ebx	# tmp235, k
	jle	.L113	#,
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movq	112(%rsp), %r8	# %sfp, B
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movslq	%edx, %r13	# ivtmp.188, ivtmp.188
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movsbw	(%r8,%r13), %r13w	# *_172, *_172
# /box/i8mm.cc:239:             for (int l = 0; l < vs; l++) {
	addl	%edi, %edx	# n.3_28, ivtmp.188
# /box/i8mm.cc:244:                 B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
	movw	%r13w, (%rsi,%rax,2)	# *_172, MEM <short int> [(value_type &)_149 + ivtmp.181_31 * 2]
# /box/i8mm.cc:239:             for (int l = 0; l < vs; l++) {
	incq	%rax	# ivtmp.181
	cmpq	$32, %rax	#, ivtmp.181
	jne	.L116	#,
.L152:
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	incl	%r10d	# j
	movq	104(%rsp), %r8	# %sfp, _162
# /box/i8mm.cc:238:         for (int j = 0; j < bp; j++) {
	addl	%r14d, %r11d	# tmp195, ivtmp.192
	incl	%r15d	# ivtmp.193
	cmpl	%r10d, 92(%rsp)	# j, %sfp
	jg	.L118	#,
	movl	72(%rsp), %esi	# %sfp, i
	movq	112(%rsp), %r13	# %sfp, B
	cmpl	%r10d, 100(%rsp)	# j, %sfp
	jg	.L112	#,
	jmp	.L110	#
	.p2align 4,,10
	.p2align 3
.L113:
# /box/i8mm.cc:241:                     B_t[j * vc + i][l] = 0;
	xorl	%r8d, %r8d	#
	movw	%r8w, (%rsi,%rax,2)	#, MEM <short int> [(value_type &)_149 + ivtmp.181_31 * 2]
# /box/i8mm.cc:239:             for (int l = 0; l < vs; l++) {
	incq	%rax	# ivtmp.181
	addl	%edi, %edx	# n.3_28, ivtmp.188
	cmpq	$32, %rax	#, ivtmp.181
	jne	.L116	#,
	jmp	.L152	#
.L94:
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	$0, 160(%rsp)	#, MEM[(struct _Vector_base *)&B_t]._M_impl.D.100008._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	$0, 176(%rsp)	#, MEM[(struct _Vector_base *)&B_t]._M_impl.D.100008._M_end_of_storage
# /usr/include/c++/12/bits/stl_vector.h:378: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xorl	%r8d, %r8d	# _162
	xorl	%eax, %eax	# __first
	jmp	.L96	#
.L154:
# /usr/include/c++/12/bits/stl_vector.h:395: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	$0, 128(%rsp)	#, MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_start
# /usr/include/c++/12/bits/stl_vector.h:397: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	$0, 144(%rsp)	#, MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_end_of_storage
	jmp	.L90	#
.L155:
# /usr/include/c++/12/bits/stl_vector.h:1905: 	  __throw_length_error(
	leaq	.LC2(%rip), %rdi	#, tmp215
	vzeroupper
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE1:
.L153:
	leaq	.LC2(%rip), %rdi	#, tmp208
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT	#
.LEHE2:
.L158:
# /box/i8mm.cc:304: }
	call	__stack_chk_fail@PLT	#
.L128:
	endbr64	
# /usr/include/c++/12/bits/stl_vector.h:730: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	%rax, %rbx	# tmp267, tmp252
	jmp	.L125	#
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9065:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9065-.LLSDACSB9065
.LLSDACSB9065:
	.uleb128 .LEHB0-.LFB9065
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9065
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L128-.LFB9065
	.uleb128 0
	.uleb128 .LEHB2-.LFB9065
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9065:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC9065
	.type	_Z4gemmiiiPKaS0_Pi.cold, @function
_Z4gemmiiiPKaS0_Pi.cold:
.LFSB9065:
.L125:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	128(%rsp), %rdi	# A_v.D.100702._M_impl.D.100008._M_start, _111
# /usr/include/c++/12/bits/stl_vector.h:367: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	144(%rsp), %rsi	# MEM[(struct _Vector_base *)&A_v]._M_impl.D.100008._M_end_of_storage, _113
	subq	%rdi, %rsi	# _111, _113
# /usr/include/c++/12/bits/stl_vector.h:386: 	if (__p)
	testq	%rdi, %rdi	# _111
	je	.L149	#,
# /usr/include/c++/12/bits/new_allocator.h:153: 	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
	movl	$64, %edx	#,
	vzeroupper
	call	_ZdlPvmSt11align_val_t@PLT	#
.L126:
	movq	%rbx, %rdi	# tmp252,
.LEHB3:
	call	_Unwind_Resume@PLT	#
.LEHE3:
.L149:
	vzeroupper
	jmp	.L126	#
	.cfi_endproc
.LFE9065:
	.section	.gcc_except_table
.LLSDAC9065:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC9065-.LLSDACSBC9065
.LLSDACSBC9065:
	.uleb128 .LEHB3-.LCOLDB3
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC9065:
	.section	.text.unlikely
	.text
	.size	_Z4gemmiiiPKaS0_Pi, .-_Z4gemmiiiPKaS0_Pi
	.section	.text.unlikely
	.size	_Z4gemmiiiPKaS0_Pi.cold, .-_Z4gemmiiiPKaS0_Pi.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z4gemmiiiPKaS0_Pi, @function
_GLOBAL__sub_I__Z4gemmiiiPKaS0_Pi:
.LFB9781:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbx	#, tmp82
	movq	%rbx, %rdi	# tmp82,
# /box/i8mm.cc:304: }
	subq	$8, %rsp	#,
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	movq	%rbx, %rsi	# tmp82,
	leaq	__dso_handle(%rip), %rdx	#, tmp83
	call	__cxa_atexit@PLT	#
# /box/i8mm.cc:19: const __m512i m512i_epi32_zero = _mm512_set_epi32(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	vpxor	%xmm0, %xmm0, %xmm0	# tmp87
	vmovdqa64	%zmm0, _ZL16m512i_epi32_zero(%rip)	# tmp87, m512i_epi32_zero
	vzeroupper
# /box/i8mm.cc:304: }
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9781:
	.size	_GLOBAL__sub_I__Z4gemmiiiPKaS0_Pi, .-_GLOBAL__sub_I__Z4gemmiiiPKaS0_Pi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z4gemmiiiPKaS0_Pi
	.local	_ZL16m512i_epi32_zero
	.comm	_ZL16m512i_epi32_zero,64,64
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	8
	.long	9
	.long	10
	.long	11
	.align 32
.LC1:
	.long	4
	.long	5
	.long	6
	.long	7
	.long	12
	.long	13
	.long	14
	.long	15
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
