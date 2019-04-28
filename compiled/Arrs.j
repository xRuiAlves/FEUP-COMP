.class public Arrs
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
	.var 2 is arr [I
	ldc 2
	newarray int
	astore_2
	aload_2
	ldc 0
	ldc 42
	iastore
	aload_2
	ldc 1
	ldc 402
	iastore
	aload_2
	ldc 0
	iaload
	invokestatic io/println(I)V
	aload_2
	ldc 1
	iaload
	invokestatic io/println(I)V
	aload_2
	arraylength
	invokestatic io/println(I)V
	aload_2
	ldc 1
	ldc 2
	ldc 5
	imul
	ldc 15
	iadd
	iastore
	aload_2
	ldc 0
	iaload
	invokestatic io/println(I)V
	aload_2
	ldc 1
	iaload
	invokestatic io/println(I)V
	return
.end method

