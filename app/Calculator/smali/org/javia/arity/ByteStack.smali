.class Lorg/javia/arity/ByteStack;
.super Ljava/lang/Object;
.source "ByteStack.java"


# instance fields
.field private data:[B

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/ByteStack;->size:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/ByteStack;->size:I

    .line 25
    return-void
.end method

.method pop()B
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget v1, p0, Lorg/javia/arity/ByteStack;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/javia/arity/ByteStack;->size:I

    aget-byte v0, v0, v1

    return v0
.end method

.method push(B)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 28
    iget v0, p0, Lorg/javia/arity/ByteStack;->size:I

    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 30
    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget-object v2, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iput-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget v1, p0, Lorg/javia/arity/ByteStack;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/javia/arity/ByteStack;->size:I

    aput-byte p1, v0, v1

    .line 34
    return-void
.end method

.method toArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    iget v0, p0, Lorg/javia/arity/ByteStack;->size:I

    new-array v0, v0, [B

    .line 48
    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget v2, p0, Lorg/javia/arity/ByteStack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-object v0
.end method
