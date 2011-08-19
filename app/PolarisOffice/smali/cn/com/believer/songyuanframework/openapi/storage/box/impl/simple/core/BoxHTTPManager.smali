.class public final Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;
.super Ljava/lang/Object;
.source "BoxHTTPManager.java"


# static fields
.field private static instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager; = null

.field protected static final logTag:Ljava/lang/String; = "BoxExternalAPI"


# instance fields
.field private config:Ljava/util/Properties;

.field private hc:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->loadConfigProperties()V

    .line 67
    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;-><init>()V

    .line 70
    .local v1, connectionManager:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 71
    const-string v6, "box4j.config.httpclient.MaxConnectionsPerHost"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, maxConPerHost:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 72
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 75
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 76
    const-string v6, "box4j.config.httpclient.MaxTotalConnections"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, maxTotalCons:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 77
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 80
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 81
    const-string v6, "box4j.config.httpclient.ConnectionTimeout"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, connTimeout:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 82
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 85
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 86
    const-string v6, "box4j.config.httpclient.SoConnectionTimeout"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, soConnTimeout:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 87
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 90
    new-instance v5, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v5, v1}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    iput-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    .line 91
    return-void
.end method

.method public static getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;-><init>()V

    sput-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    .line 165
    :cond_0
    sget-object v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->instance:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    return-object v0
.end method

.method private loadConfigProperties()V
    .locals 7

    .prologue
    .line 133
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 136
    :try_start_0
    const-string v5, "user.dir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, userDir:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 138
    const-string v6, "box4j-config.properties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, propertyPath:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v2, in:Ljava/io/InputStream;
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 154
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #propertyPath:Ljava/lang/String;
    .end local v4           #userDir:Ljava/lang/String;
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 142
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "box4j-config.properties not found in classpath, use box4j-config-default.properties."

    invoke-static {v5, v6}, Lcom/infraware/common/CoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 144
    const-string v6, "box4j-config-default.properties"

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 146
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 147
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 148
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "io exception happened when loading box4j-config-default.properties"

    invoke-static {v5, v6, v0}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e1:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 151
    .local v0, e:Ljava/io/IOException;
    const-string v5, "BoxExternalAPI"

    const-string v6, "io exception occured when read box4j-config.properties"

    invoke-static {v5, v6, v0}, Lcom/infraware/common/CoLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 11
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, result:Lorg/dom4j/Document;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 263
    .local v5, t1:J
    const-string v7, "BoxExternalAPI"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    const-string v7, "BoxExternalAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "##### doGet-start  #####, url="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v7, "yes"

    iget-object v8, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 268
    const-string v9, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    const-string v8, "ignoreCookies"

    invoke-virtual {v7, v8}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 272
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v7, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 273
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v1

    .line 275
    .local v1, in:Ljava/io/InputStream;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 276
    .local v2, reader:Lorg/dom4j/io/SAXReader;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 277
    .local v4, source:Lorg/xml/sax/InputSource;
    invoke-virtual {v2, v4}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 281
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 283
    const-string v7, "BoxExternalAPI"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    const-string v7, "BoxExternalAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "##### doGet-end    #####, used time: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms,response=\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 286
    invoke-interface {v3}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2
    return-object v3

    .line 280
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #reader:Lorg/dom4j/io/SAXReader;
    .end local v4           #source:Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v7

    .line 281
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 282
    throw v7
.end method

