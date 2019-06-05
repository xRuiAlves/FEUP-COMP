.class public Constants
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
	.var 2 is local_c I
	iconst_3
	iconst_5
	imul
	istore_2
	iconst_3
	invokestatic io/println(I)V
	iconst_5
	invokestatic io/println(I)V
	iload_2
	invokestatic io/println(I)V
	return
.end method

