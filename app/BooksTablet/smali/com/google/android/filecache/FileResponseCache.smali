.class public abstract Lcom/google/android/filecache/FileResponseCache;
.super Ljava/net/ResponseCache;
.source "FileResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filecache/FileResponseCache$Frame;,
        Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;
    }
.end annotation


# static fields
.field private static final MAX_AGE_PREFIX:Ljava/lang/String; = "max-age="

.field private static final TAG:Ljava/lang/String; = "FileResponseCache"


# instance fields
.field private final mStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/filecache/FileResponseCache$Frame;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/filecache/FileResponseCache;)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/filecache/FileResponseCache;Lcom/google/android/filecache/FileResponseCache$Frame;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/filecache/FileResponseCache;->deleteFile(Lcom/google/android/filecache/FileResponseCache$Frame;)V

    return-void
.end method

.method public static createContentHandler(Ljava/net/ContentHandler;Ljava/lang/Object;)Ljava/net/ContentHandler;
    .locals 7
    .parameter "handler"
    .parameter "cookie"

    .prologue
    const-string v6, "FileResponseCache"

    .line 429
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v2

    .line 430
    .local v2, responseCache:Ljava/net/ResponseCache;
    instance-of v4, v2, Lcom/google/android/filecache/FileResponseCache;

    if-eqz v4, :cond_0

    .line 431
    move-object v0, v2

    check-cast v0, Lcom/google/android/filecache/FileResponseCache;

    move-object v1, v0

    .line 432
    .local v1, fileResponseCache:Lcom/google/android/filecache/FileResponseCache;
    new-instance v4, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;

    invoke-direct {v4, p0, v1, p1}, Lcom/google/android/filecache/FileResponseCache$FileResponseCacheContentHandler;-><init>(Ljava/net/ContentHandler;Lcom/google/android/filecache/FileResponseCache;Ljava/lang/Object;)V

    .line 439
    .end local v1           #fileResponseCache:Lcom/google/android/filecache/FileResponseCache;
    :goto_0
    return-object v4

    .line 433
    :cond_0
    if-nez v2, :cond_1

    .line 434
    const-string v4, "FileResponseCache"

    const-string v4, "ResponseCache not found"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 435
    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 438
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/net/ResponseCache;>;"
    const-string v4, "FileResponseCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed ResponseCache is not a FileResponseCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 439
    goto :goto_0
.end method

