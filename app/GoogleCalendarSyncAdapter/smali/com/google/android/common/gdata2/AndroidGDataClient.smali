.class public Lcom/google/android/common/gdata2/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# instance fields
.field private mGDataVersion:Ljava/lang/String;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "2.0"

    sput-object v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gdataVersion"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 168
    iget-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 170
    iput-object p3, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 9
    .parameter "entry"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 572
    .local v3, entryBytes:[B
    if-eqz v3, :cond_0

    const-string v5, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    :try_start_1
    const-string v5, "GDataClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Serialized entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    .line 582
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-interface {p1}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 583
    return-object v2

    .line 563
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v3           #entryBytes:[B
    :catch_0
    move-exception v4

    .line 564
    .local v4, ioe:Ljava/io/IOException;
    const-string v5, "GDataClient"

    const-string v6, "Unable to serialize entry."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    throw v4

    .line 566
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 567
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to serialize entry: "

    invoke-direct {v5, v6, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 575
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #entryBytes:[B
    :catch_2
    move-exception v5

    goto :goto_0
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

    .line 433
    if-nez p1, :cond_0

    move-object v6, p1

    .line 458
    :goto_0
    return-object v6

    .line 444
    :cond_0
    const/16 v2, 0x4000

    .line 445
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 446
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 447
    const/16 v5, 0x4000

    .line 448
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 449
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 450
    .local v1, buf:[B
    :goto_1
    if-lez v5, :cond_1

    .line 451
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 452
    .local v3, got:I
    if-gtz v3, :cond_2

    .line 456
    .end local v3           #got:I
    :cond_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object v6, v0

    .line 458
    goto :goto_0

    .line 453
    .restart local v3       #got:I
    :cond_2
    sub-int/2addr v5, v3

    .line 454
    add-int/2addr v4, v3

    .line 455
    goto :goto_1
.end method


# virtual methods
.method protected createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 39
    .parameter "creator"
    .parameter "uriString"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v25, 0x0

    .line 213
    .local v25, response:Lorg/apache/http/HttpResponse;
    const/16 v30, 0x1f4

    .line 214
    .local v30, status:I
    const/16 v23, 0xa

    .line 218
    .local v23, redirectsLeft:I
    :try_start_0
    new-instance v33, Ljava/net/URI;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v33, uri:Ljava/net/URI;
    const-wide/16 v26, 0x0

    .line 231
    .local v26, retryAfter:J
    :goto_0
    if-lez v23, :cond_b

    .line 233
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v24

    .line 234
    .local v24, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v24 .. v24}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 238
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 239
    const-string v35, "Authorization"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "GoogleLogin auth="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_1

    .line 245
    const-string v35, "GData-Version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 250
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v21

    .line 251
    .local v21, method:Ljava/lang/String;
    const-string v35, "X-HTTP-Method-Override"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v22

    .line 252
    .local v22, overrideMethodHeader:Lorg/apache/http/Header;
    if-eqz v22, :cond_2

    .line 253
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    .line 255
    :cond_2
    const-string v35, "GET"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 258
    const-string v35, "If-None-Match"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v21           #method:Ljava/lang/String;
    .end local v22           #overrideMethodHeader:Lorg/apache/http/Header;
    :cond_3
    :goto_1
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 276
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Executing "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_4
    const/16 v25, 0x0

    .line 282
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v25

    .line 288
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    .line 289
    .local v31, statusLine:Lorg/apache/http/StatusLine;
    if-nez v31, :cond_7

    .line 290
    const-string v35, "GDataClient"

    const-string v36, "StatusLine is null."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v35, Ljava/lang/NullPointerException;

    const-string v36, "StatusLine is null -- should not happen."

    invoke-direct/range {v35 .. v36}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 219
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v26           #retryAfter:J
    .end local v31           #statusLine:Lorg/apache/http/StatusLine;
    .end local v33           #uri:Ljava/net/URI;
    :catch_0
    move-exception v35

    move-object/from16 v34, v35

    .line 220
    .local v34, use:Ljava/net/URISyntaxException;
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to parse "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " as URI."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v35, Ljava/io/IOException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to parse "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " as URI: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v34 .. v34}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 259
    .end local v34           #use:Ljava/net/URISyntaxException;
    .restart local v21       #method:Ljava/lang/String;
    .restart local v22       #overrideMethodHeader:Lorg/apache/http/Header;
    .restart local v24       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v26       #retryAfter:J
    .restart local v33       #uri:Ljava/net/URI;
    :cond_5
    const-string v35, "DELETE"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_6

    const-string v35, "PUT"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 263
    :cond_6
    const-string v35, "W/"

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 264
    const-string v35, "If-Match"

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    .end local v21           #method:Ljava/lang/String;
    .end local v22           #overrideMethodHeader:Lorg/apache/http/Header;
    :catch_1
    move-exception v35

    move-object/from16 v18, v35

    .line 284
    .local v18, ioe:Ljava/io/IOException;
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to execute HTTP request."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    throw v18

    .line 294
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v31       #statusLine:Lorg/apache/http/StatusLine;
    :cond_7
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 295
    const-string v35, "GDataClient"

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, arr$:[Lorg/apache/http/Header;
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v14, v4, v16

    .line 297
    .local v14, h:Lorg/apache/http/Header;
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 300
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v14           #h:Lorg/apache/http/Header;
    .end local v16           #i$:I
    .end local v19           #len$:I
    :cond_8
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    .line 302
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 304
    .local v10, entity:Lorg/apache/http/HttpEntity;
    const/16 v35, 0xc8

    move/from16 v0, v30

    move/from16 v1, v35

    if-lt v0, v1, :cond_a

    const/16 v35, 0x12c

    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_a

    if-eqz v10, :cond_a

    .line 305
    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v17

    .line 306
    .local v17, in:Ljava/io/InputStream;
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v17

    .line 309
    :cond_9
    return-object v17

    .line 315
    .end local v17           #in:Ljava/io/InputStream;
    :cond_a
    const/16 v35, 0x12e

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_10

    .line 317
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 318
    const-string v35, "Location"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 319
    .local v20, location:Lorg/apache/http/Header;
    if-nez v20, :cond_e

    .line 320
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 321
    const-string v35, "GDataClient"

    const-string v36, "Redirect requested but no Location specified."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v20           #location:Lorg/apache/http/Header;
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v31           #statusLine:Lorg/apache/http/StatusLine;
    .end local v33           #uri:Ljava/net/URI;
    :cond_b
    :goto_3
    const-string v35, "GDataClient"

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_c

    .line 370
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Received "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " status code."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_c
    const/4 v11, 0x0

    .line 373
    .local v11, errorMessage:Ljava/lang/String;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 375
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v25, :cond_13

    if-eqz v10, :cond_13

    .line 376
    :try_start_2
    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v17

    .line 377
    .restart local v17       #in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v35, 0x2000

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object v6, v0

    .line 379
    .local v6, buf:[B
    const/4 v7, -0x1

    .line 380
    .local v7, bytesRead:I
    :goto_4
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/16 v35, -0x1

    move v0, v7

    move/from16 v1, v35

    if-eq v0, v1, :cond_11

    .line 381
    const/16 v35, 0x0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v35

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 390
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v17           #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v35

    :goto_5
    if-eqz v10, :cond_d

    .line 391
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d
    throw v35

    .line 326
    .end local v11           #errorMessage:Ljava/lang/String;
    .restart local v20       #location:Lorg/apache/http/Header;
    .restart local v24       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v31       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v33       #uri:Ljava/net/URI;
    :cond_e
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 327
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Following redirect to "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_f
    :try_start_3
    new-instance v33, Ljava/net/URI;

    .end local v33           #uri:Ljava/net/URI;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 339
    .restart local v33       #uri:Ljava/net/URI;
    add-int/lit8 v23, v23, -0x1

    .line 340
    goto/16 :goto_0

    .line 331
    .end local v33           #uri:Ljava/net/URI;
    :catch_2
    move-exception v35

    move-object/from16 v34, v35

    .line 332
    .restart local v34       #use:Ljava/net/URISyntaxException;
    const-string v35, "GDataClient"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 333
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to parse "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " as URI."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    new-instance v35, Ljava/io/IOException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to parse "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " as URI."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 340
    .end local v20           #location:Lorg/apache/http/Header;
    .end local v34           #use:Ljava/net/URISyntaxException;
    .restart local v33       #uri:Ljava/net/URI;
    :cond_10
    const/16 v35, 0x1f7

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 341
    const-string v35, "Retry-After"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    .line 342
    .local v28, retryAfterHeader:Lorg/apache/http/Header;
    if-eqz v28, :cond_b

    .line 346
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 350
    .local v29, retryAfterString:Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v35, v35, v37

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v37

    add-long v26, v35, v37

    goto/16 :goto_3

    .line 352
    :catch_3
    move-exception v35

    move-object/from16 v8, v35

    .line 355
    .local v8, e:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 356
    .local v32, time:Landroid/text/format/Time;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 357
    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v35

    const-wide/16 v37, 0x3e8

    div-long v26, v35, v37
    :try_end_5
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 358
    .end local v32           #time:Landroid/text/format/Time;
    :catch_4
    move-exception v35

    move-object/from16 v9, v35

    .line 359
    .local v9, e2:Landroid/util/TimeFormatException;
    const-string v35, "GDataClient"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unable to parse "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 384
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v9           #e2:Landroid/util/TimeFormatException;
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v28           #retryAfterHeader:Lorg/apache/http/Header;
    .end local v29           #retryAfterString:Ljava/lang/String;
    .end local v31           #statusLine:Lorg/apache/http/StatusLine;
    .end local v33           #uri:Ljava/net/URI;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v11       #errorMessage:Ljava/lang/String;
    .restart local v17       #in:Ljava/io/InputStream;
    :cond_11
    :try_start_6
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v35

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 385
    .end local v11           #errorMessage:Ljava/lang/String;
    .local v12, errorMessage:Ljava/lang/String;
    :try_start_7
    const-string v35, "GDataClient"

    const/16 v36, 0x2

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 386
    const-string v35, "GDataClient"

    move-object/from16 v0, v35

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_12
    move-object v11, v12

    .line 390
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v12           #errorMessage:Ljava/lang/String;
    .end local v17           #in:Ljava/io/InputStream;
    .restart local v11       #errorMessage:Ljava/lang/String;
    :cond_13
    if-eqz v10, :cond_14

    .line 391
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 394
    :cond_14
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " status code"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 395
    .local v13, exceptionMessage:Ljava/lang/String;
    if-eqz v11, :cond_15

    .line 396
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 398
    :cond_15
    new-instance v15, Lcom/google/wireless/gdata2/client/HttpException;

    const/16 v35, 0x0

    move-object v0, v15

    move-object v1, v13

    move/from16 v2, v30

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    .line 400
    .local v15, httpException:Lcom/google/wireless/gdata2/client/HttpException;
    const/16 v35, 0x1f7

    move/from16 v0, v30

    move/from16 v1, v35

    if-ne v0, v1, :cond_16

    .line 401
    move-object v0, v15

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata2/client/HttpException;->setRetryAfter(J)V

    .line 403
    :cond_16
    throw v15

    .line 390
    .end local v11           #errorMessage:Ljava/lang/String;
    .end local v13           #exceptionMessage:Ljava/lang/String;
    .end local v15           #httpException:Lcom/google/wireless/gdata2/client/HttpException;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v12       #errorMessage:Ljava/lang/String;
    .restart local v17       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v35

    move-object v11, v12

    .end local v12           #errorMessage:Ljava/lang/String;
    .restart local v11       #errorMessage:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 8
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "protocolVersion"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 482
    .local v6, entity:Lorg/apache/http/HttpEntity;
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v4, v6}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 488
    .local v7, in:Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 489
    return-object v7

    .line 491
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/common/gdata2/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/common/gdata2/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 522
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    const-string v0, "DELETE"

    invoke-direct {v1, v0, v5}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 533
    .local v6, in:Ljava/io/InputStream;
    if-nez v6, :cond_1

    .line 534
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 185
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    .local v0, encodedUri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 186
    .end local v0           #encodedUri:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 188
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    const-string v2, "JakartaGDataClient"

    const-string v3, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedUri:Ljava/lang/String;
    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 418
    .local v6, in:Ljava/io/InputStream;
    if-eqz v6, :cond_0

    .line 419
    return-object v6

    .line 421
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 9
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x2

    invoke-direct {p0, p5, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 504
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {p5}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->getSupportsPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PATCH"

    move-object v8, v0

    .line 505
    .local v8, method:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v8, v6}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 511
    .local v7, in:Ljava/io/InputStream;
    if-eqz v7, :cond_1

    .line 512
    return-object v7

    .line 504
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #method:Ljava/lang/String;
    :cond_0
    const-string v0, "PUT"

    move-object v8, v0

    goto :goto_0

    .line 514
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #method:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to update entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
