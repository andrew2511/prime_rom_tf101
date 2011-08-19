.class Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;
.super Ljava/lang/Object;
.source "CacheBarView.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CacheBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageInfoJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/CacheBarView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/CacheBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/CacheBarView;Lcom/android/gallery3d/ui/CacheBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;-><init>(Lcom/android/gallery3d/ui/CacheBarView;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;
    .locals 11
    .parameter "jc"

    .prologue
    .line 248
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CacheBarView;->access$400(Lcom/android/gallery3d/ui/CacheBarView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, path:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 250
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 251
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 252
    .local v0, availableBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v7, v9

    .line 253
    .local v7, totalBlocks:J
    new-instance v5, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    invoke-direct {v5}, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;-><init>()V

    .line 254
    .local v5, si:Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;
    mul-long v9, v2, v7

    iput-wide v9, v5, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->totalBytes:J

    .line 255
    sub-long v9, v7, v0

    mul-long/2addr v9, v2

    iput-wide v9, v5, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->usedBytes:J

    .line 256
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CacheBarView;->access$500(Lcom/android/gallery3d/ui/CacheBarView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/DataManager;->getTotalUsedCacheSize()J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->usedCacheBytes:J

    .line 257
    iget-object v9, p0, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;->this$0:Lcom/android/gallery3d/ui/CacheBarView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CacheBarView;->access$500(Lcom/android/gallery3d/ui/CacheBarView;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/DataManager;->getTotalTargetCacheSize()J

    move-result-wide v9

    iput-wide v9, v5, Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;->targetCacheBytes:J

    .line 258
    return-object v5
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/CacheBarView$StorageInfoJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/ui/CacheBarView$StorageInfo;

    move-result-object v0

    return-object v0
.end method
