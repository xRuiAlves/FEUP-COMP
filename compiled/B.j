.class public B
.super A

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual A/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 3
	.var 2 is local_a LA;
	new B
	dup
	invokespecial B/<init>()V
	astore_2
	aload_2
	invokevirtual A/foo()I
	return
.end method

.method public foo()I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 1
	iconst_2
	invokestatic io/println(I)V
	iconst_0
	ireturn
.end method

