.class public Lcom/google/android/apps/books/net/BooksCache;
.super Lcom/google/android/filecache/FileResponseCache;
.source "BooksCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BooksCache"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/filecache/FileResponseCache;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/google/android/apps/books/net/BooksCache;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method public static createCookie(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .parameter "file"

    .prologue
    .line 82
    return-object p0
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 9
    .parameter "dir"

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, children:[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 65
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 66
    .local v1, child:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    const-string v6, "BooksCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #child:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "filecache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getFile(Ljava/lang/Object;)Ljava/io/File;
    .locals 0
    .parameter "cookie"

    .prologue
    .line 93
    check-cast p0, Ljava/io/File;

    .end local p0
    return-object p0
.end method

.method private getVolumeCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "volumeId"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/BooksCache;->getVolumeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "filecache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getVolumeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "volumeId"

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/android/apps/books/net/BooksCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "volumes"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .end local v0           #dir:Ljava/io/File;
    .local v1, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static hash(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 138
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 139
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 141
    .local v4, output:[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 143
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 146
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v3           #i:I
    .end local v4           #output:[B
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 147
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 148
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 149
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static install(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "BooksCache"

    .line 41
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    .line 42
    .local v1, responseCache:Ljava/net/ResponseCache;
    instance-of v3, v1, Lcom/google/android/apps/books/net/BooksCache;

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "BooksCache"

    const-string v3, "Cache has already been installed."

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    if-nez v1, :cond_1

    .line 45
    new-instance v0, Lcom/google/android/apps/books/net/BooksCache;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/net/BooksCache;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, booksCache:Lcom/google/android/apps/books/net/BooksCache;
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    goto :goto_0

    .line 48
    .end local v0           #booksCache:Lcom/google/android/apps/books/net/BooksCache;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 49
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/net/ResponseCache;>;"
    const-string v3, "BooksCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Another ResponseCache has already been installed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isGoogleBooksDomain(Ljava/lang/String;)Z
    .locals 1
    .parameter "authority"

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGoogleBooksSubDomain(Ljava/lang/String;)Z
    .locals 3
    .parameter "authority"

    .prologue
    .line 106
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, booksAuthority:Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGoogleBooksUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, authority:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/net/BooksCache;->isGoogleBooksDomain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/net/BooksCache;->isGoogleBooksSubDomain(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, path:Ljava/lang/String;
    const-string v2, "/books"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 126
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVolumeSynchronized(Ljava/lang/String;)Z
    .locals 1
    .parameter "volumeId"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/net/BooksCache;->getVolumeDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static onDeviceStorageLow(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/apps/books/net/BooksCache;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/net/BooksCache;->deleteContents(Ljava/io/File;)V

    .line 60
    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 6
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
    .line 232
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/filecache/FileResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 233
    .local v0, response:Ljava/net/CacheResponse;
    const-string v1, "BooksCache"

    const-string v2, "Cache %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v5, "hit"

    :goto_0
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0

    .line 233
    :cond_0
    const-string v5, "miss"

    goto :goto_0
.end method

.method protected getFile(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Ljava/io/File;
    .locals 7
    .parameter "u"
    .parameter "requestMethod"
    .parameter
    .parameter "cookie"
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

    .prologue
    .line 206
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p4}, Lcom/google/android/apps/books/net/BooksCache;->getFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 207
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    move-object v5, v1

    .line 226
    :goto_0
    return-object v5

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, spec:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 213
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/net/BooksCache;->isGoogleBooksUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, volumeId:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/net/BooksCache;->isVolumeSynchronized(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/net/BooksCache;->getVolumeCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, dir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Lcom/google/android/apps/books/net/BooksCache;->hash(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0           #dir:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/books/net/BooksCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/apps/books/net/BooksCache;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 223
    .restart local v0       #dir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Lcom/google/android/apps/books/net/BooksCache;->hash(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v0           #dir:Ljava/io/File;
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 4
    .parameter "uri"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 240
    .local v1, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 241
    .local v2, responseCode:I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/google/android/filecache/FileResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v3

    .line 245
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
