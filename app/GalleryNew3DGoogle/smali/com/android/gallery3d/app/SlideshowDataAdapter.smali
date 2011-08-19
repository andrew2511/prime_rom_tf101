.class public Lcom/android/gallery3d/app/SlideshowDataAdapter;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/SlideshowPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    }
.end annotation


# instance fields
.field private final mDataHandler:Landroid/os/Handler;

.field private mDataReady:Z

.field private mDataVersion:J

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mLoadIndex:I

.field private mLoadItemCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNeedReset:Z

.field private mNextOutput:I

.field private mReloadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

.field private final mSourceListener:Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;I)V
    .locals 3
    .parameter "context"
    .parameter "source"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 53
    iput v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 54
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;Lcom/android/gallery3d/app/SlideshowDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;

    .line 76
    new-instance v0, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SlideshowDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadItemCallable:Ljava/util/concurrent/Callable;

    .line 69
    iput-object p2, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    .line 70
    iput p3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 71
    iput p3, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->getDataLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataHandler:Landroid/os/Handler;

    .line 73
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/android/gallery3d/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/SlideshowDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/SlideshowDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataVersion:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReset:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/SlideshowDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return p1
.end method

.method static synthetic access$504(Lcom/android/gallery3d/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/Callable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mLoadItemCallable:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method private declared-synchronized innerNextBitmap()Lcom/android/gallery3d/app/SlideshowPage$Slide;
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, t:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .end local v0           #t:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 164
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 167
    :goto_1
    monitor-exit p0

    return-object v1

    .line 165
    :cond_1
    :try_start_4
    iget v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNextOutput:I

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/SlideshowPage$Slide;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public nextSlide(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, listener:Lcom/android/gallery3d/util/FutureListener;,"Lcom/android/gallery3d/util/FutureListener<Lcom/android/gallery3d/app/SlideshowPage$Slide;>;"
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowDataAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SlideshowDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/android/gallery3d/util/Future;

    .line 188
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mIsActive:Z

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSource:Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/SlideshowDataAdapter;Lcom/android/gallery3d/app/SlideshowDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowDataAdapter;->mReloadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
