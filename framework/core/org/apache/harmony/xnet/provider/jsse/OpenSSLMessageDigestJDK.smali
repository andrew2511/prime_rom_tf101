.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigest;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA512;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA384;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$MD5;
    }
.end annotation


# instance fields
.field private ctx:I

.field private final evp_md:I

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter "algorithm"
    .parameter "evp_md"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 54
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->evp_md:I

    .line 55
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private free()V
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    if-eqz v0, :cond_c

    .line 102
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    .line 105
    :cond_c
    return-void
.end method

.method private getCtx()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    if-nez v0, :cond_c

    .line 95
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->evp_md:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(I)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    .line 97
    :cond_c
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;

    .line 89
    .local v0, d:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_copy(I)I

    move-result v1

    iput v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    .line 90
    return-object v0
.end method

.method protected engineDigest()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v1, [B

    .line 82
    .local v0, result:[B
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v1

    invoke-static {v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    .line 83
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    .line 84
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected engineReset()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->free()V

    .line 61
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    .line 71
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    .line 72
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getCtx()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    .line 77
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->free()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 111
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
