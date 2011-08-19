.class public Lcom/nvidia/tegrazone/components/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BITMAP_EXTRA:Ljava/lang/String; = "droidfu:extra_bitmap"

.field private static final DEFAULT_POOL_SIZE:I = 0x2

.field private static final DEFAULT_TTL_MINUTES:I = 0x5a0

.field public static final HANDLER_MESSAGE_ID:I = 0x0

.field public static final IMAGE_URL_EXTRA:Ljava/lang/String; = "droidfu:extra_image_url"

.field private static final NO_POSITION:I = -0x1

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

.field private static numAttempts:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    sput v0, Lcom/nvidia/tegrazone/components/ImageLoader;->numAttempts:I

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageUrl"
    .parameter "imageView"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;

    invoke-direct {v0, p2}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->handler:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "imageUrl"
    .parameter "imageView"
    .parameter "position"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;

    invoke-direct {v0, p2, p3}, Lcom/nvidia/tegrazone/components/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->handler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/nvidia/tegrazone/components/ImageLoaderHandler;)V
    .locals 0
    .parameter "imageUrl"
    .parameter "handler"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->handler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v1, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/components/ImageCache;->clear()V

    .line 220
    monitor-exit v0

    .line 223
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static doLoadImage(Lcom/nvidia/tegrazone/components/ImageLoader;)V
    .locals 4
    .parameter "loader"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 204
    .local v1, imageUrl:Ljava/lang/String;
    sget-object v2, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    monitor-enter v2

    .line 205
    :try_start_0
    sget-object v3, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    invoke-virtual {v3, v1}, Lcom/nvidia/tegrazone/components/ImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 206
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 208
    sget-object v3, Lcom/nvidia/tegrazone/components/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 204
    :goto_0
    monitor-exit v2

    .line 213
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/nvidia/tegrazone/components/ImageLoader;->notifyImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 204
    .end local v0           #image:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getImageCache()Lcom/nvidia/tegrazone/components/ImageCache;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 103
    const-class v1, Lcom/nvidia/tegrazone/components/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 106
    :cond_0
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageCache;

    const/16 v2, 0x19

    const-wide/16 v3, 0x5a0

    const/4 v5, 0x2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nvidia/tegrazone/components/ImageCache;-><init>(IJI)V

    sput-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    .line 108
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/nvidia/tegrazone/components/ImageCache;->enableDiskCache(Landroid/content/Context;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setMaxDownloadAttempts(I)V
    .locals 0
    .parameter "numAttempts"

    .prologue
    .line 88
    sput p0, Lcom/nvidia/tegrazone/components/ImageLoader;->numAttempts:I

    .line 89
    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 1
    .parameter "numThreads"

    .prologue
    .line 79
    sget-object v0, Lcom/nvidia/tegrazone/components/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 80
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageUrl"
    .parameter "imageView"

    .prologue
    .line 143
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/nvidia/tegrazone/components/ImageLoader;->start(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 144
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "imageUrl"
    .parameter "imageView"
    .parameter "position"

    .prologue
    .line 169
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 170
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageLoader;

    invoke-direct {v0, p0, p1}, Lcom/nvidia/tegrazone/components/ImageLoader;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 174
    .local v0, loader:Lcom/nvidia/tegrazone/components/ImageLoader;
    :goto_0
    invoke-static {v0}, Lcom/nvidia/tegrazone/components/ImageLoader;->doLoadImage(Lcom/nvidia/tegrazone/components/ImageLoader;)V

    .line 175
    return-void

    .line 172
    .end local v0           #loader:Lcom/nvidia/tegrazone/components/ImageLoader;
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/nvidia/tegrazone/components/ImageLoader;-><init>(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .restart local v0       #loader:Lcom/nvidia/tegrazone/components/ImageLoader;
    goto :goto_0
.end method

.method public static start(Ljava/lang/String;Lcom/nvidia/tegrazone/components/ImageLoaderHandler;)V
    .locals 1
    .parameter "imageUrl"
    .parameter "handler"

    .prologue
    .line 191
    new-instance v0, Lcom/nvidia/tegrazone/components/ImageLoader;

    invoke-direct {v0, p0, p1}, Lcom/nvidia/tegrazone/components/ImageLoader;-><init>(Ljava/lang/String;Lcom/nvidia/tegrazone/components/ImageLoaderHandler;)V

    .line 192
    .local v0, loader:Lcom/nvidia/tegrazone/components/ImageLoader;
    invoke-static {v0}, Lcom/nvidia/tegrazone/components/ImageLoader;->doLoadImage(Lcom/nvidia/tegrazone/components/ImageLoader;)V

    .line 193
    return-void
.end method


# virtual methods
.method public notifyImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 284
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 285
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "droidfu:extra_image_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "droidfu:extra_bitmap"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 291
    iget-object v2, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    .line 238
    .local v9, timesTried:I
    :goto_0
    sget v11, Lcom/nvidia/tegrazone/components/ImageLoader;->numAttempts:I

    if-le v9, v11, :cond_1

    .line 278
    :goto_1
    if-eqz v0, :cond_0

    .line 279
    iget-object v11, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v11, v0}, Lcom/nvidia/tegrazone/components/ImageLoader;->notifyImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 281
    :cond_0
    return-void

    .line 240
    :cond_1
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .local v10, url:Ljava/net/URL;
    const/4 v4, 0x0

    .line 249
    .local v4, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .local v5, httpRequest:Lorg/apache/http/client/methods/HttpGet;
    move-object v4, v5

    .line 254
    .end local v5           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    :goto_2
    :try_start_2
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 255
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v6, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 257
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 258
    .local v3, entity:Lorg/apache/http/HttpEntity;
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v3}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 259
    .local v1, bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v1}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 260
    .local v7, instream:Ljava/io/InputStream;
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    sget-object v11, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    :try_start_3
    sget-object v12, Lcom/nvidia/tegrazone/components/ImageLoader;->imageCache:Lcom/nvidia/tegrazone/components/ImageCache;

    iget-object v13, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v12, v13, v0}, Lcom/nvidia/tegrazone/components/ImageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 266
    .end local v1           #bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v7           #instream:Ljava/io/InputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #url:Ljava/net/URL;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 267
    .local v2, e:Ljava/lang/Throwable;
    const-class v11, Lcom/nvidia/tegrazone/components/ImageLoader;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/nvidia/tegrazone/components/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 268
    const-string v13, " failed (attempt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 267
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/16 v11, 0x7d0

    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 274
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 250
    .end local v2           #e:Ljava/lang/Throwable;
    .restart local v4       #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v10       #url:Ljava/net/URL;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 251
    .local v2, e:Ljava/net/URISyntaxException;
    :try_start_6
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 271
    .end local v4           #httpRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v10           #url:Ljava/net/URL;
    .local v2, e:Ljava/lang/Throwable;
    :catch_2
    move-exception v11

    goto :goto_3
.end method
