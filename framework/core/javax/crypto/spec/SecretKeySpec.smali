.class public Ljavax/crypto/spec/SecretKeySpec;
.super Ljava/lang/Object;
.source "SecretKeySpec.java"

# interfaces
.implements Ljavax/crypto/SecretKey;
.implements Ljava/security/spec/KeySpec;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b470b66e230614dL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private final key:[B


# direct methods
.method public constructor <init>([BIILjava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "offset"
    .parameter "len"
    .parameter "algorithm"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "RAW"

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->format:Ljava/lang/String;

    .line 95
    if-nez p1, :cond_11

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_11
    array-length v0, p1

    if-nez v0, :cond_1c

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1c
    if-ltz p3, :cond_20

    if-gez p2, :cond_28

    .line 103
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len < 0 || offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_28
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_34

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_34
    if-nez p4, :cond_3e

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3e
    iput-object p4, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 113
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 114
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "algorithm"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "RAW"

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->format:Ljava/lang/String;

    .line 59
    if-nez p1, :cond_12

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_12
    array-length v0, p1

    if-nez v0, :cond_1d

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1d
    if-nez p2, :cond_27

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_27
    iput-object p2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    .line 70
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .line 71
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 178
    :goto_5
    return v2

    .line 174
    :cond_6
    instance-of v2, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-nez v2, :cond_c

    move v2, v4

    .line 175
    goto :goto_5

    .line 177
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/SecretKeySpec;

    move-object v1, v0

    .line 178
    .local v1, ks:Ljavax/crypto/spec/SecretKeySpec;
    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    iget-object v3, v1, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v3, v1, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_26

    move v2, v5

    goto :goto_5

    :cond_26
    move v2, v4

    goto :goto_5
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 142
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    iget-object v2, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    const-string v0, "RAW"

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 153
    iget-object v5, p0, Ljavax/crypto/spec/SecretKeySpec;->algorithm:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 154
    .local v4, result:I
    iget-object v0, p0, Ljavax/crypto/spec/SecretKeySpec;->key:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_12

    aget-byte v1, v0, v2

    .line 155
    .local v1, element:B
    add-int/2addr v4, v1

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 157
    .end local v1           #element:B
    :cond_12
    return v4
.end method
