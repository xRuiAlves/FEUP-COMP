.class public StaticCalls
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
	.var 2 is i I
	.var 3 is b Z
	invokestatic StaticMethods/method1()I
	istore_2
	invokestatic StaticMethods/method2()V
	invokestatic StaticMethods/method3()Z
	istore_3
	sipush 12345
	invokestatic StaticMethods/method4(I)V
	return
.end method
