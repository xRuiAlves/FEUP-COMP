.class public SimpleIf
.super java/lang/Object

; class fields:


; standard implicit constructor
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 1
	.limit locals 3
	.var 2 is local_b Z
	iconst_1
	ifeq false_2
	iconst_0
	ifeq false_2
	iconst_1
	goto done_2
false_2:
	iconst_0
done_2:
	ifeq false_1
	iconst_1
	ifeq false_1
	iconst_1
	goto done_1
false_1:
	iconst_0
done_1:
	ifeq false_0
	iconst_1
	ifeq false_0
	iconst_1
	goto done_0
false_0:
	iconst_0
done_0:
	istore_2
	return
.end method

