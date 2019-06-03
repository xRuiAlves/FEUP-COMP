.class public Logical
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 7
	.limit locals 9
	.var 2 is local_l LLogical;
	.var 3 is local_x I
	.var 4 is local_f Z
	.var 5 is local_bool Z
	.var 6 is local_t Z
	.var 7 is local_b I
	.var 8 is local_a I
	iconst_0
	istore 4
	iconst_1
	istore 6
	new Logical
	dup
	invokespecial Logical/<init>()V
	astore_2
	iload 6
	ifeq false_0
	iload 6
	ifeq false_0
	iconst_1
	goto done_0
false_0:
	iconst_0
done_0:
	istore 5
	iload 5
	iconst_1
	ixor
	iconst_1
	ixor
	ifeq else_1
	aload_2
	invokevirtual Logical/foo()Z
	pop
	goto endif_1
else_1:
	aload_2
	invokevirtual Logical/bar()I
endif_1:
	iconst_2
	istore 8
	iconst_3
	istore 7
	iload 8
	iload 7
	if_icmpge lt_false_3
	iconst_1
	goto lt_done_3
lt_false_3:
	iconst_0
lt_done_3:
	ifeq else_2
	bipush 123
	istore_3
	iload_3
	iconst_2
	iadd
	istore_3
	iload_3
	iconst_1
	isub
	istore_3
	iconst_2
	iconst_3
	if_icmpge lt_false_6
	iconst_1
	goto lt_done_6
lt_false_6:
	iconst_0
lt_done_6:
	ifeq false_5
	iconst_1
	ifeq false_5
	iconst_1
	goto done_5
false_5:
	iconst_0
done_5:
	ifeq else_4
	iconst_0
	iconst_1
	isub
	istore_3
	goto endif_4
else_4:
	sipush 200
	istore_3
endif_4:
	goto endif_2
else_2:
	sipush 456
	istore_3
	iload_3
	iconst_3
	iadd
	istore_3
	iload_3
	iconst_2
	isub
	istore_3
endif_2:
	iload_3
	invokestatic io/println(I)V
	return
.end method

.method public foo()Z
	.limit stack 1
	.limit locals 1
	ldc 90909
	invokestatic io/println(I)V
	iconst_1
	ireturn
.end method

.method public bar()I
	.limit stack 1
	.limit locals 1
	ldc 40404
	invokestatic io/println(I)V
	iconst_0
	ireturn
.end method

