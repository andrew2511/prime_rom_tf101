.class public abstract Lnet/yostore/aws/api/BaseApi;
.super Ljava/lang/Object;
.source "BaseApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseApi"

.field public static final TIMEOUT:I = 0x4e20

.field private static final boundary:Ljava/lang/String; = "*****"

.field public static clientversion:Ljava/lang/String; = null

.field private static final end:Ljava/lang/String; = "\r\n"

.field private static final twoHyphens:Ljava/lang/String; = "--"


# instance fields
.field private apiSvr:Ljava/lang/String;

.field private approxy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ServerDomain"
    .parameter "proxy"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "http://192.168.1.31/api/"

    iput-object v0, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ds"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "--*****\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 374
    const-string v0, "Content-Type: text/plain; charset=UTF-8\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 375
    const-string v0, "Content-Transfer-Encoding: 8bit\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 376
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 378
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private toAESDecodeByteArrInStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 10
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v3, byteBuffer:Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    .line 387
    .local v2, bufferSize:I
    new-array v1, v2, [B

    .line 390
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 391
    .local v6, len:I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 395
    const/4 v0, 0x0

    check-cast v0, [B

    .line 396
    .local v0, bs:[B
    const-string v7, ""

    .line 398
    .local v7, result:Ljava/lang/String;
    :try_start_0
    const-string v8, "EcaremeFC1AesKey"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/ecareme/utils/crypto/AESCipher;->getInstance([B)Lcom/ecareme/utils/crypto/AESCipher;

    move-result-object v4

    .line 399
    .local v4, cipher:Lcom/ecareme/utils/crypto/AESCipher;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/ecareme/utils/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v4, v0}, Lcom/ecareme/utils/crypto/AESCipher;->decrypt([B)[B
    :try_end_0
    .catch Lcom/ecareme/utils/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    .end local v4           #cipher:Lcom/ecareme/utils/crypto/AESCipher;
    :cond_0
    :goto_1
    const-string v8, "BaseApi"

    const-string v9, "================================================"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-eqz v0, :cond_1

    .line 410
    new-instance v7, Ljava/lang/String;

    .end local v7           #result:Ljava/lang/String;
    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 412
    .restart local v7       #result:Ljava/lang/String;
    :cond_1
    const-string v8, "BaseApi"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v8, "BaseApi"

    const-string v9, "================================================"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v8

    .line 392
    .end local v0           #bs:[B
    .end local v7           #result:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 403
    .restart local v0       #bs:[B
    .restart local v7       #result:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 405
    .local v5, e:Lcom/ecareme/utils/crypto/CryptoException;
    invoke-virtual {v5}, Lcom/ecareme/utils/crypto/CryptoException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dataUpload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "url"
    .parameter "fileName"
    .parameter "data"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 193
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 7
    .parameter "url"
    .parameter "fileName"
    .parameter "input"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 342
    .local v2, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    const-wide/16 v3, -0x3e7

    .line 346
    .local v3, rtnFileId:J
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p4, p2, v5}, Lnet/yostore/aws/model/http/AWSHttpUploader;->UploadArtifact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :goto_0
    return-object v2

    .line 356
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 358
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    :try_start_1
    const-string v5, "BaseApi"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Lnet/yostore/aws/api/exception/APIException;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 360
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 362
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "BaseApi"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 16
    .parameter "urlstr"
    .parameter "fileName"
    .parameter "input"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 205
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 206
    .local v12, url:Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 208
    .local v7, con:Ljava/net/HttpURLConnection;
    new-instance v4, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v4}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 209
    .local v4, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v13, "extension-pragma"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "sid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";c="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/ApiCookies;->getC_ClientType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";v="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/ApiCookies;->getV_ClientVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";x-v="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";EEE_MANU_Maunfactory="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_MANU_Maunfactory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";EEE_PROD_ProductModal="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_PROD_ProductModal()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";OS_VER="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 212
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 215
    const-string v13, "POST"

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 217
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v13, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v13, "Content-Type"

    const-string v14, "multipart/form-data;boundary=*****"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 223
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 225
    .local v8, ds:Ljava/io/DataOutputStream;
    const-string v13, "pa"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v13, "d"

    const-string v14, ""

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v13, "p"

    const-string v14, "0"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v13, "pr"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v13, "--*****\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 231
    const-string v13, "Content-Disposition: form-data; name=\"file\";filename=\""

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 232
    const-string v13, "utf-8"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 233
    const-string v13, "\"\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 234
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 237
    const/16 v6, 0x400

    .line 238
    .local v6, bufferSize:I
    new-array v5, v6, [B

    .line 240
    .local v5, buffer:[B
    const/4 v11, -0x1

    .line 243
    .local v11, length:I
    :goto_0
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_0

    .line 248
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 249
    const-string v13, "--*****--\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    .line 253
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 256
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 257
    .local v10, is:Ljava/io/InputStream;
    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object v0, v10

    move-object v1, v13

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 259
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 261
    invoke-virtual/range {p5 .. p5}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v13

    .line 267
    .end local v4           #apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    .end local v5           #buffer:[B
    .end local v6           #bufferSize:I
    .end local v7           #con:Ljava/net/HttpURLConnection;
    .end local v8           #ds:Ljava/io/DataOutputStream;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #length:I
    .end local v12           #url:Ljava/net/URL;
    :goto_1
    return-object v13

    .line 245
    .restart local v4       #apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    .restart local v5       #buffer:[B
    .restart local v6       #bufferSize:I
    .restart local v7       #con:Ljava/net/HttpURLConnection;
    .restart local v8       #ds:Ljava/io/DataOutputStream;
    .restart local v11       #length:I
    .restart local v12       #url:Ljava/net/URL;
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v5, v13, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 246
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v4           #apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    .end local v5           #buffer:[B
    .end local v6           #bufferSize:I
    .end local v7           #con:Ljava/net/HttpURLConnection;
    .end local v8           #ds:Ljava/io/DataOutputStream;
    .end local v11           #length:I
    .end local v12           #url:Ljava/net/URL;
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 265
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public fileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "url"
    .parameter "file"
    .parameter "fileName"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public fileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "url"
    .parameter "file"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 178
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "api"
    .parameter "params"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;ZZLnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getResponse(Ljava/lang/String;Ljava/lang/String;ZZLnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 15
    .parameter "api"
    .parameter "params"
    .parameter "isAES"
    .parameter "isSSL"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p4, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "https://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 60
    .local v11, urlStr:Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    .local v10, url:Ljava/net/URL;
    const-string v12, "BaseApi"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 64
    .local v6, conn:Ljava/net/HttpURLConnection;
    const/16 v12, 0x4e20

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    const/16 v12, 0x4e20

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    const-string v12, "POST"

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    new-instance v3, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v3}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 69
    .local v3, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v12, "extension-pragma"

    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "sid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 71
    const-string v14, "&c="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 72
    const-string v14, "&v="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 73
    const-string v14, "&x-v="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 74
    const-string v14, "&EEE_MANU_Maunfactory="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 75
    const-string v14, "&EEE_PROD_ProductModal="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 76
    const-string v14, "&OS_VER="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 70
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-virtual {v6, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 78
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 81
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 82
    .local v8, out:Ljava/io/OutputStream;
    const-string v12, "UTF8"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 83
    .local v5, bytes:[B
    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    .line 84
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 85
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 87
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 89
    .local v7, in:Ljava/io/InputStream;
    if-eqz p3, :cond_1

    .line 90
    invoke-direct {p0, v7}, Lnet/yostore/aws/api/BaseApi;->toAESDecodeByteArrInStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v4

    .line 91
    .local v4, bis:Ljava/io/ByteArrayInputStream;
    sget-object v12, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object v0, v4

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 98
    .end local v4           #bis:Ljava/io/ByteArrayInputStream;
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    .line 99
    .local v9, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v12, "BaseApi"

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v9

    .line 59
    .end local v3           #apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    .end local v5           #bytes:[B
    .end local v6           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #out:Ljava/io/OutputStream;
    .end local v9           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlStr:Ljava/lang/String;
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    goto/16 :goto_0

    .line 94
    .restart local v3       #apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    .restart local v5       #bytes:[B
    .restart local v6       #conn:Ljava/net/HttpURLConnection;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #out:Ljava/io/OutputStream;
    .restart local v10       #url:Ljava/net/URL;
    .restart local v11       #urlStr:Ljava/lang/String;
    :cond_1
    sget-object v12, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object v0, v7

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    goto :goto_1
.end method

.method protected getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 10
    .parameter "api"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x4e20

    const/4 v9, 0x1

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, urlStr:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, url:Ljava/net/URL;
    const-string v6, "BaseApi"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 115
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 116
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 117
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 121
    .local v0, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v6, "extension-pragma"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";x-v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_MANU_Maunfactory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_PROD_ProductModal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";OS_VER="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 133
    .local v2, in:Ljava/io/InputStream;
    sget-object v6, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v6, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 135
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    invoke-virtual {p2}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 137
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v6, "BaseApi"

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v3
.end method

.method protected getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;Ljava/lang/String;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 10
    .parameter "api"
    .parameter "handler"
    .parameter "encryptedPwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x4e20

    const/4 v9, 0x1

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, urlStr:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v4, url:Ljava/net/URL;
    const-string v6, "BaseApi"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 148
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 149
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 150
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 153
    .local v0, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v6, "extension-pragma"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";x-v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_MANU_Maunfactory="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_PROD_ProductModal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";OS_VER="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v6, "ENCRYPTED_KEY"

    invoke-virtual {v1, v6, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 156
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 157
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 166
    .local v2, in:Ljava/io/InputStream;
    sget-object v6, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v6, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    invoke-virtual {p2}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 170
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v6, "BaseApi"

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v3
.end method
