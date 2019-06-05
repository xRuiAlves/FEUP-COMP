.class public MonteCarloPi
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public performSingleEstimate()Z
	.limit stack 3
	.limit locals 5
	.var 1 is local_rand2 I
	.var 2 is local_rand1 I
	.var 3 is local_in_circle Z
	.var 4 is local_squareDist I
	iconst_0
	bipush 100
	isub
	bipush 100
	invokestatic MathUtils/random(II)I
	istore_2
	iconst_0
	bipush 100
	isub
	bipush 100
	invokestatic MathUtils/random(II)I
	istore_1
	iload_2
	iload_2
	imul
	iload_1
	iload_1
	imul
	iadd
	bipush 100
	idiv
	istore 4
	iload 4
	bipush 100
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq else_0
	iconst_1
	istore_3
	goto endif_0
else_0:
	iconst_0
	istore_3
endif_0:
	iload_3
	ireturn
.end method

.method public estimatePi100(I)I
	.limit stack 2
	.limit locals 5
	.var 2 is local_pi_estimate I
	.var 3 is local_samples_so_far I
	.var 4 is local_samples_in_circle I
	iconst_0
	istore_3
	iconst_0
	istore 4
loop_2:
	iload_3
	iload_1
	if_icmpge lt_false_3
	iconst_1
	goto lt_done_3
lt_false_3:
	iconst_0
lt_done_3:
	ifeq endloop_2
	aload_0
	invokevirtual MonteCarloPi/performSingleEstimate()Z
	ifeq else_4
	iload 4
	iconst_1
	iadd
	istore 4
	goto endif_4
else_4:
endif_4:
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_2
endloop_2:
	sipush 400
	iload 4
	imul
	iload_1
	idiv
	istore_2
	iload_2
	ireturn
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 2
	.limit locals 4
	.var 2 is local_num_samples I
	.var 3 is local_pi_estimate_times_100 I
	invokestatic ioPlus/requestNumber()I
	istore_2
	new MonteCarloPi
	dup
	invokespecial MonteCarloPi/<init>()V
	iload_2
	invokevirtual MonteCarloPi/estimatePi100(I)I
	istore_3
	iload_3
	invokestatic ioPlus/printResult(I)V
	return
.end method

