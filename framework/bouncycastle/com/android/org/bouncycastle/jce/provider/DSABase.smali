.class public abstract Lcom/android/org/bouncycastle/jce/provider/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field protected encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

.field protected signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;)V
    .registers 4
    .parameter "digest"
    .parameter "signer"
    .parameter "encoder"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 29
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    .line 30
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    .line 31
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/DSABase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 38
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 61
    .local v1, hash:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 65
    :try_start_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 67
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_21

    move-result-object v3

    return-object v3

    .line 69
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 71
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 45
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 54
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 8
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 81
    .local v1, hash:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    :try_start_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->encoder:Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;

    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jce/provider/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_20

    move-result-object v2

    .line 94
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 89
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_20
    move-exception v3

    move-object v0, v3

    .line 91
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
