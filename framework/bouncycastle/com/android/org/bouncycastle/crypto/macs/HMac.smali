.class public Lcom/android/org/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# static fields
.field private static final IPAD:B = 0x36t

.field private static final OPAD:B = 0x5ct

.field private static blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blockLength:I

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    .line 35
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD2"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "MD5"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .parameter "digest"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;I)V
    .registers 4
    .parameter "digest"
    .parameter "byteLength"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 89
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    .line 91
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    .line 93
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    .line 94
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    .line 95
    return-void
.end method

.method private static getByteLength(Lcom/android/org/bouncycastle/crypto/Digest;)I
    .registers 5
    .parameter "digest"

    .prologue
    .line 57
    instance-of v1, p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v1, :cond_b

    .line 59
    check-cast p0, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    .end local p0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v1

    .line 69
    :goto_a
    return v1

    .line 62
    .restart local p0
    :cond_b
    sget-object v1, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 64
    .local v0, b:Ljava/lang/Integer;
    if-nez v0, :cond_36

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown digest passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v5, 0x0

    .line 171
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    new-array v1, v2, [B

    .line 172
    .local v1, tmp:[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 174
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 175
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 177
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    .line 179
    .local v0, len:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/HMac;->reset()V

    .line 181
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    return v0
.end method

.method public getUnderlyingDigest()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 112
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .end local p1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 114
    .local v1, key:[B
    array-length v2, v1

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    if-le v2, v3, :cond_2c

    .line 116
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 117
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {v2, v3, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 118
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    .local v0, i:I
    :goto_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 120
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v5, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 125
    .end local v0           #i:I
    :cond_2c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v0, v1

    .restart local v0       #i:I
    :goto_33
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 128
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v5, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 132
    :cond_3f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    .line 133
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/4 v0, 0x0

    :goto_51
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_62

    .line 137
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 140
    :cond_62
    const/4 v0, 0x0

    :goto_63
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 142
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->outputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 145
    :cond_74
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 146
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 198
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "in"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 157
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 165
    return-void
.end method
