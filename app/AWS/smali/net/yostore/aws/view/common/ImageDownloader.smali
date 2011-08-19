.class public Lnet/yostore/aws/view/common/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;,
        Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;,
        Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_PURGE:I = 0x3e8

.field private static final HARD_CACHE_CAPACITY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ImageDownloader"

.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final purgeHandler:Landroid/os/Handler;

.field private final purger:Ljava/lang/Runnable;

.field private final sHardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 366
    sput-object v0, Lnet/yostore/aws/view/common/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lnet/yostore/aws/view/common/ImageDownloader$1;

    const/16 v1, 0x32

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lnet/yostore/aws/view/common/ImageDownloader$1;-><init>(Lnet/yostore/aws/view/common/ImageDownloader;IFZ)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    .line 369
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lnet/yostore/aws/view/common/ImageDownloader$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/ImageDownloader$2;-><init>(Lnet/yostore/aws/view/common/ImageDownloader;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purger:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lnet/yostore/aws/view/common/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/ImageView;)Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    .locals 1
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Lnet/yostore/aws/view/common/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    return-object v0
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 382
    if-eqz p2, :cond_0

    .line 383
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    monitor-exit v0

    .line 387
    :cond_0
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-static {p1}, Lnet/yostore/aws/view/common/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 146
    .local v0, bitmapDownloaderTask:Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    if-eqz v0, :cond_1

    .line 147
    invoke-static {v0}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->access$2(Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, bitmapUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    :cond_0
    invoke-virtual {v0, v3}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->cancel(Z)Z

    .end local v1           #bitmapUrl:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 155
    :goto_0
    return v2

    .line 152
    .restart local v1       #bitmapUrl:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 100
    const v2, 0x7f02006f

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-static {p1, p2}, Lnet/yostore/aws/view/common/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v1, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    invoke-direct {v1, p0, p2}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;-><init>(Lnet/yostore/aws/view/common/ImageDownloader;Landroid/widget/ImageView;)V

    .line 129
    .local v1, task:Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    new-instance v0, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;

    invoke-direct {v0, v1}, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;-><init>(Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;)V

    .line 130
    .local v0, downloadedDrawable:Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;
    .locals 4
    .parameter "imageView"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 166
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;

    if-eqz v3, :cond_0

    .line 167
    move-object v0, v2

    check-cast v0, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;

    move-object v1, v0

    .line 168
    .local v1, downloadedDrawable:Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;
    invoke-virtual {v1}, Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;->getBitmapDownloaderTask()Lnet/yostore/aws/view/common/ImageDownloader$BitmapDownloaderTask;

    move-result-object v3

    .line 171
    .end local v1           #downloadedDrawable:Lnet/yostore/aws/view/common/ImageDownloader$DownloadedDrawable;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"

    .prologue
    .line 395
    iget-object v2, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 396
    :try_start_0
    iget-object v3, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 397
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 400
    iget-object v3, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v3, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    monitor-exit v2

    move-object v2, v0

    .line 419
    :goto_0
    return-object v2

    .line 395
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    sget-object v2, Lnet/yostore/aws/view/common/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 408
    .local v1, bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 410
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 412
    goto :goto_0

    .line 395
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 415
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v2, Lnet/yostore/aws/view/common/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetPurgeTimer()V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/common/ImageDownloader;->purger:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lnet/yostore/aws/view/common/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 428
    sget-object v0, Lnet/yostore/aws/view/common/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 429
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 74
    invoke-direct {p0}, Lnet/yostore/aws/view/common/ImageDownloader;->resetPurgeTimer()V

    .line 75
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/common/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p1, p2}, Lnet/yostore/aws/view/common/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 81
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v10, 0x0

    .line 179
    const-string v7, "Android"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 180
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 184
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 185
    .local v6, statusCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_2

    .line 186
    const-string v7, "ImageDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 187
    const-string v9, " while retrieving bitmap from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 216
    instance-of v7, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_0

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_0
    move-object v7, v10

    .line 220
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :cond_1
    :goto_0
    return-object v7

    .line 191
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 192
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_7

    .line 193
    const/4 v4, 0x0

    .line 195
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 198
    new-instance v7, Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;

    invoke-direct {v7, v4}, Lnet/yostore/aws/view/common/ImageDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 200
    if-eqz v4, :cond_3

    .line 201
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 216
    instance-of v8, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v8, :cond_1

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 199
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v7

    .line 200
    if-eqz v4, :cond_4

    .line 201
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 204
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 206
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 207
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 208
    const-string v7, "ImageDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "I/O error while retrieving bitmap from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    instance-of v7, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_5

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    :goto_1
    move-object v7, v10

    .line 220
    goto :goto_0

    .line 209
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 210
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 211
    const-string v7, "ImageDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Incorrect URL: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    instance-of v7, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_5

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 212
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 213
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 214
    const-string v7, "ImageDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error while retrieving bitmap from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 216
    instance-of v7, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_5

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v7

    .line 216
    instance-of v8, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v8, :cond_6

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 219
    :cond_6
    throw v7

    .line 216
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_7
    instance-of v7, v0, Landroid/net/http/AndroidHttpClient;

    if-eqz v7, :cond_5

    .line 217
    check-cast v0, Landroid/net/http/AndroidHttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_1
.end method
