.class public Fields
.super java/lang/Object

; class fields:
.field public f_x I


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
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
	.limit stack 2
	.limit locals 2
	aload_0
	iload_1
	putfield Fields/f_x I
	iload_1
	ireturn
.end method

.method public getX()I
	.limit stack 1
	.limit locals 1
	aload_0
	getfield Fields/f_x I
	ireturn
.end method

