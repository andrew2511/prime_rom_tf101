.class public Lcom/amazon/kcp/application/AndroidRequestSigner;
.super Lcom/amazon/kcp/application/internal/AbstractRequestSigner;
.source "AndroidRequestSigner.java"


# instance fields
.field private decodedKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/AbstractRequestSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 30
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 31
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 34
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 35
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/kcp/application/AndroidRequestSigner;->decodedKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 37
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 43
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 55
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public removeTokenAndKey()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/amazon/kcp/application/internal/AbstractRequestSigner;->removeTokenAndKey()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidRequestSigner;->decodedKey:Ljava/security/PrivateKey;

    .line 66
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/amazon/kcp/application/internal/AbstractRequestSigner;->setKey(Ljava/lang/String;)V

    .line 75
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .line 76
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 77
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidRequestSigner;->decodedKey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidRequestSigner can\'t set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
