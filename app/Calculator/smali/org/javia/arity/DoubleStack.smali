.class Lorg/javia/arity/DoubleStack;
.super Ljava/lang/Object;
.source "DoubleStack.java"


# instance fields
.field private im:[D

.field private re:[D

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 21
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 26
    return-void
.end method

.method getIm()[D
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v0, 0x1

    move v1, v6

    .line 62
    :goto_0
    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    if-ge v1, v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v6

    .line 68
    :cond_0
    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_1
    return-object v0

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v0, v0, [D

    .line 72
    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method getRe()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v0, v0, [D

    .line 56
    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v0
.end method

.method pop()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 52
    return-void
.end method

.method push(DD)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 29
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    .line 31
    new-array v1, v0, [D

    .line 32
    new-array v0, v0, [D

    .line 33
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 36
    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p1, v0, v1

    .line 39
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p3, v0, v1

    .line 40
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 41
    return-void
.end method
