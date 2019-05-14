.class public Logical
.super java/lang/Object

; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 6
	.var 2 is l LLogical;
	.var 3 is f Z
	.var 4 is bool Z
	.var 5 is t Z
	iconst_0
	istore_3
	iconst_1
	istore 5
	new Logical
	dup
	invokespecial Logical/<init>()V
	astore_2
	iload 5
	ifeq false_0
	iload 5
	ifeq false_0
	iconst_1
	goto done_0
false_0:
	iconst_0
done_0:
	istore 4
	iload 4
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
	pop
endif_1:
	return
.end method

.method public foo()Z
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 1
	ldc 90909
	invokestatic io/println(I)V
	iconst_1
	ireturn
.end method

.method public bar()I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 1
	ldc 40404
	invokestatic io/println(I)V
	iconst_0
	ireturn
.end method

