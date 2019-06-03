.class public FindMaximum
.super java/lang/Object

; class fields:
.field public f_test_arr [I


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public find_maximum([I)I
	.limit stack 4
	.limit locals 5
	.var 2 is local_value I
	.var 3 is local_maximum I
	.var 4 is local_i I
	iconst_1
	istore 4
	aload_1
	iconst_0
	iaload
	istore_3
loop_0:
	iload 4
	aload_1
	arraylength
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
	aload_1
	iload 4
	iaload
	istore_2
	iload_3
	iload_2
	if_icmpge lt_false_3
	iconst_1
	goto lt_done_3
lt_false_3:
	iconst_0
lt_done_3:
	ifeq else_2
	iload_2
	istore_3
	goto endif_2
else_2:
endif_2:
	iload 4
	iconst_1
	iadd
	istore 4
	goto loop_0
endloop_0:
	iload_3
	ireturn
.end method

.method public build_test_arr()I
	.limit stack 5
	.limit locals 1
	aload_0
	iconst_5
	newarray int
	putfield FindMaximum/f_test_arr [I
	aload_0
	getfield FindMaximum/f_test_arr [I
	iconst_0
	bipush 14
	iastore
	aload_0
	getfield FindMaximum/f_test_arr [I
	iconst_1
	bipush 28
	iastore
	aload_0
	getfield FindMaximum/f_test_arr [I
	iconst_2
	iconst_0
	iastore
	aload_0
	getfield FindMaximum/f_test_arr [I
	iconst_3
	iconst_0
	iconst_5
	isub
	iastore
	aload_0
	getfield FindMaximum/f_test_arr [I
	iconst_4
	bipush 12
	iastore
	iconst_0
	ireturn
.end method

.method public get_array()[I
	.limit stack 1
	.limit locals 1
	aload_0
	getfield FindMaximum/f_test_arr [I
	areturn
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
	.limit locals 3
	.var 2 is local_fm LFindMaximum;
	new FindMaximum
	dup
	invokespecial FindMaximum/<init>()V
	astore_2
	aload_2
	invokevirtual FindMaximum/build_test_arr()I
	aload_2
	aload_2
	invokevirtual FindMaximum/get_array()[I
	invokevirtual FindMaximum/find_maximum([I)I
	invokestatic ioPlus/printResult(I)V
	return
.end method

