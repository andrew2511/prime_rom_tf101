.class public final Lorg/codehaus/jackson/sym/Name2;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name2.java"


# instance fields
.field final mQuad1:I

.field final mQuad2:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "name"
    .parameter "hash"
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .parameter "quad"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 30
    iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals([II)Z
    .locals 4
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    aget v0, p1, v2

    iget v1, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    if-ne v0, v1, :cond_0

    aget v0, p1, v3

    iget v1, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
