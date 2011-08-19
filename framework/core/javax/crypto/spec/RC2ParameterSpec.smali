.class public Ljavax/crypto/spec/RC2ParameterSpec;
.super Ljava/lang/Object;
.source "RC2ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final effectiveKeyBits:I

.field private final iv:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "effectiveKeyBits"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 42
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .parameter "effectiveKeyBits"
    .parameter "iv"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p2, :cond_10

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_10
    array-length v0, p2

    if-ge v0, v1, :cond_1b

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length < 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1b
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 66
    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 67
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(I[BI)V
    .registers 7
    .parameter "effectiveKeyBits"
    .parameter "iv"
    .parameter "offset"

    .prologue
    const/16 v2, 0x8

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p2, :cond_f

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_f
    array-length v0, p2

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1b

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iv.length - offset < 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1b
    iput p1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 96
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .line 97
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 141
    :goto_5
    return v2

    .line 137
    :cond_6
    instance-of v2, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v2, :cond_c

    move v2, v4

    .line 138
    goto :goto_5

    .line 140
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    move-object v1, v0

    .line 141
    .local v1, ps:Ljavax/crypto/spec/RC2ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    iget v3, v1, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v3, v1, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v5

    goto :goto_5

    :cond_22
    move v2, v4

    goto :goto_5
.end method

.method public getEffectiveKeyBits()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    return v0
.end method

.method public getIV()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v1, :cond_7

    .line 116
    const/4 v1, 0x0

    .line 120
    :goto_6
    return-object v1

    .line 118
    :cond_7
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 119
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 120
    goto :goto_6
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 152
    iget v4, p0, Ljavax/crypto/spec/RC2ParameterSpec;->effectiveKeyBits:I

    .line 153
    .local v4, result:I
    iget-object v6, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    if-nez v6, :cond_8

    move v5, v4

    .line 159
    .end local v4           #result:I
    .local v5, result:I
    :goto_7
    return v5

    .line 156
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_8
    iget-object v0, p0, Ljavax/crypto/spec/RC2ParameterSpec;->iv:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_14

    aget-byte v1, v0, v2

    .line 157
    .local v1, element:B
    add-int/2addr v4, v1

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .end local v1           #element:B
    :cond_14
    move v5, v4

    .line 159
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_7
.end method
