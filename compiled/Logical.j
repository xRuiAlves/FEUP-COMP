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

