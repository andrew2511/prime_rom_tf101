.class public Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;
.super Ljava/security/SignatureSpi;
.source "JDKDSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner$noneDSA;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;)V
    .registers 3
    .parameter "digest"
    .parameter "signer"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 51
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    .line 52
    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 233
    .local v0, s:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v4

    return-object v1
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 6
    .parameter "r"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    .line 225
    .local v0, rs:[Lcom/android/org/bouncycastle/asn1/DERInteger;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 6
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 128
    .local v0, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_10

    .line 130
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v0           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .local v1, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    move-object v0, v1

    .line 133
    .end local v1           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .restart local v0       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_10
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 135
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 105
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 107
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 7
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 68
    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_14

    .line 71
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 96
    .local v2, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_8
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 97
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 98
    return-void

    .line 77
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_14
    :try_start_14
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 79
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 81
    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_25

    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_8

    .line 87
    .end local v2           #param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_25
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2d

    .line 90
    .end local v0           #bytes:[B
    :catch_2d
    move-exception v3

    move-object v1, v3

    .line 92
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 158
    .local v1, hash:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 162
    :try_start_e
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 164
    .local v2, sig:[Ljava/math/BigInteger;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1f

    move-result-object v3

    return-object v3

    .line 166
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_1f
    move-exception v3

    move-object v0, v3

    .line 168
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
    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 142
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
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 151
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

    .line 176
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 178
    .local v1, hash:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 184
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1e

    move-result-object v2

    .line 191
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDSASigner;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 186
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_1e
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
