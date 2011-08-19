.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$1;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blockSize:I

.field private ctx:I

.field private final evp_md:I

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter "algorithm"
    .parameter "evp_md"
    .parameter "size"
    .parameter "blockSize"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->algorithm:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->evp_md:I

    .line 66
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->size:I

    .line 67
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->blockSize:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private free()V
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    if-eqz v0, :cond_c

    .line 111
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    .line 114
    :cond_c
    return-void
.end method

.method private getCtx()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    if-nez v0, :cond_c

    .line 104
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->evp_md:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(I)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    .line 106
    :cond_c
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->getCtx()I

    move-result v1

    invoke-static {v1, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    move-result v0

    .line 97
    .local v0, i:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->ctx:I

    .line 98
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->reset()V

    .line 99
    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->free()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void

    .line 121
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->blockSize:I

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->size:I

    return v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->free()V

    .line 84
    return-void
.end method

.method public update(B)V
    .registers 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    aput-byte p1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->update([BII)V

    .line 89
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->getCtx()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    .line 93
    return-void
.end method
