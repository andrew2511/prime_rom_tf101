.class public Lcom/android/org/bouncycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source "CMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# static fields
.field private static final CONSTANT_128:B = -0x79t

.field private static final CONSTANT_64:B = 0x1bt


# instance fields
.field private L:[B

.field private Lu:[B

.field private Lu2:[B

.field private ZEROES:[B

.field private buf:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/macs/CMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 6
    .parameter "cipher"
    .parameter "macSizeInBits"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_f

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_f
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_36

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_36
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4e

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4e

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size must be either 64 or 128 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_4e
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 90
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->macSize:I

    .line 92
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    .line 94
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    .line 96
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 99
    return-void
.end method

.method private doubleLu([B)[B
    .registers 9
    .parameter "in"

    .prologue
    const/4 v5, 0x1

    .line 108
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v0, v3, 0x7

    .line 109
    .local v0, FirstBit:I
    array-length v3, p1

    new-array v2, v3, [B

    .line 110
    .local v2, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_23

    .line 112
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 114
    :cond_23
    array-length v3, p1

    sub-int/2addr v3, v5

    array-length v4, p1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 115
    if-ne v0, v5, :cond_3f

    .line 117
    array-length v3, p1

    sub-int/2addr v3, v5

    aget-byte v4, v2, v3

    array-length v5, p1

    const/16 v6, 0x10

    if-ne v5, v6, :cond_40

    const/16 v5, -0x79

    :goto_3b
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 119
    :cond_3f
    return-object v2

    .line 117
    :cond_40
    const/16 v5, 0x1b

    goto :goto_3b
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v6, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 193
    .local v0, blockSize:I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    if-ne v3, v0, :cond_20

    .line 195
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->Lu:[B

    .line 203
    .local v2, lu:[B
    :goto_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2f

    .line 205
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    aget-byte v4, v3, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 199
    .end local v1           #i:I
    .end local v2           #lu:[B
    :cond_20
    new-instance v3, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-virtual {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/paddings/ISO7816d4Padding;->addPadding([BI)I

    .line 200
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .restart local v2       #lu:[B
    goto :goto_d

    .line 208
    .restart local v1       #i:I
    :cond_2f
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 210
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->macSize:I

    invoke-static {v3, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CMac;->reset()V

    .line 214
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->macSize:I

    return v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->macSize:I

    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CMac;->reset()V

    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->L:[B

    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->ZEROES:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->L:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 131
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->L:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->Lu:[B

    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->Lu:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/macs/CMac;->doubleLu([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->Lu2:[B

    .line 134
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 135
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    aput-byte v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 230
    :cond_e
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 235
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 236
    return-void
.end method

.method public update(B)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 144
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 147
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 150
    :cond_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 151
    return-void
.end method

.method public update([BII)V
    .registers 10
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 155
    if-gez p3, :cond_b

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 162
    .local v0, blockSize:I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    sub-int v1, v0, v2

    .line 164
    .local v1, gapLen:I
    if-le p3, v1, :cond_37

    .line 166
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 170
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 171
    sub-int/2addr p3, v1

    .line 172
    add-int/2addr p2, v1

    .line 174
    :goto_2b
    if-le p3, v0, :cond_37

    .line 176
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 178
    sub-int/2addr p3, v0

    .line 179
    add-int/2addr p2, v0

    goto :goto_2b

    .line 183
    :cond_37
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CMac;->bufOff:I

    .line 186
    return-void
.end method
