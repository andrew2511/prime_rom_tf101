.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;
.super Landroid/os/AsyncTask;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageStatsLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTotalBytes:J

.field private mUsedBytes:J

.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 655
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 656
    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mContext:Landroid/content/Context;

    .line 657
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const-string v11, "VolumeCarouselFragment"

    .line 663
    :try_start_0
    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/books/provider/BooksProvider;->getFileStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 664
    .local v6, storageRoot:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 665
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 666
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 667
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v7, v9

    .line 668
    .local v7, totalBlocks:J
    mul-long v9, v2, v7

    iput-wide v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mTotalBytes:J

    .line 669
    sub-long v9, v7, v0

    mul-long/2addr v9, v2

    iput-wide v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mUsedBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #storageRoot:Ljava/io/File;
    .end local v7           #totalBlocks:J
    :cond_0
    :goto_0
    const/4 v9, 0x0

    return-object v9

    .line 670
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 671
    .local v4, e:Ljava/io/IOException;
    const-string v9, "VolumeCarouselFragment"

    const/4 v9, 0x6

    invoke-static {v11, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 672
    const-string v9, "VolumeCarouselFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    .line 683
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->mUsedBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUsedBytes:Ljava/lang/Long;

    .line 684
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    .line 686
    :cond_0
    return-void
.end method
