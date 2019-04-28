.class public Vars
.super java/lang/Object

; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 10
	.var 2 is b1 Z
	.var 3 is var1 I
	.var 4 is var2 I
	.var 5 is var3 I
	.var 6 is var4 I
	.var 7 is var5 I
	.var 8 is b3 Z
	.var 9 is b2 Z
	iconst_1
	istore_2
	iconst_0
	istore 9
	ldc 2
	istore_3
	iload_3
	istore 4
	iload 4
	istore 5
	iload 5
	istore 6
	iload 6
	istore 7
	iload 7
	invokestatic io/println(I)V
	iload 7
	iload_3
	iadd
	invokestatic io/println(I)V
	iload 7
	ldc 8
	iadd
	istore 7
	iload 7
	invokestatic io/println(I)V
	iload 7
	ldc 2
	imul
	ldc 2
	ldc 7
	imul
	iadd
	invokestatic io/println(I)V
	return
.end method

