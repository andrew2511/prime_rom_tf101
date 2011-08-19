.class public Lcom/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryApp;


# instance fields
.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

.field private mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public declared-synchronized getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DataManager;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    if-nez v1, :cond_2

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 82
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/gallery3d/data/DownloadCache;-><init>(Lcom/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    .line 84
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->initPixelDensity(Landroid/content/Context;)V

    .line 44
    return-void
.end method
