.class public HelloWorld
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 0
	.limit locals 2
	invokestatic ioPlus/printHelloWorld()V
	return
.end method

