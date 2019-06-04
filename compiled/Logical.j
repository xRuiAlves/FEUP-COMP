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
	.limit stack 2
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
	iconst_2
	istore_3
	aload_2
	invokevirtual Logical/bar()I
	pop
endif_1:
	iload 6
	ifeq false_3
	aload_2
	invokevirtual Logical/foo()Z
	ifeq false_3
	iconst_1
	goto done_3
false_3:
	iconst_0
done_3:
	ifeq false_2
	iload 4
	ifeq false_2
	iconst_1
	goto done_2
false_2:
	iconst_0
done_2:
	istore 5
	iload 4
	ifeq false_5
	aload_2
	invokevirtual Logical/foo()Z
	ifeq false_5
	iconst_1
	goto done_5
false_5:
	iconst_0
done_5:
	ifeq false_4
	iload 6
	ifeq false_4
	iconst_1
	goto done_4
false_4:
	iconst_0
done_4:
	istore 5
	iload 5
	iconst_1
	ixor
	iconst_1
	ixor
	istore 5
	iload 5
	iconst_1
	ixor
	iconst_1
	ixor
	iconst_1
	ixor
	istore 5
	iconst_2
	istore 8
	iconst_3
	istore 7
	iload 8
	iload 7
	if_icmpge lt_false_6
	iconst_1
	goto lt_done_6
lt_false_6:
	iconst_0
lt_done_6:
	istore 5
	iload 8
	iload 7
	if_icmpge lt_false_8
	iconst_1
	goto lt_done_8
lt_false_8:
	iconst_0
lt_done_8:
	ifeq else_7
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
	if_icmpge lt_false_11
	iconst_1
	goto lt_done_11
lt_false_11:
	iconst_0
lt_done_11:
	ifeq false_10
	iconst_1
	ifeq false_10
	iconst_1
	goto done_10
false_10:
	iconst_0
done_10:
	ifeq else_9
	iconst_0
	iconst_1
	isub
	istore_3
	goto endif_9
else_9:
	sipush 200
	istore_3
endif_9:
	goto endif_7
else_7:
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
endif_7:
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

