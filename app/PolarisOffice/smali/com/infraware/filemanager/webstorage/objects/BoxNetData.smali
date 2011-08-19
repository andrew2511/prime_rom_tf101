.class public Lcom/infraware/filemanager/webstorage/objects/BoxNetData;
.super Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.source "BoxNetData.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "261e0yyocyhl3tlz59kx3tu6rqcj8azg"


# instance fields
.field private authToken:Ljava/lang/String;

.field protected boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

.field private rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;-><init>()V

    .line 58
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    .line 59
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 62
    return-void
.end method

.method private copyToTmpFile(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .parameter "srcFile"

    .prologue
    .line 345
    const/4 v6, 0x0

    .line 346
    .local v6, inputStream:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 347
    .local v8, outputStream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 348
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 350
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/.temp/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->tmpFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 352
    .local v10, tmpFileName:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 353
    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .local v7, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 355
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .local v9, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 356
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 358
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 359
    .local v3, size:J
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 363
    .end local v3           #size:J
    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 364
    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 367
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 368
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 371
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 372
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 375
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 376
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 379
    :cond_3
    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 365
    :catch_0
    move-exception v1

    goto :goto_1

    .line 369
    :catch_1
    move-exception v1

    goto :goto_2

    .line 373
    :catch_2
    move-exception v1

    goto :goto_3

    .line 377
    :catch_3
    move-exception v1

    goto :goto_4

    .line 360
    :catch_4
    move-exception v1

    goto :goto_0

    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .restart local v7       #inputStream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #inputStream:Ljava/io/FileInputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private removeEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v3, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 249
    invoke-static {v3, v4, p1, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v1

    .line 253
    .local v1, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    :try_start_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v3, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 260
    .local v2, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "s_delete_node"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v3

    .line 254
    .end local v2           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 255
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 257
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 262
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v2       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :cond_0
    return-void
.end method

.method private renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "type"
    .parameter "targetId"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v3, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 280
    invoke-static {v3, v4, p1, p2, p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    move-result-object v1

    .line 285
    .local v1, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :try_start_0
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v3, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 292
    .local v2, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "s_rename_node"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v3

    .line 286
    .end local v2           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 287
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 288
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 289
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 294
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v2       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :cond_0
    return-void
.end method

.method private simAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .locals 20
    .parameter "boxUName"
    .parameter "boxPWord"
    .parameter "apiKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static/range {p3 .. p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetTicketRequest(Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    move-result-object v9

    .line 68
    .local v9, getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v10

    .line 69
    .local v10, getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    const-string v17, "get_ticket_ok"

    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getStatus()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 71
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetAuthTokenResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v8

    .line 72
    .local v8, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getStatus()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setStatus(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-object v8

    .line 77
    .end local v8           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :cond_0
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getConfig()Ljava/util/Properties;

    move-result-object v5

    .line 78
    .local v5, config:Ljava/util/Properties;
    const-string v17, "box4j.config.api.url_prefix"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, apiUrlPrefix:Ljava/lang/String;
    const-string v17, "box4j.config.api.version"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, apiVersion:Ljava/lang/String;
    new-instance v11, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v11}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 83
    .local v11, hc:Lorg/apache/commons/httpclient/HttpClient;
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v17

    const-string v18, "http.useragent"

    const-string v19, "Mozilla/5.0 (X11; Linux x86_64; rv:2.2a1pre) Gecko/20110324 Firefox/4.2a1pre"

    invoke-virtual/range {v17 .. v19}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v16, urlBuff:Ljava/lang/StringBuffer;
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v17, "auth"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    new-instance v6, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 95
    .local v6, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual {v11, v6}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 98
    new-instance v15, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v17, "login"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v15, unamePair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v14, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v17, "password"

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v14, pwordPair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v12, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v17, "dologin"

    const-string v18, "1"

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v12, loginPair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v13, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 104
    .local v13, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/commons/httpclient/NameValuePair;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    aput-object v14, v17, v18

    const/16 v18, 0x2

    aput-object v12, v17, v18

    .line 103
    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 105
    const-string v17, "Referer"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v11, v13}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 109
    invoke-interface {v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v17

    .line 108
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAuthTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    move-result-object v7

    .line 110
    .local v7, getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v8

    .line 112
    .restart local v8       #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    goto/16 :goto_0
.end method


# virtual methods
.method public createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .locals 13
    .parameter "node"
    .parameter "newFolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x3e8

    .line 212
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 213
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, targetId:Ljava/lang/String;
    const-string v8, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    const/4 v10, 0x0

    .line 218
    invoke-static {v8, v9, v7, p2, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createCreateFolderRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    move-result-object v5

    .line 221
    .local v5, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    :try_start_0
    iget-object v8, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v8, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 228
    .local v6, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface {v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v3

    .line 229
    .local v3, folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    if-nez v3, :cond_0

    .line 230
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v8

    .line 222
    .end local v3           #folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v6           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 223
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 225
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 232
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v3       #folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .restart local v6       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :cond_0
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v2

    .line 234
    .local v2, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 235
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->getFolderId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v11

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v11

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 238
    const-wide/16 v8, 0x0

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setSize(J)V

    .line 239
    invoke-virtual {p0, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 241
    new-instance v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 242
    .local v4, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {p1, v4}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 244
    return-void
.end method

.method public decodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 196
    const/4 v0, 0x0

    check-cast v0, [B

    .line 197
    .local v0, bytes:[B
    move-object v2, p1

    .line 200
    .local v2, oldTitle:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 201
    new-instance p1, Ljava/lang/String;

    .end local p1
    const-string v3, "ISO-8859-1"

    invoke-direct {p1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .restart local p1
    :goto_0
    return-object p1

    .line 202
    .end local p1
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 203
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object p1, v2

    .restart local p1
    goto :goto_0
.end method

.method public downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "downloadNode"
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 488
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    const/4 v3, 0x0

    .line 490
    .local v3, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .end local v3           #tmpFile:Ljava/io/File;
    .local v4, tmpFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 493
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 492
    invoke-static {v5, v6, v7, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    move-result-object v2

    .line 494
    .local v2, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v5, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_1 .. :try_end_1} :catch_2

    .line 524
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 495
    .end local v2           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 496
    .local v0, e:Ljava/io/IOException;
    :goto_0
    new-instance v5, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 498
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    :goto_1
    new-instance v5, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 497
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v3           #tmpFile:Ljava/io/File;
    .restart local v4       #tmpFile:Ljava/io/File;
    :catch_2
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    goto :goto_1

    .line 495
    .end local v3           #tmpFile:Ljava/io/File;
    .restart local v4       #tmpFile:Ljava/io/File;
    :catch_3
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    goto :goto_0
.end method

.method public encodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 181
    const/4 v0, 0x0

    check-cast v0, [B

    .line 182
    .local v0, bytes:[B
    move-object v2, p1

    .line 185
    .local v2, oldTitle:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 186
    new-instance p1, Ljava/lang/String;

    .end local p1
    const-string v3, "utf-8"

    invoke-direct {p1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .restart local p1
    :goto_0
    return-object p1

    .line 187
    .end local p1
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 188
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object p1, v2

    .restart local p1
    goto :goto_0
.end method

.method public getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "userId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    const-string v2, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    invoke-direct {p0, p1, p2, v2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->simAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 129
    .local v1, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not_logged_in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get_auth_token_ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    new-instance v2, Lcom/infraware/filemanager/webstorage/WebStorageException;

    const-string v3, "403"

    invoke-direct {v2, v3}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v1           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v2, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 126
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v2, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v2, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 135
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v1       #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :cond_1
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 10
    .parameter "srcNode"
    .parameter "dstNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 316
    .local v5, srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {p2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 318
    .local v1, dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "folder"

    move-object v7, v8

    .line 319
    .local v7, type:Ljava/lang/String;
    :goto_0
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, srcTargetId:Ljava/lang/String;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, dscTargetId:Ljava/lang/String;
    const-string v8, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 324
    invoke-static {v8, v9, v7, v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createMoveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;

    move-result-object v3

    .line 329
    .local v3, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    :try_start_0
    iget-object v8, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v8, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 336
    .local v4, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "s_move_node"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 337
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v8

    .line 318
    .end local v0           #dscTargetId:Ljava/lang/String;
    .end local v3           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .end local v4           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .end local v6           #srcTargetId:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_0
    const-string v8, "file"

    move-object v7, v8

    goto :goto_0

    .line 330
    .restart local v0       #dscTargetId:Ljava/lang/String;
    .restart local v3       #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .restart local v6       #srcTargetId:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 331
    .local v2, e:Ljava/io/IOException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 333
    .local v2, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v8, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 339
    .end local v2           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v4       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    :cond_1
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p2, p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 341
    return-void
.end method

.method public refreshEntryTree()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 142
    new-array v1, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "nozip"

    aput-object v6, v1, v5

    .line 147
    .local v1, gatActTreeParams:[Ljava/lang/String;
    const-string v5, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    const-string v7, "0"

    .line 146
    invoke-static {v5, v6, v7, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAccountTreeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    move-result-object v3

    .line 149
    .local v3, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    :try_start_0
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v5, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 156
    .local v4, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "not_logged_in"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 158
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.infraware.filemanager.webstorage.WebStorageAction.STATUS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "status"

    const-string v6, "login_fail"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object v5, Lcom/infraware/filemanager/webstorage/WebStorageDefine;->m_oContextForBroadCast:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 162
    sget-object v5, Lcom/infraware/filemanager/webstorage/WebStorageDefine;->m_oContextForBroadCast:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    const/4 v5, 0x0

    sput-object v5, Lcom/infraware/filemanager/webstorage/WebStorageDefine;->m_oContextForBroadCast:Landroid/content/Context;

    .line 167
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 168
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-eqz v5, :cond_1

    .line 169
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v5, v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setRoot(Z)V

    .line 170
    :cond_1
    return-void

    .line 150
    .end local v4           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 151
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 153
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v5, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 269
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, targetId:Ljava/lang/String;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "folder"

    move-object v2, v3

    .line 272
    .local v2, type:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    return-void

    .line 270
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    const-string v3, "file"

    move-object v2, v3

    goto :goto_0
.end method

.method public renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .locals 5
    .parameter "node"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 302
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "folder"

    move-object v3, v4

    .line 303
    .local v3, type:Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, targetId:Ljava/lang/String;
    invoke-direct {p0, v3, v2, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    .line 308
    .local v1, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    invoke-virtual {p0, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 309
    return-void

    .line 302
    .end local v1           #fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    .end local v2           #targetId:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    const-string v4, "file"

    move-object v3, v4

    goto :goto_0
.end method

.method public uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)I
    .locals 27
    .parameter "node"
    .parameter "uploadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 387
    .local v7, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v7}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v18

    .line 390
    .local v18, targetId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->copyToTmpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v19

    .line 391
    .local v19, tmpFile:Ljava/io/File;
    if-nez v19, :cond_0

    .line 392
    const/16 v23, 0x0

    .line 478
    :goto_0
    return v23

    .line 394
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-eqz v23, :cond_1

    .line 395
    const/16 v23, 0x0

    goto :goto_0

    .line 397
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v11, fileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v11

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    .line 402
    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v18

    move-object v3, v11

    invoke-static {v0, v1, v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object v20

    .line 405
    .local v20, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 414
    .local v21, uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 415
    .local v15, size:J
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 417
    invoke-interface/range {v21 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getUploadResultList()Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    .line 418
    .local v22, uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-interface/range {v22 .. v22}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->getFileId()Ljava/lang/String;

    move-result-object v17

    .line 422
    .local v17, srcFileId:Ljava/lang/String;
    const-string v23, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "file"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    .line 421
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v17

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    move-result-object v13

    .line 426
    .local v13, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v13

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v14

    .line 462
    .local v14, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    invoke-interface {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    const-string v24, "s_rename_node"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_4

    .line 463
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct/range {v23 .. v23}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v23

    .line 406
    .end local v13           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .end local v14           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    .end local v15           #size:J
    .end local v17           #srcFileId:Ljava/lang/String;
    .end local v21           #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .end local v22           #uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 407
    .local v5, e:Ljava/io/IOException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 408
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 409
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 410
    .local v5, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 411
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 427
    .end local v5           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v13       #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .restart local v15       #size:J
    .restart local v17       #srcFileId:Ljava/lang/String;
    .restart local v21       #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .restart local v22       #uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    :catch_2
    move-exception v23

    move-object/from16 v5, v23

    .line 430
    .local v5, e:Ljava/io/IOException;
    const-string v23, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "file"

    .line 429
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v8

    .line 433
    .local v8, exceptionRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v9

    .line 440
    .local v9, exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    const-string v24, "s_delete_node"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_2

    .line 441
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct/range {v23 .. v23}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v23

    .line 434
    .end local v9           #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :catch_3
    move-exception v23

    move-object/from16 v6, v23

    .line 435
    .local v6, ee:Ljava/io/IOException;
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 436
    .end local v6           #ee:Ljava/io/IOException;
    :catch_4
    move-exception v23

    move-object/from16 v6, v23

    .line 437
    .local v6, ee:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 443
    .end local v6           #ee:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v9       #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :cond_2
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 444
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #exceptionRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    .end local v9           #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :catch_5
    move-exception v23

    move-object/from16 v5, v23

    .line 447
    .local v5, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    const-string v23, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "file"

    .line 446
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v8

    .line 450
    .restart local v8       #exceptionRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v9

    .line 457
    .restart local v9       #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_3

    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v23

    const-string v24, "s_delete_node"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_3

    .line 458
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct/range {v23 .. v23}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>()V

    throw v23

    .line 451
    .end local v9           #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :catch_6
    move-exception v23

    move-object/from16 v6, v23

    .line 452
    .local v6, ee:Ljava/io/IOException;
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 453
    .end local v6           #ee:Ljava/io/IOException;
    :catch_7
    move-exception v23

    move-object/from16 v6, v23

    .line 454
    .local v6, ee:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 459
    .end local v6           #ee:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v9       #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :cond_3
    new-instance v23, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 465
    .end local v5           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v8           #exceptionRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    .end local v9           #exceptionRequestResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    .restart local v14       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :cond_4
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v10

    .line 467
    .local v10, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const/16 v23, 0x0

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 468
    move-object v0, v10

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    move-object v0, v10

    move-wide/from16 v1, v23

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    move-object v0, v10

    move-wide/from16 v1, v23

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 471
    move-object v0, v10

    move-wide v1, v15

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setSize(J)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 474
    new-instance v12, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v12}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 475
    .local v12, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v12, v10}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 476
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 478
    const/16 v23, 0x1

    goto/16 :goto_0
.end method