.method private deleteFile(Lcom/google/android/filecache/FileResponseCache$Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/google/android/filecache/FileResponseCache;->getFile(Lcom/google/android/filecache/FileResponseCache$Frame;)Ljava/io/File;

    move-result-object v0

    .line 351
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 354
    :cond_0
    return-void
.end method

.method private getFile(Lcom/google/android/filecache/FileResponseCache$Frame;)Ljava/io/File;
    .locals 9
    .parameter "frame"

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 203
    .local v2, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, requestMethod:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    .line 206
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 212
    .local v5, uri:Ljava/net/URI;
    new-instance v3, Lcom/google/android/filecache/RequestPropertiesMap;

    invoke-direct {v3, v2}, Lcom/google/android/filecache/RequestPropertiesMap;-><init>(Ljava/net/URLConnection;)V

    .line 214
    .local v3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCookie()Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, cookie:Ljava/lang/Object;
    invoke-virtual {p0, v5, v4, v3, v0}, Lcom/google/android/filecache/FileResponseCache;->getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 217
    .end local v0           #cookie:Ljava/lang/Object;
    .end local v2           #http:Ljava/net/HttpURLConnection;
    .end local v3           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #requestMethod:Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    .end local v6           #url:Ljava/net/URL;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 218
    .local v1, e:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method protected createCacheRequest(Ljava/io/File;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 10
    .parameter "file"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v3, -0x1

    .line 335
    .local v3, responseCode:I
    const/4 v5, 0x0

    .line 336
    .local v5, responseMessage:Ljava/lang/String;
    instance-of v7, p2, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_0

    .line 337
    move-object v0, p2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 338
    .local v2, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 339
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    .line 345
    .end local v2           #http:Ljava/net/HttpURLConnection;
    :goto_0
    invoke-virtual {p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 346
    .local v4, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v7, Lcom/google/android/filecache/FileCacheRequest;

    invoke-direct {v7, p1, v3, v5, v4}, Lcom/google/android/filecache/FileCacheRequest;-><init>(Ljava/io/File;ILjava/lang/String;Ljava/util/Map;)V

    return-object v7

    .line 341
    .end local v4           #responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 342
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/net/URLConnection;>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, className:Ljava/lang/String;
    const-string v7, "FileResponseCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URLConnection is not an HttpURLConnection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected createCacheResponse(Ljava/io/File;)Ljava/net/CacheResponse;
    .locals 1
    .parameter "file"

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/filecache/FileCacheResponse;

    invoke-direct {v0, p1}, Lcom/google/android/filecache/FileCacheResponse;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 10
    .parameter "uri"
    .parameter "requestMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Stack;

    .line 231
    .local v8, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v9

    .line 250
    :goto_0
    return-object v0

    .line 234
    :cond_1
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/filecache/FileResponseCache$Frame;

    .line 235
    .local v7, frame:Lcom/google/android/filecache/FileResponseCache$Frame;
    invoke-virtual {v7}, Lcom/google/android/filecache/FileResponseCache$Frame;->getConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 243
    .local v6, connection:Ljava/net/URLConnection;
    new-instance p3, Lcom/google/android/filecache/RequestPropertiesMap;

    .end local p3           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p3, v6}, Lcom/google/android/filecache/RequestPropertiesMap;-><init>(Ljava/net/URLConnection;)V

    .line 244
    .restart local p3       #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v7}, Lcom/google/android/filecache/FileResponseCache$Frame;->getCookie()Ljava/lang/Object;

    move-result-object v5

    .line 245
    .local v5, cookie:Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/google/android/filecache/FileResponseCache;->getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 246
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filecache/FileResponseCache;->isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0, v1}, Lcom/google/android/filecache/FileResponseCache;->createCacheResponse(Ljava/io/File;)Ljava/net/CacheResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v9

    .line 250
    goto :goto_0
.end method

.method protected abstract getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation
.end method

.method protected isStale(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 17
    .parameter "file"
    .parameter "uri"
    .parameter "requestMethod"
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p4, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v13, "cache-control"

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 146
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    .line 147
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 148
    .local v11, value:Ljava/lang/String;
    const-string v13, "max-age="

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 150
    :try_start_0
    const-string v13, "max-age="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    .line 151
    .local v10, start:I
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 152
    .local v8, maxAge:J
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-nez v13, :cond_1

    .line 153
    const/4 v13, 0x1

    .line 166
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #maxAge:J
    .end local v10           #start:I
    .end local v11           #value:Ljava/lang/String;
    :goto_1
    return v13

    .line 155
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #maxAge:J
    .restart local v10       #start:I
    .restart local v11       #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    sub-long v2, v13, v15

    .line 156
    .local v2, ageInMillis:J
    const-wide/16 v13, 0x3e8

    div-long v4, v2, v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .local v4, ageInSeconds:J
    cmp-long v13, v4, v8

    if-lez v13, :cond_0

    .line 158
    const/4 v13, 0x1

    goto :goto_1

    .line 160
    .end local v2           #ageInMillis:J
    .end local v4           #ageInSeconds:J
    .end local v8           #maxAge:J
    .end local v10           #start:I
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 161
    .local v6, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 10
    .parameter "uri"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "FileResponseCache"

    .line 259
    iget-object v6, p0, Lcom/google/android/filecache/FileResponseCache;->mStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Stack;

    .line 260
    .local v5, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/google/android/filecache/FileResponseCache$Frame;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v8

    .line 291
    :goto_0
    return-object v6

    .line 263
    :cond_1
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/filecache/FileResponseCache$Frame;

    .line 268
    .local v2, frame:Lcom/google/android/filecache/FileResponseCache$Frame;
    invoke-direct {p0, v2}, Lcom/google/android/filecache/FileResponseCache;->getFile(Lcom/google/android/filecache/FileResponseCache$Frame;)Ljava/io/File;

    move-result-object v1

    .line 269
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_5

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 271
    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, path:Ljava/lang/String;
    const-string v6, "FileResponseCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create parent directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 274
    goto :goto_0

    .line 276
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 278
    .restart local v4       #path:Ljava/lang/String;
    const-string v6, "FileResponseCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parent is not a directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 279
    goto :goto_0

    .line 281
    .end local v4           #path:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 283
    .restart local v4       #path:Ljava/lang/String;
    const-string v6, "FileResponseCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destination file is a directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 284
    goto/16 :goto_0

    .line 287
    .end local v4           #path:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/google/android/filecache/FileResponseCache;->createCacheRequest(Ljava/io/File;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    .line 288
    .local v0, cacheRequest:Ljava/net/CacheRequest;
    invoke-virtual {v2, v0}, Lcom/google/android/filecache/FileResponseCache$Frame;->setCacheRequest(Ljava/net/CacheRequest;)V

    move-object v6, v0

    .line 289
    goto/16 :goto_0

    .end local v0           #cacheRequest:Ljava/net/CacheRequest;
    .end local v3           #parent:Ljava/io/File;
    :cond_5
    move-object v6, v8

    .line 291
    goto/16 :goto_0
.end method
