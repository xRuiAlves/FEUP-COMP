.class public Fields
.super java/lang/Object

; class fields:
.field public x I


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 3
	.var 2 is local_f LFields;
	new Fields
	dup
	invokespecial Fields/<init>()V
	astore_2
	aload_2
	bipush 123
	invokevirtual Fields/setX(I)I
	aload_2
	invokevirtual Fields/getX()I
	invokestatic io/println(I)V
	aload_2
	sipush 420
	invokevirtual Fields/setX(I)I
	aload_2
	invokevirtual Fields/getX()I
	invokestatic io/println(I)V
	return
.end method

.method public setX(I)I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 2
	aload_0
	iload_1
	putfield Fields/x I
	iload_1
	ireturn
.end method

.method public getX()I
	.limit stack 10 ; temporary while stack size is not being calculated
	.limit locals 1
	aload_0
	getfield Fields/x I
	ireturn
.end method
