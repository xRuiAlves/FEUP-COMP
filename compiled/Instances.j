.class public Instances
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
	.limit locals 4
	.var 2 is local_ins LInstances;
	.var 3 is local_ins2 LInstances;
	new Instances
	dup
	invokespecial Instances/<init>()V
	astore_2
	aload_2
	invokevirtual Instances/test()I
	aload_2
	sipush 301
	invokevirtual Instances/printMe(I)I
	new Instances
	dup
	invokespecial Instances/<init>()V
	astore_3
	aload_2
	aload_3
	invokevirtual Instances/amazing(LInstances;)I
	return
.end method

.method public test()I
	.limit stack 2
	.limit locals 1
	aload_0
	bipush 42
	invokevirtual Instances/printMe(I)I
	pop
	iconst_2
	ireturn
.end method

.method public printMe(I)I
	.limit stack 1
	.limit locals 2
	iload_1
	invokestatic io/println(I)V
	iconst_1
	ireturn
.end method

.method public amazing(LInstances;)I
	.limit stack 2
	.limit locals 2
	aload_1
	bipush 123
	invokevirtual Instances/printMe(I)I
	pop
	iconst_1
	ireturn
.end method

