.class public Parens
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10
	.limit locals 3
	.var 2 is local_x I
	iconst_1
	iconst_2
	iconst_1
	iconst_1
	iconst_1
	iconst_1
	iconst_1
	iconst_1
	iconst_1
	iconst_1
	idiv
	idiv
	idiv
	idiv
	idiv
	iadd
	iadd
	imul
	iadd
	istore_2
	iload_2
	invokestatic io/println(I)V
	return
.end method

