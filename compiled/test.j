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
	.limit locals 3
	.var 2 is var1 I
	ldc 2
	istore_2
	iload_2
	invokestatic io/println(I)V
	iload_2
	ldc 2
	iadd
	invokestatic io/println(I)V
	iload_2
	ldc 8
	iadd
	istore_2
	iload_2
	invokestatic io/println(I)V
	iload_2
	ldc 2
	imul
	invokestatic io/println(I)V
	return
.end method

