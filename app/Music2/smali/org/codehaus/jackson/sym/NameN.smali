.class public final Lorg/codehaus/jackson/sym/NameN;
.super Lorg/codehaus/jackson/sym/Name;
.source "NameN.java"


# instance fields
.field final mQuadLen:I

.field final mQuads:[I


# direct methods
.method constructor <init>(Ljava/lang/String;I[II)V
    .locals 2
    .parameter "name"
    .parameter "hash"
    .parameter "quads"
    .parameter "quadLen"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 19
    const/4 v0, 0x3

    if-ge p4, v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Qlen must >= 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p3, p0, Lorg/codehaus/jackson/sym/NameN;->mQuads:[I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/sym/NameN;->mQuadLen:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .parameter "quad"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .locals 4
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v3, 0x0

    .line 37
    iget v1, p0, Lorg/codehaus/jackson/sym/NameN;->mQuadLen:I

    if-eq p2, v1, :cond_0

    move v1, v3

    .line 66
    :goto_0
    return v1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 62
    aget v1, p1, v0

    iget-object v2, p0, Lorg/codehaus/jackson/sym/NameN;->mQuads:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 63
    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
