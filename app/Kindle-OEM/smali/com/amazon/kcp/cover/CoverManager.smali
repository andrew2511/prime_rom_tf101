.class public Lcom/amazon/kcp/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# static fields
.field private static final CACHE_SIZE_KEY:Ljava/lang/String; = "CoverManager_InMemoryCacheSize"

.field private static instance:Lcom/amazon/kcp/cover/CoverManager;


# instance fields
.field private final defaultCoverImageFactory:Lcom/amazon/system/drawing/IDefaultCoverImageFactory;

.field private execUtils:Lcom/amazon/system/Utilities;

.field private fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

.field private imageDownloader:Lcom/amazon/kcp/cover/IImageDownloader;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

.field private inMemoryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/cover/IImageDownloader;Lcom/amazon/system/Utilities;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/IDefaultCoverImageFactory;)V
    .locals 1
    .parameter "imageDownloader"
    .parameter "execUtils"
    .parameter "fileConnectionFactory"
    .parameter "imageFactory"
    .parameter "defaultCoverImageFactory"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->inMemoryCache:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverManager;->imageDownloader:Lcom/amazon/kcp/cover/IImageDownloader;

    .line 70
    iput-object p2, p0, Lcom/amazon/kcp/cover/CoverManager;->execUtils:Lcom/amazon/system/Utilities;

    .line 71
    iput-object p3, p0, Lcom/amazon/kcp/cover/CoverManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 72
    iput-object p4, p0, Lcom/amazon/kcp/cover/CoverManager;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 73
    iput-object p5, p0, Lcom/amazon/kcp/cover/CoverManager;->defaultCoverImageFactory:Lcom/amazon/system/drawing/IDefaultCoverImageFactory;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/CoverManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/CoverManager;->onDownloadFinished(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/cover/CoverManager;)Lcom/amazon/system/Utilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->execUtils:Lcom/amazon/system/Utilities;

    return-object v0
.end method

.method private cacheCoverInMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->inMemoryCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method private cacheCoverToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "asin"
    .parameter "newImage"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->imageDownloader:Lcom/amazon/kcp/cover/IImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/cover/IImageDownloader;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 291
    return-void
.end method