.method public doGetByteArry(Ljava/lang/String;)[B
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 301
    const/4 v1, 0x0

    check-cast v1, [B

    .line 302
    .local v1, result:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 303
    .local v2, t1:J
    const-string v4, "BoxExternalAPI"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##### doGet-start  #####, url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v4, "yes"

    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 308
    const-string v6, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    const-string v5, "ignoreCookies"

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 312
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v4, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 313
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBody()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 315
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 317
    const-string v4, "BoxExternalAPI"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    const-string v4, "BoxExternalAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##### doGet-end    #####, used time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 320
    const-string v6, " ms,response is a file, size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    return-object v1

    .line 314
    :catchall_0
    move-exception v4

    .line 315
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 316
    throw v4
.end method

.method public doGetFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 13
    .parameter "url"
    .parameter "inFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x800

    const/4 v11, 0x3

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 338
    .local v6, t1:J
    const-string v8, "BoxExternalAPI"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 339
    const-string v8, "BoxExternalAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "##### doGet-start  #####, url="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    const/4 v5, 0x0

    .line 342
    .local v5, responseBodyInputStream:Ljava/io/InputStream;
    new-instance v3, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v3, p1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    const-string v8, "yes"

    iget-object v9, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 344
    const-string v10, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 345
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    const-string v9, "ignoreCookies"

    invoke-virtual {v8, v9}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 348
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v8, v3}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 349
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 351
    const/16 v1, 0x800

    .line 352
    .local v1, bufferSize:I
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 353
    .local v2, fout:Ljava/io/FileOutputStream;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 354
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 355
    .local v4, readCount:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 367
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 371
    const-string v8, "BoxExternalAPI"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 372
    const-string v8, "BoxExternalAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "##### doGet-end    #####, used time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 374
    const-string v10, " ms,response=[InputStream]\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 372
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    return-object p2

    .line 356
    :cond_3
    :try_start_1
    sget-boolean v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v8, :cond_4

    .line 358
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 368
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .end local v4           #readCount:I
    :catchall_0
    move-exception v8

    .line 369
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/methods/GetMethod;->releaseConnection()V

    .line 370
    throw v8

    .line 361
    .restart local v0       #buffer:[B
    .restart local v1       #bufferSize:I
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #readCount:I
    :cond_4
    if-ge v4, v12, :cond_5

    .line 362
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public doMultipartPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 21
    .parameter "url"
    .parameter "fileList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 439
    .local v15, t1:J
    const-string v17, "BoxExternalAPI"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 440
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, start, url="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    new-instance v10, Lorg/apache/commons/httpclient/methods/PostMethod;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 443
    .local v10, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 444
    .local v6, fileCounts:I
    new-array v11, v6, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 446
    .local v11, parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move v0, v9

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 488
    new-instance v12, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    .line 489
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v17

    .line 488
    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    .line 490
    .local v12, requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    invoke-virtual {v10, v12}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 493
    sget-boolean v17, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v17, :cond_1

    .line 495
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->abort()V

    .line 496
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 498
    :cond_1
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBody()[B

    move-result-object v14

    .line 499
    .local v14, responseBody:[B
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .line 500
    .local v13, response:Ljava/lang/String;
    const-string v17, "BoxExternalAPI"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 501
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, end, used time: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v15

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 501
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, end, response=\n"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_2
    return-object v13

    .line 448
    .end local v12           #requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #responseBody:[B
    :cond_3
    move-object/from16 v0, p2

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 449
    .local v5, f:Ljava/io/File;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v5

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager$1;-><init>(Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;Ljava/io/File;Ljava/io/File;Lorg/apache/commons/httpclient/methods/PostMethod;)V

    .line 484
    .local v8, fp:Lorg/apache/commons/httpclient/methods/multipart/FilePartSource;
    new-instance v7, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Filedata"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V

    .line 485
    .local v7, filePart:Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    aput-object v7, v11, v9

    .line 446
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public doMultipartPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 21
    .parameter "url"
    .parameter "filesHashMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 393
    .local v15, t1:J
    const-string v17, "BoxExternalAPI"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 394
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, start, url="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    new-instance v10, Lorg/apache/commons/httpclient/methods/PostMethod;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 397
    .local v10, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v5

    .line 398
    .local v5, fileCounts:I
    new-array v11, v5, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    .line 399
    .local v11, parts:[Lorg/apache/commons/httpclient/methods/multipart/Part;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 400
    .local v8, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 401
    .local v7, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 412
    new-instance v12, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    .line 413
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v17

    .line 412
    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    .line 414
    .local v12, requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    invoke-virtual {v10, v12}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 416
    invoke-virtual {v10}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBody()[B

    move-result-object v14

    .line 417
    .local v14, responseBody:[B
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .line 418
    .local v13, response:Ljava/lang/String;
    const-string v17, "BoxExternalAPI"

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 419
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, end, used time: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v15

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 419
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v17, "BoxExternalAPI"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "doPost, end, response=\n"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    return-object v13

    .line 402
    .end local v12           #requestEntity:Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .end local v13           #response:Ljava/lang/String;
    .end local v14           #responseBody:[B
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 403
    .local v9, key:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 404
    .local v4, data:[B
    new-instance v3, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;

    invoke-direct {v3, v9, v4}, Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    .line 406
    .local v3, byteArrayPartSource:Lorg/apache/commons/httpclient/methods/multipart/ByteArrayPartSource;
    new-instance v6, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Filedata"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Lorg/apache/commons/httpclient/methods/multipart/PartSource;)V

    .line 408
    .local v6, filePart:Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    aput-object v6, v11, v7

    .line 409
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 181
    .local v2, t1:J
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-start #####, url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    const-string v7, ", postData=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v1, 0x0

    .line 186
    .local v1, response:Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const-string v5, "yes"

    iget-object v6, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 188
    const-string v7, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    const-string v6, "ignoreCookies"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 192
    :cond_1
    :try_start_0
    new-instance v4, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v5, "data"

    invoke-direct {v4, v5, p2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v4, type:Lorg/apache/commons/httpclient/NameValuePair;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/commons/httpclient/NameValuePair;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 194
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v5, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 195
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 199
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-end   #####, used time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms,response=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 202
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_2
    return-object v1

    .line 196
    .end local v4           #type:Lorg/apache/commons/httpclient/NameValuePair;
    :catchall_0
    move-exception v5

    .line 197
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 198
    throw v5
.end method

.method public doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    .local v2, t1:J
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-start #####, url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    const-string v7, ", postData=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, response:Ljava/lang/String;
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const-string v5, "yes"

    iget-object v6, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 227
    const-string v7, "box4j.config.httpclient.IgnoreCookies"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    const-string v6, "ignoreCookies"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 233
    :cond_1
    :try_start_0
    new-instance v4, Lorg/apache/commons/httpclient/methods/StringRequestEntity;

    invoke-direct {v4, p2}, Lorg/apache/commons/httpclient/methods/StringRequestEntity;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, xmlRequestEntity:Lorg/apache/commons/httpclient/methods/StringRequestEntity;
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 236
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v5, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 237
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 241
    const-string v5, "BoxExternalAPI"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    const-string v5, "BoxExternalAPI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "##### doPost-end   #####, used time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms,response=\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    return-object v1

    .line 238
    .end local v4           #xmlRequestEntity:Lorg/apache/commons/httpclient/methods/StringRequestEntity;
    :catchall_0
    move-exception v5

    .line 239
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 240
    throw v5
.end method

.method public getConfig()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    return-object v0
.end method

.method public setConfig(Ljava/util/Properties;)V
    .locals 7
    .parameter "config"

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->config:Ljava/util/Properties;

    .line 106
    iget-object v5, p0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->hc:Lorg/apache/commons/httpclient/HttpClient;

    .line 107
    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v1

    .line 109
    .local v1, connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    const-string v5, "box4j.config.httpclient.MaxConnectionsPerHost"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, maxConPerHost:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 110
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setDefaultMaxConnectionsPerHost(I)V

    .line 114
    const-string v5, "box4j.config.httpclient.MaxTotalConnections"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, maxTotalCons:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 115
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxTotalConnections(I)V

    .line 119
    const-string v5, "box4j.config.httpclient.ConnectionTimeout"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, connTimeout:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 120
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 124
    const-string v5, "box4j.config.httpclient.SoConnectionTimeout"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, soConnTimeout:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v5

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 125
    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 127
    return-void
.end method
