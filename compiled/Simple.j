.class public Simple
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
	.var 2 is local_main_i I
	ldc 111111111
	invokestatic io/println(I)V
	iconst_1
	iconst_1
	iadd
	invokestatic io/println(I)V
	iconst_1
	iconst_1
	isub
	invokestatic io/println(I)V
	bipush 6
	iconst_2
	idiv
	invokestatic io/println(I)V
	bipush 8
	iconst_2
	imul
	invokestatic io/println(I)V
	return
.end method

.method public a(I)I
	.limit stack 1
	.limit locals 2
	iconst_1
	ireturn
.end method

.method public b()Z
	.limit stack 1
	.limit locals 1
	iconst_1
	ireturn
.end method

.method public cenas(IZLX;I[I)I
	.limit stack 1
	.limit locals 6
	iconst_2
	ireturn
.end method

