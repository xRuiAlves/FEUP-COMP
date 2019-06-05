.class public Lazysort
.super Quicksort

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual Quicksort/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	.limit locals 6
	.var 2 is local_L [I
	.var 3 is local_i I
	.var 4 is local_d Z
	.var 5 is local_q LQuicksort;
	bipush 10
	newarray int
	astore_2
	iconst_0
	istore_3
loop_0:
	iload_3
	aload_2
	arraylength
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
	aload_2
	iload_3
	aload_2
	arraylength
	iload_3
	isub
	iastore
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_0
endloop_0:
	new Lazysort
	dup
	invokespecial Lazysort/<init>()V
	astore 5
	aload 5
	aload_2
	invokevirtual Quicksort/quicksort([I)Z
	aload 5
	aload_2
	invokevirtual Quicksort/printL([I)Z
	istore 4
	return
.end method

.method public quicksort([I)Z
	.limit stack 5
	.limit locals 3
	.var 2 is local_lazy Z
	iconst_0
	iconst_5
	invokestatic MathUtils/random(II)I
	iconst_4
	if_icmpge lt_false_3
	iconst_1
	goto lt_done_3
lt_false_3:
	iconst_0
lt_done_3:
	ifeq else_2
	aload_0
	aload_1
	invokevirtual Lazysort/beLazy([I)Z
	pop
	iconst_1
	istore_2
	goto endif_2
else_2:
	iconst_0
	istore_2
endif_2:
	iload_2
	ifeq else_4
	iload_2
	iconst_1
	ixor
	istore_2
	goto endif_4
else_4:
	aload_0
	aload_1
	iconst_0
	aload_1
	arraylength
	iconst_1
	isub
	invokevirtual Lazysort/quicksort([III)Z
	istore_2
endif_4:
	iload_2
	ireturn
.end method

.method public beLazy([I)Z
	.limit stack 4
	.limit locals 4
	.var 2 is local__allowedNameL I
	.var 3 is local_$allowedNameI I
	aload_1
	arraylength
	istore_2
	iconst_0
	istore_3
loop_5:
	iload_3
	iload_2
	iconst_2
	idiv
	if_icmpge lt_false_6
	iconst_1
	goto lt_done_6
lt_false_6:
	iconst_0
lt_done_6:
	ifeq endloop_5
	aload_1
	iload_3
	iconst_0
	bipush 10
	invokestatic MathUtils/random(II)I
	iastore
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_5
endloop_5:
loop_7:
	iload_3
	iload_2
	if_icmpge lt_false_8
	iconst_1
	goto lt_done_8
lt_false_8:
	iconst_0
lt_done_8:
	ifeq endloop_7
	aload_1
	iload_3
	iconst_0
	bipush 10
	invokestatic MathUtils/random(II)I
	iconst_1
	iadd
	iastore
	iload_3
	iconst_1
	iadd
	istore_3
	goto loop_7
endloop_7:
	iconst_1
	ireturn
.end method

