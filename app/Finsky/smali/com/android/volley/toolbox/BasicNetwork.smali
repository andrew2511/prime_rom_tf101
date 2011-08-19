.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/HurlStack;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)V
    .locals 0
    .parameter "context"
    .parameter "httpStack"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 60
    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 5
    .parameter
    .parameter "entry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 166
    const-string v1, "If-None-Match"

    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 170
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 171
    .local v0, refTime:Ljava/util/Date;
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .parameter "headers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 200
    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 201
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-object v1
.end method

.method private encodePostParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)[B
    .locals 8
    .parameter
    .parameter
    .parameter "postParamsEncoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, encodedParams:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 154
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encoding not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 156
    .local v3, rawPostBody:[B
    return-object v3
.end method

.method static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v3, Lcom/android/volley/ServerException;

    invoke-direct {v3}, Lcom/android/volley/ServerException;-><init>()V

    throw v3

    .line 186
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v1, bytes:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 189
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "what"
    .parameter "url"
    .parameter "start"

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, now:J
    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long v5, v0, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureException;,
            Lcom/android/volley/ServerException;,
            Lcom/android/volley/NoConnectionException;,
            Lcom/android/volley/TimeoutException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 66
    .local v14, start:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, url:Ljava/lang/String;
    const/4 v9, 0x0

    .line 68
    .local v9, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v13, 0x0

    .line 71
    .local v13, responseContents:[B
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 72
    .local v8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    .line 75
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 76
    .local v10, postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getPostParams()Ljava/util/Map;

    move-result-object v12

    .line 77
    .local v12, requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 78
    invoke-interface {v10, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getRawPostBody()[B

    move-result-object v11

    .line 81
    .local v11, rawPostBody:[B
    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 82
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Cannot handle rawPostBody and postParams at the same time."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #rawPostBody:[B
    .end local v12           #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 108
    .local v5, e:Ljava/net/MalformedURLException;
    sget-boolean v19, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v19, :cond_1

    const-string v19, "BadURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;->logError(Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    :cond_1
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad URL "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 84
    .end local v5           #e:Ljava/net/MalformedURLException;
    .restart local v8       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #rawPostBody:[B
    .restart local v12       #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;->encodePostParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v11

    .line 89
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v8

    move-object v3, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Ljava/lang/String;Ljava/util/Map;[B)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 90
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 91
    .local v17, statusLine:Lorg/apache/http/StatusLine;
    sget-boolean v19, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v19, :cond_4

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    .local v6, end:J
    const-string v19, "HTTP response in %d ms, rc=%d for url %s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sub-long v22, v6, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .end local v6           #end:J
    :cond_4
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0x130

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 98
    new-instance v19, Lcom/android/volley/NetworkResponse;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/volley/Cache$Entry;->data:[B

    move-object/from16 v20, v0

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v21

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;Z)V

    .line 127
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #rawPostBody:[B
    .end local v12           #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :goto_0
    return-object v19

    .line 101
    .restart local v8       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #rawPostBody:[B
    .restart local v12       #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_5
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/volley/toolbox/BasicNetwork;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v13

    .line 102
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 103
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #rawPostBody:[B
    .end local v12           #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v19

    move-object/from16 v5, v19

    .line 111
    .local v5, e:Ljava/net/SocketTimeoutException;
    sget-boolean v19, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v19, :cond_6

    const-string v19, "Timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;->logError(Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    :cond_6
    new-instance v19, Lcom/android/volley/TimeoutException;

    invoke-direct/range {v19 .. v19}, Lcom/android/volley/TimeoutException;-><init>()V

    throw v19

    .line 105
    .end local v5           #e:Ljava/net/SocketTimeoutException;
    .restart local v8       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #rawPostBody:[B
    .restart local v12       #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_7
    :try_start_2
    new-instance v19, Lcom/android/volley/NetworkResponse;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object v1, v13

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;Z)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 113
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #postParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #rawPostBody:[B
    .end local v12           #requestPostParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v19

    move-object/from16 v5, v19

    .line 114
    .local v5, e:Ljava/io/IOException;
    const/16 v16, 0x0

    .line 115
    .local v16, statusCode:I
    if-eqz v9, :cond_9

    .line 116
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 121
    const/16 v19, 0x191

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 122
    sget-boolean v19, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v19, :cond_8

    const-string v19, "AuthFailure"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;->logError(Ljava/lang/String;Ljava/lang/String;J)V

    .line 123
    :cond_8
    new-instance v19, Lcom/android/volley/AuthFailureException;

    invoke-direct/range {v19 .. v19}, Lcom/android/volley/AuthFailureException;-><init>()V

    throw v19

    .line 118
    :cond_9
    sget-boolean v19, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-eqz v19, :cond_a

    const-string v19, "NoConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/volley/toolbox/BasicNetwork;->logError(Ljava/lang/String;Ljava/lang/String;J)V

    .line 119
    :cond_a
    new-instance v19, Lcom/android/volley/NoConnectionException;

    invoke-direct/range {v19 .. v19}, Lcom/android/volley/NoConnectionException;-><init>()V

    throw v19

    .line 125
    :cond_b
    const-string v19, "Unexpected response code %d for %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    if-eqz v13, :cond_c

    .line 127
    new-instance v19, Lcom/android/volley/NetworkResponse;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object v1, v13

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;Z)V

    goto/16 :goto_0

    .line 129
    :cond_c
    new-instance v19, Lcom/android/volley/ServerException;

    invoke-direct/range {v19 .. v19}, Lcom/android/volley/ServerException;-><init>()V

    throw v19
.end method
