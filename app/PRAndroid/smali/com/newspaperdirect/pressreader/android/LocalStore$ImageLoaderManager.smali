.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderManager"
.end annotation


# instance fields
.field private mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

.field private volatile mIsStarting:Z

.field private mIsStopRequested:Z

.field private mLocker:Ljava/lang/Object;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadsCount:I

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 1
    .parameter

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1769
    const/4 v0, 0x4

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mThreadsCount:I

    .line 1773
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    .line 1801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    .line 1802
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1771
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStarting:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStopRequested:Z

    return v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    .locals 1
    .parameter

    .prologue
    .line 1791
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->getTask()Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method

.method private getTask()Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1792
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 1793
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    move-object v1, v4

    .line 1796
    .end local p0
    :goto_0
    return-object v1

    .line 1794
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    .line 1795
    .local v0, task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    monitor-exit v1

    move-object v1, p0

    goto :goto_0

    .line 1796
    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    .restart local p0
    :cond_1
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 1792
    .end local p0
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addTask(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    monitor-exit v0

    .line 1779
    return-void

    .line 1776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTask(Landroid/widget/ImageView;)V
    .locals 4
    .parameter "img"

    .prologue
    .line 1781
    if-nez p1, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1782
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1783
    .local v0, key:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 1785
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;

    .line 1786
    .local v1, task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 1784
    .end local v1           #task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1787
    .restart local v1       #task:Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 1788
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1806
    iput-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStopRequested:Z

    .line 1807
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStarting:Z

    if-eqz v1, :cond_1

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1808
    :cond_1
    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStarting:Z

    .line 1809
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1810
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;

    invoke-direct {v1, p0, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;Ljava/io/File;)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 1827
    const/4 v3, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1831
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStarting:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mIsStopRequested:Z

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    if-eqz v1, :cond_0

    .line 1833
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 1838
    iput-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1833
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1835
    :cond_3
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;->stop:Z

    .line 1836
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesLoaderThread;

    aput-object v3, v1, v0

    goto :goto_2
.end method
