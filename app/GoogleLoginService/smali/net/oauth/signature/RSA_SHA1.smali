.class public Lnet/oauth/signature/RSA_SHA1;
.super Lnet/oauth/signature/OAuthSignatureMethod;
.source "RSA_SHA1.java"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    .line 89
    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    .line 90
    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private getPrivateKeyFromDer([B)Ljava/security/PrivateKey;
    .locals 3
    .parameter "privateKeyObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 181
    .local v0, fac:Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 182
    .local v1, privKeySpec:Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method private getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "privateKeyObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeyFromDer([B)Ljava/security/PublicKey;
    .locals 3
    .parameter "publicKeyObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 169
    .local v0, fac:Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 170
    .local v1, pubKeySpec:Ljava/security/spec/EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method private getPublicKeyFromDerCert([B)Ljava/security/PublicKey;
    .locals 4
    .parameter "certObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 161
    .local v1, fac:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    .local v2, in:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 163
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method private getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .parameter "publicKeyObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private getPublicKeyFromPemCert(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .parameter "certObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 153
    .local v1, fac:Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 154
    .local v2, in:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 155
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method private sign([B)[B
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    if-nez v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "need to set private key with OAuthConsumer.setProperty when generating RSA-SHA1 signatures."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 222
    .local v0, signer:Ljava/security/Signature;
    iget-object v1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 223
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 224
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "baseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/oauth/signature/RSA_SHA1;->sign([B)[B

    move-result-object v1

    .line 194
    .local v1, signature:[B
    invoke-static {v1}, Lnet/oauth/signature/RSA_SHA1;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 195
    .end local v1           #signature:[B
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 196
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lnet/oauth/OAuthException;

    invoke-direct {v2, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 197
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 198
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Lnet/oauth/OAuthException;

    invoke-direct {v2, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V
    .locals 7
    .parameter "name"
    .parameter "accessor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lnet/oauth/signature/OAuthSignatureMethod;->initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V

    .line 97
    iget-object v4, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v5, "RSA-SHA1.PrivateKey"

    invoke-virtual {v4, v5}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, privateKeyObject:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    instance-of v4, v2, Ljava/security/PrivateKey;

    if-eqz v4, :cond_2

    .line 101
    check-cast v2, Ljava/security/PrivateKey;

    .end local v2           #privateKeyObject:Ljava/lang/Object;
    iput-object v2, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    .line 114
    :cond_0
    :goto_0
    iget-object v4, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v5, "RSA-SHA1.PublicKey"

    invoke-virtual {v4, v5}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    .local v3, publicKeyObject:Ljava/lang/Object;
    if-eqz v3, :cond_8

    .line 116
    instance-of v4, v3, Ljava/security/PublicKey;

    if-eqz v4, :cond_5

    .line 117
    check-cast v3, Ljava/security/PublicKey;

    .end local v3           #publicKeyObject:Ljava/lang/Object;
    iput-object v3, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 102
    .restart local v2       #privateKeyObject:Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 103
    check-cast v2, Ljava/lang/String;

    .end local v2           #privateKeyObject:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 146
    .local v1, e:Ljava/security/GeneralSecurityException;
    new-instance v4, Lnet/oauth/OAuthException;

    invoke-direct {v4, v1}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 104
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    .restart local v2       #privateKeyObject:Ljava/lang/Object;
    :cond_3
    :try_start_1
    instance-of v4, v2, [B

    if-eqz v4, :cond_4

    .line 105
    check-cast v2, [B

    .end local v2           #privateKeyObject:Ljava/lang/Object;
    check-cast v2, [B

    invoke-direct {p0, v2}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    .line 107
    .restart local v2       #privateKeyObject:Ljava/lang/Object;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Private key set through RSA_SHA1.PRIVATE_KEY must be of type PrivateKey, String, or byte[], and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    .end local v2           #privateKeyObject:Ljava/lang/Object;
    .restart local v3       #publicKeyObject:Ljava/lang/Object;
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 119
    check-cast v3, Ljava/lang/String;

    .end local v3           #publicKeyObject:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    .line 120
    .restart local v3       #publicKeyObject:Ljava/lang/Object;
    :cond_6
    instance-of v4, v3, [B

    if-eqz v4, :cond_7

    .line 121
    check-cast v3, [B

    .end local v3           #publicKeyObject:Ljava/lang/Object;
    check-cast v3, [B

    invoke-direct {p0, v3}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    .line 123
    .restart local v3       #publicKeyObject:Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Public key set through RSA_SHA1.PRIVATE_KEY must be of type PublicKey, String, or byte[], and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_8
    iget-object v4, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v5, "RSA-SHA1.X509Certificate"

    invoke-virtual {v4, v5}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, certObject:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 131
    instance-of v4, v0, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_9

    .line 132
    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #certObject:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto/16 :goto_1

    .line 133
    .restart local v0       #certObject:Ljava/lang/Object;
    :cond_9
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 134
    check-cast v0, Ljava/lang/String;

    .end local v0           #certObject:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromPemCert(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto/16 :goto_1

    .line 135
    .restart local v0       #certObject:Ljava/lang/Object;
    :cond_a
    instance-of v4, v0, [B

    if-eqz v4, :cond_b

    .line 136
    check-cast v0, [B

    .end local v0           #certObject:Ljava/lang/Object;
    check-cast v0, [B

    invoke-direct {p0, v0}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDerCert([B)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto/16 :goto_1

    .line 138
    .restart local v0       #certObject:Ljava/lang/Object;
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X509Certificate set through RSA_SHA1.X509_CERTIFICATE must be of type X509Certificate, String, or byte[], and not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
.end method
