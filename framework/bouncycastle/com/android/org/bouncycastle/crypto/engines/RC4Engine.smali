.class public Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 18
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 19
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 20
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private setKey([B)V
    .registers 9
    .parameter "keyBytes"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x100

    .line 112
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 116
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 117
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 119
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    if-nez v4, :cond_11

    .line 121
    new-array v4, v6, [B

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 125
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v6, :cond_1c

    .line 127
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 130
    :cond_1c
    const/4 v1, 0x0

    .line 131
    .local v1, i1:I
    const/4 v2, 0x0

    .line 133
    .local v2, i2:I
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v6, :cond_45

    .line 135
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    .line 137
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v4, v0

    .line 138
    .local v3, tmp:B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    .line 139
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v3, v4, v2

    .line 140
    add-int/lit8 v4, v1, 0x1

    array-length v5, p1

    rem-int v1, v4, v5

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 142
    .end local v3           #tmp:B
    :cond_45
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "RC4"

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 35
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_12

    .line 42
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 45
    return-void

    .line 48
    .restart local p2
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)V
    .registers 14
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 77
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_d

    .line 79
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "input buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_d
    add-int v2, p5, p3

    array-length v3, p4

    if-le v2, v3, :cond_1a

    .line 84
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    if-ge v0, p3, :cond_6a

    .line 89
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 90
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 93
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v2, v3

    .line 94
    .local v1, tmp:B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 95
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    .line 98
    add-int v2, v0, p5

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 101
    .end local v1           #tmp:B
    :cond_6a
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 106
    return-void
.end method

.method public returnByte(B)B
    .registers 7
    .parameter "in"

    .prologue
    .line 58
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 59
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 62
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v1, v2

    .line 63
    .local v0, tmp:B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 64
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v0, v1, v2

    .line 67
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    return v1
.end method
