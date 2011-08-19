.class public final Lorg/codehaus/jackson/sym/Name3;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name3.java"


# instance fields
.field final mQuad1:I

.field final mQuad2:I

.field final mQuad3:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter "name"
    .parameter "hash"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad1:I

    .line 19
    iput p4, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad2:I

    .line 20
    iput p5, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad3:I

    .line 21
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .parameter "quad"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .locals 4
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    aget v0, p1, v2

    iget v1, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad1:I

    if-ne v0, v1, :cond_0

    aget v0, p1, v3

    iget v1, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget v0, p1, v0

    iget v1, p0, Lorg/codehaus/jackson/sym/Name3;->mQuad3:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