.method private enqueueForDownload(Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 5
    .parameter

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queueing cover for download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->imageDownloader:Lcom/amazon/kcp/cover/IImageDownloader;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getMaxWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getMaxHeight()I

    move-result v3

    new-instance v4, Lcom/amazon/kcp/cover/CoverManager$2;

    invoke-direct {v4, p0, p1}, Lcom/amazon/kcp/cover/CoverManager$2;-><init>(Lcom/amazon/kcp/cover/CoverManager;Lcom/amazon/kcp/cover/UpdatableCover;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/cover/IImageDownloader;->getImage(Ljava/lang/String;IILcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 415
    return-void
.end method

.method private getCachedCover(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->inMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 263
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 266
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reusing mem-cached cover for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->inMemoryCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCover(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;IIIZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9
    .parameter "book"
    .parameter "asin"
    .parameter "type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "persistToDisk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v3, p0, Lcom/amazon/kcp/cover/CoverManager;->execUtils:Lcom/amazon/system/Utilities;

    invoke-interface {v3}, Lcom/amazon/system/Utilities;->isEventThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You must call getCover on the main event thread"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    :cond_0
    move-object v2, p2

    .line 154
    .local v2, id:Ljava/lang/String;
    const/4 v8, 0x0

    .line 156
    .local v8, isNonAmazonBook:Z
    instance-of v3, p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object p2, v0

    .end local p2
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 160
    const/4 v8, 0x1

    .line 163
    :cond_1
    new-instance v1, Lcom/amazon/kcp/cover/UpdatableCover;

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/IListableBook;IIZ)V

    .line 165
    .local v1, updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;
    invoke-direct {p0, v2}, Lcom/amazon/kcp/cover/CoverManager;->getCachedCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 166
    .local v7, cachedImage:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p4, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p5, :cond_4

    .line 169
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 170
    invoke-virtual {v1}, Lcom/amazon/kcp/cover/UpdatableCover;->makeImmutable()V

    .line 209
    .end local p0
    .end local p1
    :cond_3
    :goto_0
    return-object v1

    .line 175
    .restart local p0
    .restart local p1
    :cond_4
    if-nez v7, :cond_6

    .line 178
    if-eqz v8, :cond_5

    .line 181
    check-cast p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p1
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/cover/CoverManager;->setCoverToEmbedded(Lcom/amazon/kcp/cover/UpdatableCover;Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/amazon/kcp/cover/CoverManager;->defaultCoverImageFactory:Lcom/amazon/system/drawing/IDefaultCoverImageFactory;

    invoke-interface {v3, p3}, Lcom/amazon/system/drawing/IDefaultCoverImageFactory;->getDefaultCover(I)Lcom/amazon/system/drawing/Image;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/android/drawing/AndroidImage;

    invoke-interface {p0}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 185
    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 192
    .restart local p0
    .restart local p1
    :cond_5
    iget-object v3, p0, Lcom/amazon/kcp/cover/CoverManager;->defaultCoverImageFactory:Lcom/amazon/system/drawing/IDefaultCoverImageFactory;

    invoke-interface {v3, p3}, Lcom/amazon/system/drawing/IDefaultCoverImageFactory;->getDefaultCover(I)Lcom/amazon/system/drawing/Image;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/mobipocket/android/drawing/AndroidImage;

    invoke-interface {p1}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 207
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/kcp/cover/CoverManager;->enqueueForDownload(Lcom/amazon/kcp/cover/UpdatableCover;)V

    goto :goto_0

    .line 199
    .restart local p1
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/amazon/kcp/cover/CoverManager;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/amazon/kcp/cover/CoverManager;->instance:Lcom/amazon/kcp/cover/CoverManager;

    return-object v0
.end method

.method public static initialize(Lcom/amazon/kcp/cover/IImageDownloader;Lcom/amazon/system/Utilities;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/IDefaultCoverImageFactory;)V
    .locals 6
    .parameter "imageDownloader"
    .parameter "execUtils"
    .parameter "fileConnectionFactory"
    .parameter "imageFactory"
    .parameter "defaultImageFactory"

    .prologue
    .line 86
    new-instance v0, Lcom/amazon/kcp/cover/CoverManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/cover/CoverManager;-><init>(Lcom/amazon/kcp/cover/IImageDownloader;Lcom/amazon/system/Utilities;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/IDefaultCoverImageFactory;)V

    sput-object v0, Lcom/amazon/kcp/cover/CoverManager;->instance:Lcom/amazon/kcp/cover/CoverManager;

    .line 87
    return-void
.end method

.method private onDownloadFinished(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 302
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getId()Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 309
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/cover/CoverManager;->cacheCoverInMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 311
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->shouldPersistToDisk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/cover/CoverManager;->cacheCoverToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 332
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->makeImmutable()V

    .line 333
    return-void

    .line 318
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getBook()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    instance-of v1, v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover not available on server for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trying embedded cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getBook()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/cover/CoverManager;->setCoverToEmbedded(Lcom/amazon/kcp/cover/UpdatableCover;Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    goto :goto_0

    .line 328
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover download failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setCoverToEmbedded(Lcom/amazon/kcp/cover/UpdatableCover;Lcom/amazon/kcp/library/models/ILocalBookItem;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 344
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverManager;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    new-instance v1, Lcom/amazon/system/drawing/Dimension;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getMaxWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getMaxHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    invoke-interface {p2, v0, v1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/android/drawing/AndroidImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/cover/CoverManager;->cacheCoverInMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 367
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->shouldPersistToDisk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/cover/CoverManager;->cacheCoverToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    :cond_0
    invoke-virtual {p1, v0, v4}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 373
    const/4 v0, 0x1

    .line 376
    :goto_1
    return v0

    .line 358
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method cancelRequest(Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 0
    .parameter "coverToCancel"

    .prologue
    .line 387
    return-void
.end method

.method public deleteAllDiskCachedCovers()V
    .locals 6

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverManager;->fileConnectionFactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    return-void

    .line 234
    :cond_1
    new-instance v1, Lcom/amazon/kcp/cover/CoverManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/cover/CoverManager$1;-><init>(Lcom/amazon/kcp/cover/CoverManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 243
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting cover file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCover(Lcom/amazon/kcp/library/models/IListableBook;IIZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 7
    .parameter "book"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "persistToDisk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;IIIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    return-object v0
.end method

.method public getCover(Ljava/lang/String;IIIZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 7
    .parameter "asin"
    .parameter "type"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "persistToDisk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;IIIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    return-object v0
.end method

.method public onLowMemory(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "CoverManager_InMemoryCacheSize"

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverManager;->inMemoryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method
