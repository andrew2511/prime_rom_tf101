.class public Lcom/github/droidfu/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final BITMAP_EXTRA:Ljava/lang/String; = "droidfu:extra_bitmap"

.field private static final DEFAULT_POOL_SIZE:I = 0x2

.field static final HANDLER_MESSAGE_ID:I

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static imageCache:Lcom/github/droidfu/imageloader/ImageCache;

.field private static numAttempts:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/github/droidfu/imageloader/ImageLoader;->numAttempts:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageUrl"
    .parameter "imageView"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/github/droidfu/imageloader/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/github/droidfu/imageloader/ImageLoaderHandler;

    invoke-direct {v0, p2}, Lcom/github/droidfu/imageloader/ImageLoaderHandler;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/github/droidfu/imageloader/ImageLoader;->handler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/github/droidfu/imageloader/ImageLoaderHandler;)V
    .locals 0
    .parameter "imageUrl"
    .parameter "handler"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/github/droidfu/imageloader/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/github/droidfu/imageloader/ImageLoader;->handler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    invoke-virtual {v1}, Lcom/github/droidfu/imageloader/ImageCache;->clear()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    const-class v1, Lcom/github/droidfu/imageloader/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    :cond_0
    sget-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/github/droidfu/imageloader/ImageCache;

    const/16 v2, 0x19

    const/4 v3, 0x5

    invoke-direct {v0, p0, v2, v3}, Lcom/github/droidfu/imageloader/ImageCache;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setMaxDownloadAttempts(I)V
    .locals 0
    .parameter "numAttempts"

    .prologue
    .line 72
    sput p0, Lcom/github/droidfu/imageloader/ImageLoader;->numAttempts:I

    .line 73
    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 1
    .parameter "numThreads"

    .prologue
    .line 63
    sget-object v0, Lcom/github/droidfu/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 64
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "imageUrl"
    .parameter "imageView"

    .prologue
    .line 121
    new-instance v1, Lcom/github/droidfu/imageloader/ImageLoader;

    invoke-direct {v1, p0, p1}, Lcom/github/droidfu/imageloader/ImageLoader;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 122
    .local v1, loader:Lcom/github/droidfu/imageloader/ImageLoader;
    sget-object v2, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    monitor-enter v2

    .line 123
    :try_start_0
    sget-object v3, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    invoke-virtual {v3, p0}, Lcom/github/droidfu/imageloader/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 126
    sget-object v3, Lcom/github/droidfu/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 130
    :goto_0
    monitor-exit v2

    .line 131
    return-void

    .line 128
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 130
    .end local v0           #image:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static start(Ljava/lang/String;Lcom/github/droidfu/imageloader/ImageLoaderHandler;)V
    .locals 4
    .parameter "imageUrl"
    .parameter "handler"

    .prologue
    .line 147
    new-instance v1, Lcom/github/droidfu/imageloader/ImageLoader;

    invoke-direct {v1, p0, p1}, Lcom/github/droidfu/imageloader/ImageLoader;-><init>(Ljava/lang/String;Lcom/github/droidfu/imageloader/ImageLoaderHandler;)V

    .line 148
    .local v1, loader:Lcom/github/droidfu/imageloader/ImageLoader;
    sget-object v2, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    monitor-enter v2

    .line 149
    :try_start_0
    sget-object v3, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    invoke-virtual {v3, p0}, Lcom/github/droidfu/imageloader/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, image:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 152
    sget-object v3, Lcom/github/droidfu/imageloader/ImageLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 156
    :goto_0
    monitor-exit v2

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-virtual {v1, v0}, Lcom/github/droidfu/imageloader/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 156
    .end local v0           #image:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public notifyImageLoaded(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 199
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 200
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "droidfu:extra_bitmap"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 205
    iget-object v2, p0, Lcom/github/droidfu/imageloader/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 173
    .local v2, timesTried:I
    :goto_0
    sget v4, Lcom/github/droidfu/imageloader/ImageLoader;->numAttempts:I

    if-gt v2, v4, :cond_0

    .line 175
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/github/droidfu/imageloader/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    sget-object v4, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    sget-object v5, Lcom/github/droidfu/imageloader/ImageLoader;->imageCache:Lcom/github/droidfu/imageloader/ImageCache;

    iget-object v6, p0, Lcom/github/droidfu/imageloader/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/github/droidfu/imageloader/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 179
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v3           #url:Ljava/net/URL;
    :cond_0
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/github/droidfu/imageloader/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_1
    return-void

    .line 179
    .restart local v3       #url:Ljava/net/URL;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 182
    .local v1, e:Ljava/lang/Throwable;
    const-class v4, Lcom/github/droidfu/imageloader/ImageLoader;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/droidfu/imageloader/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed (attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v4, 0x7d0

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 189
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 190
    goto :goto_0

    .line 186
    :catch_1
    move-exception v4

    goto :goto_1
.end method
