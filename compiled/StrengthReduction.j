.class public StrengthReduction
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
	.limit locals 3
	.var 2 is local_x I
	iconst_2
	istore_2
	iload_2
	dup
	iadd
	istore_2
	iload_2
	invokestatic io/println(I)V
	iconst_2
	iconst_3
	ishl
	invokestatic io/println(I)V
	iconst_2
	iconst_4
	ishl
	invokestatic io/println(I)V
	iconst_2
	dup
	iadd
	invokestatic io/println(I)V
	bipush 15
	iconst_2
	imul
	invokestatic io/println(I)V
	iconst_2
	bipush 6
	imul
	invokestatic io/println(I)V
	iconst_3
	dup
	iadd
	invokestatic io/println(I)V
	iconst_3
	dup
	iadd
	invokestatic io/println(I)V
	iconst_3
	iconst_5
	imul
	invokestatic io/println(I)V
	return
.end method

