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
    .line 62
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ServerDomain"
    .parameter "proxy"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "http://192.168.1.31/api/"

    iput-object v0, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lnet/yostore/aws/api/BaseApi;->approxy:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lnet/yostore/aws/api/BaseApi;->apiSvr:Ljava/lang/String;

    .line 74
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
    .line 295
    const-string v0, "--*****\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 296
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

    .line 297
    const-string v0, "Content-Type: text/plain; charset=UTF-8\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 298
    const-string v0, "Content-Transfer-Encoding: 8bit\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 299
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 301
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 302
    return-void
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
    .line 153
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
    .locals 17
    .parameter "urlstr"
    .parameter "fileName"
    .parameter "input"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, client:Lorg/apache/commons/httpclient/HttpClient;
    const/4 v6, 0x0

    .line 234
    .local v6, filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    const/4 v10, 0x0

    check-cast v10, [B

    .line 237
    .local v10, response:[B
    :try_start_0
    new-instance v7, Lnet/yostore/aws/api/BaseApi$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/api/BaseApi$1;-><init>(Lnet/yostore/aws/api/BaseApi;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 242
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .local v7, filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :try_start_1
    new-instance v4, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v4}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 243
    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .local v4, client:Lorg/apache/commons/httpclient/HttpClient;
    const/4 v12, 0x5

    :try_start_2
    new-array v9, v12, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    const/4 v12, 0x0

    .line 244
    new-instance v13, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    const-string v14, "pa"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    .line 245
    new-instance v13, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    const-string v14, "d"

    const-string v15, ""

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    .line 246
    new-instance v13, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    const-string v14, "p"

    const-string v15, "0"

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    .line 247
    new-instance v13, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    const-string v14, "pr"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v9, v12

    const/4 v12, 0x4

    .line 248
    new-instance v13, Lnet/yostore/utility/CustomFilePart;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/yostore/utility/CustomFilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v13, v9, v12

    .line 250
    .local v9, parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    new-instance v12, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    invoke-virtual {v7, v12}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 251
    invoke-virtual {v4, v7}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v11

    .line 253
    .local v11, statuscode:I
    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    .line 255
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBody()[B

    move-result-object v10

    .line 257
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 258
    .local v8, is:Ljava/io/InputStream;
    sget-object v12, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 259
    invoke-virtual/range {p5 .. p5}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v12

    .line 288
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .line 290
    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .end local v11           #statuscode:I
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    :goto_0
    return-object v12

    .line 288
    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4       #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v9       #parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .restart local v11       #statuscode:I
    :cond_0
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 262
    const/4 v12, 0x0

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    goto :goto_0

    .line 265
    .end local v9           #parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .end local v11           #statuscode:I
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 268
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 290
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/4 v12, 0x0

    goto :goto_0

    .line 275
    :catch_1
    move-exception v12

    move-object v5, v12

    .line 278
    .local v5, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    goto :goto_2

    .line 280
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    move-object v5, v12

    .line 283
    .local v5, e:Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    goto :goto_2

    .line 286
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v12

    .line 288
    :goto_5
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 289
    throw v12

    .line 286
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_5

    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4       #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    goto :goto_5

    .line 280
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_3
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_4

    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4       #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_4
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    goto :goto_4

    .line 275
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_5
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_3

    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4       #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_6
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    goto :goto_3

    .line 265
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_7
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    goto :goto_1

    .end local v3           #client:Lorg/apache/commons/httpclient/HttpClient;
    .end local v6           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v4       #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    :catch_8
    move-exception v12

    move-object v5, v12

    move-object v6, v7

    .end local v7           #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    .restart local v6       #filePost:Lorg/apache/commons/httpclient/methods/PostMethod;
    move-object v3, v4

    .end local v4           #client:Lorg/apache/commons/httpclient/HttpClient;
    .restart local v3       #client:Lorg/apache/commons/httpclient/HttpClient;
    goto :goto_1
.end method

.method protected directIsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 16
    .parameter "urlstr"
    .parameter "fileName"
    .parameter "input"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 165
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v12, url:Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 168
    .local v7, con:Ljava/net/HttpURLConnection;
    new-instance v4, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v4}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 169
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

    .line 171
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 172
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 175
    const-string v13, "POST"

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 177
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v13, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v13, "Content-Type"

    const-string v14, "multipart/form-data;boundary=*****"

    invoke-virtual {v7, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 183
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v8, ds:Ljava/io/DataOutputStream;
    const-string v13, "pa"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v13, "d"

    const-string v14, ""

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v13, "p"

    const-string v14, "0"

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/BaseApi;->addMultiPartString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
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

    .line 190
    const-string v13, "--*****\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 191
    const-string v13, "Content-Disposition: form-data; name=\"file\";filename=\""

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 192
    const-string v13, "utf-8"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->write([B)V

    .line 193
    const-string v13, "\"\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 194
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 197
    const/16 v6, 0x400

    .line 198
    .local v6, bufferSize:I
    new-array v5, v6, [B

    .line 200
    .local v5, buffer:[B
    const/4 v11, -0x1

    .line 203
    .local v11, length:I
    :goto_0
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_0

    .line 208
    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 209
    const-string v13, "--*****--\r\n"

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V

    .line 213
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 217
    .local v10, is:Ljava/io/InputStream;
    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    move-object v0, v10

    move-object v1, v13

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 219
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 221
    invoke-virtual/range {p5 .. p5}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v13

    .line 227
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

    .line 205
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

    .line 206
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
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

    .line 225
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public fileUpload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
    .parameter "url"
    .parameter "file"
    .parameter "parentid"
    .parameter "handler"

    .prologue
    .line 146
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

    .line 78
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

    .line 79
    .local v5, urlStr:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, url:Ljava/net/URL;
    const-string v6, "BaseApi"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 83
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 89
    .local v0, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v6, "extension-pragma"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getC_ClientType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getV_ClientVersion()Ljava/lang/String;

    move-result-object v8

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

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_MANU_Maunfactory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_PROD_ProductModal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_PROD_ProductModal()Ljava/lang/String;

    move-result-object v8

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

    .line 90
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 92
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 101
    .local v2, in:Ljava/io/InputStream;
    sget-object v6, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v6, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    invoke-virtual {p2}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 105
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v6, "BaseApi"

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
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

    .line 111
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

    .line 112
    .local v5, urlStr:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, url:Ljava/net/URL;
    const-string v6, "BaseApi"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 116
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 121
    .local v0, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v6, "extension-pragma"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getC_ClientType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";v="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getV_ClientVersion()Ljava/lang/String;

    move-result-object v8

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

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_MANU_Maunfactory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";EEE_PROD_ProductModal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_PROD_ProductModal()Ljava/lang/String;

    move-result-object v8

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
    const-string v6, "ENCRYPTED_KEY"

    invoke-virtual {v1, v6, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 124
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 134
    .local v2, in:Ljava/io/InputStream;
    sget-object v6, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v6, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 136
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    invoke-virtual {p2}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 138
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v6, "BaseApi"

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v3
.end method
