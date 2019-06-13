.class public Worker
.super Person

; class fields:
.field public f_idade I
.field public f_id LIdentification;


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual Person/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 3
	.limit locals 4
	.var 2 is local_p LWorker;
	.var 3 is local_a I
	iconst_2
	iconst_3
	iconst_4
	imul
	iadd
	new Worker
	dup
	invokespecial Worker/<init>()V
	astore_2
	aload_2
	iconst_1
	invokevirtual Worker/getInfo(Z)V
	return
.end method

.method public getInfo(ZLClassCoise;[I)[I
	.limit stack 1
	.limit locals 5
	.var 3 is local_b Z
	.var 4 is local_int_arr [I
	iconst_2
	newarray int
	astore 4
	aload 4
	areturn
.end method

