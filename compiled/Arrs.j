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
	arraylength
	invokestatic io/println(I)V
	return
.end method

