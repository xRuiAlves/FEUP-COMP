.class public Vars
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
	.limit locals 10
	.var 2 is local_b1 Z
	.var 3 is local_var1 I
	.var 4 is local_var2 I
	.var 5 is local_var3 I
	.var 6 is local_var4 I
	.var 7 is local_var5 I
	.var 8 is local_b3 Z
	.var 9 is local_b2 Z
	iconst_1
	istore_2
	iconst_0
	istore 9
	iconst_2
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
	bipush 8
	iadd
	istore 7
	iload 7
	invokestatic io/println(I)V
	iload 7
	iconst_2
	imul
	iconst_2
	bipush 7
	imul
	iadd
	invokestatic io/println(I)V
	return
.end method

