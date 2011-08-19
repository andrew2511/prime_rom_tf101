.class public Lcom/amazon/kcp/cover/AndroidImageDownloader;
.super Ljava/lang/Object;
.source "AndroidImageDownloader.java"

# interfaces
.implements Lcom/amazon/kcp/cover/IImageDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/AndroidImageDownloader$1;,
        Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;,
        Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;,
        Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;,
        Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;
    }
.end annotation


# static fields
.field private static final APPROXIMATE_QUEUE_SIZE:I = 0x14

.field private static final CONNECTION_TIMEOUT:J = 0xea60L

.field private static final MAX_IO_THREADS:I = 0x2

.field private static final THREAD_KEEP_ALIVE_TIME_MILLIS:J = 0x1b77400L

.field private static final ioThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static lifoQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 60
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0x14

    new-instance v3, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;-><init>(Lcom/amazon/kcp/cover/AndroidImageDownloader$1;)V

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->lifoQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/32 v3, 0x1b77400

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/amazon/kcp/cover/AndroidImageDownloader;->lifoQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->ioThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 0
    .parameter "fileConnectionFactory"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getImageFromHddOrWeb(Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->saveImageToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getCoverFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "asin"

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cover_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCoverUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "asin"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ecx.images-amazon.com/images/P/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".01._SX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SCLZZZZZZZ_.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageFromHdd(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "id"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getCoverFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, filename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    :cond_0
    return-object v0
.end method

.method private getImageFromHddOrWeb(Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 3
    .parameter "id"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "finishListener"

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getImageFromHdd(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, image:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v2, p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, p3, :cond_1

    .line 226
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getImageFromWeb(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    .local v1, webBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 231
    move-object v0, v1

    .line 236
    .end local v1           #webBitmap:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p4, v0, v2}, Lcom/amazon/kcp/cover/OnImageUpdateListener;->onUpdate(Landroid/graphics/Bitmap;Z)V

    .line 237
    return-void
.end method

.method private getImageFromWeb(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    new-instance v1, Lcom/mobipocket/android/net/AndroidHttpConnection;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/mobipocket/android/net/AndroidHttpConnection;-><init>(I)V

    .line 251
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/android/net/AndroidHttpConnection;->setTimeout(J)V

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getCoverUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 254
    const/4 v3, 0x0

    .line 257
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/mobipocket/android/net/AndroidHttpConnection;->open(Ljava/lang/String;)V

    .line 258
    const/4 v3, 0x1

    .line 259
    invoke-virtual {v1}, Lcom/mobipocket/android/net/AndroidHttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 262
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 272
    if-eqz v3, :cond_0

    .line 277
    :try_start_1
    invoke-virtual {v1}, Lcom/mobipocket/android/net/AndroidHttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :catch_1
    move-exception v4

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    .line 266
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloader failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    if-eqz v4, :cond_0

    .line 277
    :try_start_3
    invoke-virtual {v1}, Lcom/mobipocket/android/net/AndroidHttpConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 281
    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v3, :cond_1

    .line 277
    :try_start_4
    invoke-virtual {v1}, Lcom/mobipocket/android/net/AndroidHttpConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 282
    :cond_1
    :goto_2
    throw v0

    .line 281
    :catch_3
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 272
    :catchall_1
    move-exception v0

    move v3, v4

    goto :goto_1
.end method

.method private saveImageToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 316
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/AndroidImageDownloader;->getCoverFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 317
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 319
    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save cached cover for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save cached cover for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getImage(Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 6
    .parameter "id"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "finishListener"

    .prologue
    .line 199
    new-instance v0, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;-><init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 201
    .local v0, downloadRunnable:Lcom/amazon/kcp/cover/AndroidImageDownloader$GetImageRunnable;
    sget-object v1, Lcom/amazon/kcp/cover/AndroidImageDownloader;->ioThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 207
    sget-object v0, Lcom/amazon/kcp/cover/AndroidImageDownloader;->ioThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/cover/AndroidImageDownloader$SaveImageRunnable;-><init>(Lcom/amazon/kcp/cover/AndroidImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
