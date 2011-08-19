.class Lcom/android/gallery3d/app/Bookmarker;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    .line 225
    return-void
.end method


# virtual methods
.method public getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 14
    .parameter "uri"

    .prologue
    const/16 v13, 0x7530

    const/4 v12, 0x0

    .line 247
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v8, "bookmark"

    const/16 v9, 0x64

    const/16 v10, 0x2800

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/util/BlobCache;

    move-result-object v1

    .line 251
    .local v1, cache:Lcom/android/gallery3d/util/BlobCache;
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/android/gallery3d/util/BlobCache;->lookup(J)[B

    move-result-object v2

    .line 252
    .local v2, data:[B
    if-nez v2, :cond_0

    move-object v7, v12

    .line 273
    .end local v1           #cache:Lcom/android/gallery3d/util/BlobCache;
    .end local v2           #data:[B
    :goto_0
    return-object v7

    .line 254
    .restart local v1       #cache:Lcom/android/gallery3d/util/BlobCache;
    .restart local v2       #data:[B
    :cond_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 257
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-static {v3}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, uriString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 259
    .local v0, bookmark:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 261
    .local v4, duration:I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v12

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    if-lt v0, v13, :cond_2

    const v7, 0x1d4c0

    if-lt v4, v7, :cond_2

    sub-int v7, v4, v13

    if-le v0, v7, :cond_3

    :cond_2
    move-object v7, v12

    .line 267
    goto :goto_0

    .line 269
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 270
    .end local v0           #bookmark:I
    .end local v1           #cache:Lcom/android/gallery3d/util/BlobCache;
    .end local v2           #data:[B
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v4           #duration:I
    .end local v6           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 271
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "Bookmarker"

    const-string v8, "getBookmark failed"

    invoke-static {v7, v8, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v12

    .line 273
    goto :goto_0
.end method

.method public setBookmark(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 229
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v5, "bookmark"

    const/16 v6, 0x64

    const/16 v7, 0x2800

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/util/BlobCache;

    move-result-object v1

    .line 233
    .local v1, cache:Lcom/android/gallery3d/util/BlobCache;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v2, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 238
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 239
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/gallery3d/util/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #cache:Lcom/android/gallery3d/util/BlobCache;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 241
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Bookmarker"

    const-string v5, "setBookmark failed"

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
