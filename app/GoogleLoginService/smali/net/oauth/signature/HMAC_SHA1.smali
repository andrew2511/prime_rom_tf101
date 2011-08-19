.class Lnet/oauth/signature/HMAC_SHA1;
.super Lnet/oauth/signature/OAuthSignatureMethod;
.source "HMAC_SHA1.java"


# instance fields
.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private computeSignature(Ljava/lang/String;)[B
    .locals 7
    .parameter "baseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, key:Ljavax/crypto/SecretKey;
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v5, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    if-nez v5, :cond_0

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oauth/signature/HMAC_SHA1;->getConsumerSecret()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnet/oauth/signature/HMAC_SHA1;->getTokenSecret()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, keyString:Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    .local v1, keyBytes:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "HmacSHA1"

    invoke-direct {v5, v1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    .line 72
    .end local v1           #keyBytes:[B
    .end local v2           #keyString:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 75
    .local v3, mac:Ljavax/crypto/Mac;
    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 76
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 77
    .local v4, text:[B
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v5

    return-object v5

    .line 73
    .end local v3           #mac:Ljavax/crypto/Mac;
    .end local v4           #text:[B
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
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
    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lnet/oauth/signature/HMAC_SHA1;->computeSignature(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lnet/oauth/signature/HMAC_SHA1;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 40
    .local v1, signature:Ljava/lang/String;
    return-object v1

    .line 41
    .end local v1           #signature:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Lnet/oauth/OAuthException;

    invoke-direct {v2, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 44
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lnet/oauth/OAuthException;

    invoke-direct {v2, v0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerSecret"

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setConsumerSecret(Ljava/lang/String;)V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "tokenSecret"

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/HMAC_SHA1;->key:Ljavax/crypto/SecretKey;

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setTokenSecret(Ljava/lang/String;)V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
