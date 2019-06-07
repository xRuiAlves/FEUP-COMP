.class public Iinc
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
	.limit locals 4
	.var 2 is local_i I
	iconst_1
	istore_2
	iinc 2 1
	iload_2
	invokestatic io/println(I)V
	iconst_1
	iload_2
	isub
	istore_2
	iload_2
	invokestatic io/println(I)V
	iinc 2 4
	iload_2
	invokestatic io/println(I)V
	iconst_4
	iload_2
	isub
	istore_2
	iload_2
	invokestatic io/println(I)V
	iinc 2 -4
	iload_2
	invokestatic io/println(I)V
	return
.end method

