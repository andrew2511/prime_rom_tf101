.class public Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD5"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 5
    .parameter "digest"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 61
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    return-void
.end method

.method private derEncode([B)[B
    .registers 4
    .parameter "hash"

    .prologue
    .line 228
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 230
    .local v0, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDEREncoded()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSignature()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-nez v2, :cond_d

    .line 140
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_d
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v1, v2, [B

    .line 144
    .local v1, hash:[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 146
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v0

    .line 147
    .local v0, data:[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "withRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forSigning"
    .parameter "parameters"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    .line 87
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_20

    .line 89
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 96
    .local v1, k:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_10
    if-eqz p1, :cond_25

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_25

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "signing requires private key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1           #k:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_20
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #k:Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_10

    .line 101
    :cond_25
    if-nez p1, :cond_35

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "verification requires public key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    .line 108
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 109
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 223
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 118
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "input"
    .parameter "inOff"
    .parameter "length"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 129
    return-void
.end method

.method public verifySignature([B)Z
    .registers 15
    .parameter "signature"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 157
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v7, :cond_f

    .line 159
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "RSADigestSigner not initialised for verification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 162
    :cond_f
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v3, v7, [B

    .line 163
    .local v3, hash:[B
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v3, v10}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 170
    :try_start_1c
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    array-length v9, p1

    invoke-interface {v7, p1, v8, v9}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 171
    .local v5, sig:[B
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_38

    move-result-object v1

    .line 178
    .local v1, expected:[B
    array-length v7, v5

    array-length v8, v1

    if-ne v7, v8, :cond_3f

    .line 180
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2d
    array-length v7, v5

    if-ge v4, v7, :cond_7e

    .line 182
    aget-byte v7, v5, v4

    aget-byte v8, v1, v4

    if-eq v7, v8, :cond_3c

    move v7, v10

    .line 217
    .end local v1           #expected:[B
    .end local v4           #i:I
    .end local v5           #sig:[B
    :goto_37
    return v7

    .line 173
    :catch_38
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/Exception;
    move v7, v10

    .line 175
    goto :goto_37

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #expected:[B
    .restart local v4       #i:I
    .restart local v5       #sig:[B
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 188
    .end local v4           #i:I
    :cond_3f
    array-length v7, v5

    array-length v8, v1

    sub-int/2addr v8, v11

    if-ne v7, v8, :cond_7c

    .line 190
    array-length v7, v5

    array-length v8, v3

    sub-int/2addr v7, v8

    sub-int v6, v7, v11

    .line 191
    .local v6, sigOffset:I
    array-length v7, v1

    array-length v8, v3

    sub-int/2addr v7, v8

    sub-int v2, v7, v11

    .line 193
    .local v2, expectedOffset:I
    aget-byte v7, v1, v12

    sub-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v1, v12

    .line 194
    const/4 v7, 0x3

    aget-byte v8, v1, v7

    sub-int/2addr v8, v11

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 196
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5c
    array-length v7, v3

    if-ge v4, v7, :cond_6e

    .line 198
    add-int v7, v6, v4

    aget-byte v7, v5, v7

    add-int v8, v2, v4

    aget-byte v8, v1, v8

    if-eq v7, v8, :cond_6b

    move v7, v10

    .line 200
    goto :goto_37

    .line 196
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 204
    :cond_6e
    const/4 v4, 0x0

    :goto_6f
    if-ge v4, v6, :cond_7e

    .line 206
    aget-byte v7, v5, v4

    aget-byte v8, v1, v4

    if-eq v7, v8, :cond_79

    move v7, v10

    .line 208
    goto :goto_37

    .line 204
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .end local v2           #expectedOffset:I
    .end local v4           #i:I
    .end local v6           #sigOffset:I
    :cond_7c
    move v7, v10

    .line 214
    goto :goto_37

    .restart local v4       #i:I
    :cond_7e
    move v7, v12

    .line 217
    goto :goto_37
.end method
