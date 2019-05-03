.class public VarLimits
.super java/lang/Object

; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 9
	.var 2 is i7 I
	.var 3 is i6 I
	.var 4 is i5 I
	.var 5 is i4 I
	.var 6 is i3 I
	.var 7 is i2 I
	.var 8 is i1 I
	iconst_2
	istore 8
	bipush 100
	istore 7
	bipush 127
	istore 6
	sipush 128
	istore 5
	sipush 32767
	istore 4
	ldc 32768
	istore_3
	ldc 100000
	istore_2
	return
.end method

