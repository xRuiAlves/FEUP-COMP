.class public Arrs
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	.limit locals 3
	.var 2 is local_arr [I
	iconst_2
	newarray int
	astore_2
	aload_2
	iconst_0
	bipush 42
	iastore
	aload_2
	iconst_1
	sipush 402
	iastore
	aload_2
	iconst_0
	iaload
	invokestatic io/println(I)V
	aload_2
	iconst_1
	iaload
	invokestatic io/println(I)V
	aload_2
	arraylength
	invokestatic io/println(I)V
	aload_2
	iconst_1
	iconst_2
	iconst_5
	imul
	bipush 15
	iadd
	iastore
	aload_2
	iconst_0
	iaload
	invokestatic io/println(I)V
	aload_2
	iconst_1
	iaload
	invokestatic io/println(I)V
	return
.end method

