.class public ConstantPropagation
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 2
	.limit locals 5
	.var 2 is local_w I
	.var 3 is local_z I
	.var 4 is local_k I
	iconst_0
	istore 4
	iconst_3
	bipush 17
	iadd
	istore_3
	iload_3
	iconst_3
	imul
	iconst_5
	iadd
	istore_2
	iload 4
	bipush 10
	if_icmpge lt_false_1
	iconst_1
	goto lt_done_1
lt_false_1:
	iconst_0
lt_done_1:
	ifeq endloop_0
loop_0:
	iload 4
	invokestatic io/println(I)V
	iinc 4 3
	iload 4
	bipush 10
	if_icmpge lt_false_2
	iconst_1
	goto lt_done_2
lt_false_2:
	iconst_0
lt_done_2:
	ifne loop_0
endloop_0:
	iload_2
	invokestatic io/println(I)V
	return
.end method

