.class public Lcom/google/android/common/gdata/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# instance fields
.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const-string v0, "Android-GData/1.1"

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appAndVersion"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 146
    iget-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 148
    return-void
.end method

.method private createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 28
    .parameter "creator"
    .parameter "uriString"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/16 v20, 0x0

    .line 187
    .local v20, response:Lorg/apache/http/HttpResponse;
    const/16 v21, 0x1f4

    .line 188
    .local v21, status:I
    const/16 v18, 0xa

    .line 192
    .local v18, redirectsLeft:I
    :try_start_0
    new-instance v23, Ljava/net/URI;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v23, uri:Ljava/net/URI;
    :goto_0
    if-lez v18, :cond_6

    .line 204
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v19

    .line 205
    .local v19, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v19 .. v19}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 209
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 210
    const-string v25, "Authorization"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "GoogleLogin auth="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 219
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Executing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    const/16 v20, 0x0

    .line 225
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 231
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    .line 232
    .local v22, statusLine:Lorg/apache/http/StatusLine;
    if-nez v22, :cond_2

    .line 233
    const-string v25, "GDataClient"

    const-string v26, "StatusLine is null."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v25, Ljava/lang/NullPointerException;

    const-string v26, "StatusLine is null -- should not happen."

    invoke-direct/range {v25 .. v26}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 193
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v23           #uri:Ljava/net/URI;
    :catch_0
    move-exception v25

    move-object/from16 v24, v25

    .line 194
    .local v24, use:Ljava/net/URISyntaxException;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 226
    .end local v24           #use:Ljava/net/URISyntaxException;
    .restart local v19       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v23       #uri:Ljava/net/URI;
    :catch_1
    move-exception v25

    move-object/from16 v15, v25

    .line 227
    .local v15, ioe:Ljava/io/IOException;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to execute HTTP request."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw v15

    .line 237
    .end local v15           #ioe:Ljava/io/IOException;
    .restart local v22       #statusLine:Lorg/apache/http/StatusLine;
    :cond_2
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 238
    const-string v25, "GDataClient"

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, arr$:[Lorg/apache/http/Header;
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v12, v4, v13

    .line 240
    .local v12, h:Lorg/apache/http/Header;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 243
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v12           #h:Lorg/apache/http/Header;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_3
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 245
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 247
    .local v8, entity:Lorg/apache/http/HttpEntity;
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_5

    const/16 v25, 0x12c

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    if-eqz v8, :cond_5

    .line 248
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v14

    .line 249
    .local v14, in:Ljava/io/InputStream;
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 250
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/common/gdata/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 252
    :cond_4
    return-object v14

    .line 258
    .end local v14           #in:Ljava/io/InputStream;
    :cond_5
    const/16 v25, 0x12e

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 260
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 261
    const-string v25, "Location"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 262
    .local v17, location:Lorg/apache/http/Header;
    if-nez v17, :cond_9

    .line 263
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 264
    const-string v25, "GDataClient"

    const-string v26, "Redirect requested but no Location specified."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v23           #uri:Ljava/net/URI;
    :cond_6
    const-string v25, "GDataClient"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 289
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " status code."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_7
    const/4 v9, 0x0

    .line 292
    .local v9, errorMessage:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 294
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v20, :cond_d

    if-eqz v8, :cond_d

    .line 295
    :try_start_2
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v14

    .line 296
    .restart local v14       #in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v25, 0x2000

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object v6, v0

    .line 298
    .local v6, buf:[B
    const/4 v7, -0x1

    .line 299
    .local v7, bytesRead:I
    :goto_2
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/16 v25, -0x1

    move v0, v7

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 300
    const/16 v25, 0x0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v25

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 309
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v14           #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v25

    :goto_3
    if-eqz v8, :cond_8

    .line 310
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v25

    .line 269
    .end local v9           #errorMessage:Ljava/lang/String;
    .restart local v17       #location:Lorg/apache/http/Header;
    .restart local v19       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v22       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v23       #uri:Ljava/net/URI;
    :cond_9
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 270
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Following redirect to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_a
    :try_start_3
    new-instance v23, Ljava/net/URI;

    .end local v23           #uri:Ljava/net/URI;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 282
    .restart local v23       #uri:Ljava/net/URI;
    add-int/lit8 v18, v18, -0x1

    .line 286
    goto/16 :goto_0

    .line 274
    .end local v23           #uri:Ljava/net/URI;
    :catch_2
    move-exception v25

    move-object/from16 v24, v25

    .line 275
    .restart local v24       #use:Ljava/net/URISyntaxException;
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 276
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 303
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v24           #use:Ljava/net/URISyntaxException;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v9       #errorMessage:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    :cond_b
    :try_start_4
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 304
    .end local v9           #errorMessage:Ljava/lang/String;
    .local v10, errorMessage:Ljava/lang/String;
    :try_start_5
    const-string v25, "GDataClient"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 305
    const-string v25, "GDataClient"

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_c
    move-object v9, v10

    .line 309
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v14           #in:Ljava/io/InputStream;
    .restart local v9       #errorMessage:Ljava/lang/String;
    :cond_d
    if-eqz v8, :cond_e

    .line 310
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 313
    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Received "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " status code"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, exceptionMessage:Ljava/lang/String;
    if-eqz v9, :cond_f

    .line 315
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 317
    :cond_f
    new-instance v25, Lcom/google/wireless/gdata/client/HttpException;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object v1, v11

    move/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v25

    .line 309
    .end local v9           #errorMessage:Ljava/lang/String;
    .end local v11           #exceptionMessage:Ljava/lang/String;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v10       #errorMessage:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v25

    move-object v9, v10

    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #errorMessage:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 10
    .parameter "entry"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 471
    .local v3, entryBytes:[B
    if-eqz v3, :cond_0

    const-string v6, "GDataClient"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    :try_start_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serialized entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 482
    :cond_0
    iget-object v6, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v6}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    .line 483
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-interface {p1}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 484
    return-object v2

    .line 462
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v3           #entryBytes:[B
    :catch_0
    move-exception v4

    .line 463
    .local v4, ioe:Ljava/io/IOException;
    const-string v6, "GDataClient"

    const-string v7, "Unable to serialize entry."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    throw v4

    .line 465
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v7, "Unable to serialize entry: "

    invoke-direct {v6, v7, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 474
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #entryBytes:[B
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 476
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "UTF-8 should be supported!"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 344
    if-nez p1, :cond_0

    move-object v6, p1

    .line 369
    :goto_0
    return-object v6

    .line 355
    :cond_0
    const/16 v2, 0x4000

    .line 356
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 357
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 358
    const/16 v5, 0x4000

    .line 359
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 360
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 361
    .local v1, buf:[B
    :goto_1
    if-lez v5, :cond_1

    .line 362
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 363
    .local v3, got:I
    if-gtz v3, :cond_2

    .line 367
    .end local v3           #got:I
    :cond_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object v6, v0

    .line 369
    goto :goto_0

    .line 364
    .restart local v3       #got:I
    :cond_2
    sub-int/2addr v5, v3

    .line 365
    add-int/2addr v4, v3

    .line 366
    goto :goto_1
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 4
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 392
    .local v0, entity:Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 396
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 397
    return-object v1

    .line 399
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/common/gdata/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/common/gdata/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "editUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify an non-empty edit url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_0
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v2, "DELETE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 434
    .local v0, in:Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 435
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to delete entry."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "feedUrl"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 329
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 330
    return-object v0

    .line 332
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to access feed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 4
    .parameter "editUri"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 410
    .local v0, entity:Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v3, "PUT"

    invoke-direct {v2, v3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 414
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 415
    return-object v1

    .line 417
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to update entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
