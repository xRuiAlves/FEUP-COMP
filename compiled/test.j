.class public X
.super java/lang/Object

; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 4
	.var 2 is main_b Z
	.var 3 is main_i I
	ldc 111111111
	invokestatic io/println(I)V
	ldc 1
	ldc 1
	iadd
	invokestatic io/println(I)V
	ldc 1
	ldc 1
	isub
	invokestatic io/println(I)V
	ldc 6
	ldc 2
	idiv
	invokestatic io/println(I)V
	ldc 8
	ldc 2
	imul
	invokestatic io/println(I)V
	return
.end method

.method public a(I)I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 2
	ldc 1
	ldc 0 ; mock return for boolean and int returning functions
	ireturn
.end method

.method public b()Z
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 1
	ldc 0 ; mock return for boolean and int returning functions
	ireturn
.end method

.method public cenas(IZLX;I[I)I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 6
	ldc 2
	ldc 0 ; mock return for boolean and int returning functions
	ireturn
.end method

