.class Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;
.super Ljava/lang/Object;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderManager"
.end annotation


# instance fields
.field private mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

.field private mLocker:Ljava/lang/Object;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadsCount:I

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V
    .locals 1
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x4

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mThreadsCount:I

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    .line 408
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    .locals 1
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->getTask()Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    move-result-object v0

    return-object v0
.end method

.method private getTask()Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    move-object v1, v4

    .line 402
    .end local p0
    :goto_0
    return-object v1

    .line 400
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 401
    .local v0, pageNumber:I
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    monitor-exit v2

    move-object v1, p0

    goto :goto_0

    .line 402
    .end local v0           #pageNumber:I
    .restart local p0
    :cond_1
    monitor-exit v2

    move-object v1, v4

    goto :goto_0

    .line 398
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTask(Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->getPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    monitor-exit v0

    .line 388
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTask(ILandroid/view/View;)V
    .locals 4
    .parameter "pageNumber"
    .parameter "parentView"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    .line 392
    .local v0, task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    if-nez v0, :cond_0

    monitor-exit v1

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;->getParentView()Landroid/view/View;

    move-result-object v2

    if-eq v2, p2, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 390
    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 394
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mTasks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 412
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    if-eqz v1, :cond_1

    .line 418
    :cond_0
    return-void

    .line 413
    :cond_1
    new-array v1, v5, [Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    .line 414
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 415
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;)V

    aput-object v2, v1, v0

    .line 416
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->start()V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    goto :goto_0

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 422
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->mImagesLoaderThreads:[Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;->stop:Z

    goto :goto_2
.end method
