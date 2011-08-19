.class public Lcom/ecareme/http/api/client/EncryptHttpClienlet;
.super Lcom/ecareme/http/api/client/HttpClienlet;
.source "EncryptHttpClienlet.java"


# static fields
.field private static cipher:Lcom/ecareme/utils/crypto/AESCipher;

.field private static final log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/ecareme/http/api/client/EncryptHttpClienlet;

    invoke-static {v1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    .line 34
    :try_start_0
    const-string v1, "EcaremeFC1AesKey"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v1

    sput-object v1, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    .line 35
    sget-object v1, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    const-string v2, "cipher initialized."

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 39
    .local v0, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v0}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/ecareme/http/api/client/HttpClienlet;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "proxyhost"
    .parameter "proxyport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {p0, p1, v0}, Lcom/ecareme/http/api/client/HttpClienlet;-><init>(Ljava/lang/String;Ljava/net/Proxy;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/net/Proxy;)V
    .locals 0
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/ecareme/http/api/client/HttpClienlet;-><init>(Ljava/lang/String;Ljava/net/Proxy;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected recvResponse(Lcom/ecareme/http/api/client/HttpClienletResponse;Ljava/io/InputStream;)V
    .locals 8
    .parameter "rsp"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {p2, v0}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 79
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rx raw:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 82
    :try_start_0
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/utils/codec/Base64;->decodeFast([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B

    move-result-object v1

    .line 83
    .local v1, clear:[B
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rx xml:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 84
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p1, v3}, Lcom/ecareme/http/api/client/HttpClienletResponse;->readFromInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 86
    .end local v1           #clear:[B
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 88
    .local v2, e:Lcom/ecareme/utils/crypto/CryptoException;
    new-instance v3, Lcom/ecareme/http/api/APIException;

    invoke-direct {v3, v2}, Lcom/ecareme/http/api/APIException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected sendRequest(Lcom/ecareme/http/api/client/HttpClienletRequest;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "req"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecareme/http/api/APIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lcom/ecareme/http/api/client/HttpClienletRequest;->sendToOutputStream(Ljava/io/OutputStream;)V

    .line 62
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tx xml:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 65
    :try_start_0
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->cipher:Lcom/ecareme/utils/crypto/AESCipher;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ecareme/utils/crypto/AESCipher;->encrypt([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/utils/codec/Base64;->encodeToByte([B)[B

    move-result-object v2

    .line 66
    .local v2, secret:[B
    sget-object v3, Lcom/ecareme/http/api/client/EncryptHttpClienlet;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tx raw:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    .end local v2           #secret:[B
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 71
    .local v1, e:Lcom/ecareme/utils/crypto/CryptoException;
    new-instance v3, Lcom/ecareme/http/api/APIException;

    invoke-direct {v3, v1}, Lcom/ecareme/http/api/APIException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
