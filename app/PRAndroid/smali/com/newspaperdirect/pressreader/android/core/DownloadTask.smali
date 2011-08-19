.class public Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;,
        Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field private static final CONNECTION_CONNECT_TIMEOUT:I = 0x1388

.field private static final CONNECTION_READ_TIMEOUT:I = 0x3a98

.field private static final CONNECTION_TIMEOUT_THRESHOLD:I = 0x10

.field private static final MAX_CONNECTION_ATTEMPTS:I = 0xa

.field private static final NO_SPACE_MSG:Ljava/lang/String; = "No space left on device"

.field private static final RETRY_DOWNLOAD_DELAY:I = 0xea60

.field private static final STATE_CANCELED:I = 0x2

.field private static final STATE_DEFAULT:I = 0x0

.field private static final STATE_FAILED:I = 0x4

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PENDING:I = 0x5

.field private static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DownloadTask"

.field private static connTimeoutCtr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

.field private static volatile mLastToastSent:I

.field private static final mTimer:Ljava/util/Timer;


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mIssueId:Ljava/lang/String;

.field private mOnDownloadCompleteListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgressUpdateListener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPause:Z

.field private final mPriority:I

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;

.field private mUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->connTimeoutCtr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 330
    sput v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    .line 27
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "priority"
    .parameter "urls"
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnProgressUpdateListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnDownloadCompleteListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPriority:I

    .line 76
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mUrls:[Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mFile:Ljava/io/File;

    .line 78
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    .line 79
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private notifyBadConnection()V
    .locals 4

    .prologue
    const v3, 0x7f090016

    .line 311
    sget v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    if-ne v2, v3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 312
    :cond_0
    sput v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    .line 313
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 314
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 315
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyNoSpace()V
    .locals 5

    .prologue
    const v4, 0x7f090015

    .line 356
    sget v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    if-ne v3, v4, :cond_0

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    sput v4, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    .line 358
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 359
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyOnDownloadCompleteListener(Z)V
    .locals 3
    .parameter "downloadResult"

    .prologue
    .line 300
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnDownloadCompleteListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;

    .line 301
    .local v1, listener:Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;
    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;->onDownloadComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetToast()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    sput v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    .line 334
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 147
    .local v0, state:I
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    monitor-exit v2

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 145
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimerTask;

    .line 151
    .local v1, task:Ljava/util/TimerTask;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnProgressUpdateListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnDownloadCompleteListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 154
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-virtual {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 145
    .end local v0           #state:I
    .end local v1           #task:Ljava/util/TimerTask;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public compareTo(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 103
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPriority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->compareTo(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 84
    instance-of v2, p1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    if-nez v2, :cond_0

    move v2, v4

    .line 88
    :goto_0
    return v2

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-object v1, v0

    .line 87
    .local v1, t:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v2, v4

    goto :goto_0

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    .line 140
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x11

    .line 94
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v1, v2

    .line 96
    return v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mIssueId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyNoSdCard()V
    .locals 5

    .prologue
    const v4, 0x7f090029

    .line 337
    sget v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    if-ne v3, v4, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    sput v4, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mLastToastSent:I

    .line 339
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 340
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 341
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;

    invoke-direct {v3, p0, v0, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public retry()V
    .locals 6

    .prologue
    .line 158
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 160
    .local v1, state:I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    monitor-exit v3

    .line 172
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 158
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;)V

    .line 169
    .local v2, task:Ljava/util/TimerTask;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mTimerTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    .line 170
    .local v0, prevTask:Ljava/util/TimerTask;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 171
    :cond_1
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mTimer:Ljava/util/Timer;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 158
    .end local v0           #prevTask:Ljava/util/TimerTask;
    .end local v1           #state:I
    .end local v2           #task:Ljava/util/TimerTask;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public run()V
    .locals 34

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    const/16 v32, 0x1

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v30

    if-nez v30, :cond_0

    .line 297
    :goto_0
    return-void

    .line 176
    :cond_0
    const/16 v30, 0xa

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->setThreadPriority(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 178
    .local v22, parentFolder:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v30

    move-wide/from16 v9, v30

    .line 181
    .local v9, downloaded:J
    :goto_1
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mUrls:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 295
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const/16 v32, 0x4

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 296
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyOnDownloadCompleteListener(Z)V

    goto :goto_0

    .line 179
    .end local v9           #downloaded:J
    .end local v16           #i:I
    :cond_2
    const-wide/16 v30, 0x0

    move-wide/from16 v9, v30

    goto :goto_1

    .line 182
    .restart local v9       #downloaded:J
    .restart local v16       #i:I
    :cond_3
    const/4 v14, 0x0

    .line 183
    .local v14, fstream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 184
    .local v7, connection:Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    .line 186
    .local v17, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v29, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mUrls:[Ljava/lang/String;

    move-object/from16 v30, v0

    aget-object v30, v30, v16

    invoke-direct/range {v29 .. v30}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 187
    .local v29, url:Ljava/net/URL;
    const/16 v19, 0x0

    .local v19, j:I
    move-object v15, v14

    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .local v15, fstream:Ljava/io/FileOutputStream;
    :goto_4
    const/16 v30, 0xa

    move/from16 v0, v19

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    .line 287
    if-eqz v15, :cond_4

    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19

    .line 288
    :cond_4
    :goto_5
    const/4 v14, 0x0

    .line 289
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    if-eqz v17, :cond_5

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a

    .line 290
    :cond_5
    :goto_6
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    .end local v19           #j:I
    .end local v29           #url:Ljava/net/URL;
    :cond_6
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 189
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    .restart local v19       #j:I
    .restart local v29       #url:Ljava/net/URL;
    :cond_7
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 190
    const/16 v30, 0x1

    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 191
    const-string v30, "GET"

    move-object v0, v7

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 192
    const/16 v30, 0x1388

    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    const/16 v30, 0x3a98

    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 194
    const-wide/16 v30, 0x0

    cmp-long v30, v9, v30

    if-lez v30, :cond_8

    const-string v30, "Range"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "bytes="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 196
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    .line 197
    .local v24, rcode:I
    const/16 v30, 0xc8

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    const/16 v30, 0xce

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    move-object v14, v15

    .line 187
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    :cond_9
    :goto_8
    add-int/lit8 v19, v19, 0x1

    move-object v15, v14

    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 198
    :cond_a
    const-wide/16 v30, 0x0

    cmp-long v30, v9, v30

    if-lez v30, :cond_b

    const/16 v30, 0xce

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 199
    const-string v30, "DownloadTask"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Skipped download url failing to return partial content: "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .line 200
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 202
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :cond_b
    const/16 v30, 0xc8

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v25, v30

    .line 203
    .local v25, size:J
    :goto_9
    cmp-long v30, v25, v9

    if-nez v30, :cond_10

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 205
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyOnDownloadCompleteListener(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1b

    .line 287
    if-eqz v15, :cond_c

    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 288
    :cond_c
    :goto_a
    const/4 v14, 0x0

    .line 289
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    if-eqz v17, :cond_d

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 290
    :cond_d
    :goto_b
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_e
    const/4 v7, 0x0

    .line 206
    goto/16 :goto_0

    .line 202
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .end local v25           #size:J
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :cond_f
    :try_start_6
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v9

    move-wide/from16 v25, v30

    goto :goto_9

    .line 208
    .restart local v25       #size:J
    :cond_10
    cmp-long v30, v25, v9

    if-gez v30, :cond_11

    const-wide/16 v9, 0x0

    .line 210
    :cond_11
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mFile:Ljava/io/File;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x0

    cmp-long v31, v9, v31

    if-eqz v31, :cond_16

    const/16 v31, 0x1

    :goto_c
    move-object v0, v14

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1b

    .line 211
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 212
    const v30, 0x8000

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object v4, v0

    .line 214
    .local v4, buffer:[B
    move-wide v0, v9

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    mul-double v30, v30, v32

    move-wide/from16 v0, v25

    long-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v23, v0

    .line 215
    .local v23, progress:I
    sget-object v30, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-virtual/range {v30 .. v30}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pausing()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    .line 216
    :goto_d
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, count:I
    if-ltz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    .line 234
    :cond_12
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    if-gez v8, :cond_21

    .line 236
    cmp-long v30, v25, v9

    if-nez v30, :cond_9

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 238
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyOnDownloadCompleteListener(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 287
    if-eqz v14, :cond_13

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 288
    :cond_13
    :goto_e
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_14

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 290
    :cond_14
    :goto_f
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_15
    const/4 v7, 0x0

    .line 239
    goto/16 :goto_0

    .line 210
    .end local v4           #buffer:[B
    .end local v8           #count:I
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .end local v23           #progress:I
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 217
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v4       #buffer:[B
    .restart local v8       #count:I
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    .restart local v23       #progress:I
    :cond_17
    const/16 v30, 0x0

    :try_start_a
    move-object v0, v14

    move-object v1, v4

    move/from16 v2, v30

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 218
    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v9, v9, v30

    .line 219
    const-wide/16 v30, 0x64

    mul-long v30, v30, v9

    div-long v30, v30, v25

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v21, v0

    .line 220
    .local v21, newProgress:I
    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_18

    .line 221
    move/from16 v23, v21

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnProgressUpdateListener:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 223
    .local v20, listener:Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    if-eqz v20, :cond_18

    .line 225
    :try_start_b
    invoke-interface/range {v20 .. v21}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;->onProgressUpdate(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 232
    .end local v20           #listener:Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    :cond_18
    :goto_10
    :try_start_c
    sget-object v30, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-virtual/range {v30 .. v30}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pausing()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_d

    .line 250
    .end local v4           #buffer:[B
    .end local v8           #count:I
    .end local v19           #j:I
    .end local v21           #newProgress:I
    .end local v23           #progress:I
    .end local v24           #rcode:I
    .end local v25           #size:J
    .end local v29           #url:Ljava/net/URL;
    :catch_0
    move-exception v30

    move-object/from16 v28, v30

    .line 251
    .local v28, ste:Ljava/net/SocketTimeoutException;
    :goto_11
    :try_start_d
    const-string v30, "DownloadTask"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ": "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v30, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->connTimeoutCtr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 253
    sget-object v30, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->connTimeoutCtr:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v31, 0x10

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyBadConnection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 287
    :cond_19
    if-eqz v14, :cond_1a

    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 288
    :cond_1a
    :goto_12
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_1b

    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 290
    :cond_1b
    :goto_13
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_1c
    const/4 v7, 0x0

    .line 255
    goto/16 :goto_7

    .line 227
    .end local v28           #ste:Ljava/net/SocketTimeoutException;
    .restart local v4       #buffer:[B
    .restart local v8       #count:I
    .restart local v19       #j:I
    .restart local v20       #listener:Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    .restart local v21       #newProgress:I
    .restart local v23       #progress:I
    .restart local v24       #rcode:I
    .restart local v25       #size:J
    .restart local v29       #url:Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 228
    .local v11, e:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_10

    .line 257
    .end local v4           #buffer:[B
    .end local v8           #count:I
    .end local v11           #e:Ljava/lang/Exception;
    .end local v19           #j:I
    .end local v20           #listener:Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;
    .end local v21           #newProgress:I
    .end local v23           #progress:I
    .end local v24           #rcode:I
    .end local v25           #size:J
    .end local v29           #url:Ljava/net/URL;
    :catch_2
    move-exception v30

    move-object/from16 v13, v30

    .line 258
    .local v13, fnfe:Ljava/io/FileNotFoundException;
    :goto_14
    :try_start_11
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageAvailable()Z

    move-result v30

    if-nez v30, :cond_25

    .line 259
    sget-object v30, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mDownloadManager:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-virtual/range {v30 .. v30}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->pausing()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mPause:Z

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyNoSdCard()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 287
    :cond_1d
    if-eqz v14, :cond_1e

    :try_start_12
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 288
    :cond_1e
    :goto_15
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_1f

    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 290
    :cond_1f
    :goto_16
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_20
    const/4 v7, 0x0

    .line 270
    goto/16 :goto_7

    .line 244
    .end local v13           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #buffer:[B
    .restart local v8       #count:I
    .restart local v19       #j:I
    .restart local v23       #progress:I
    .restart local v24       #rcode:I
    .restart local v25       #size:J
    .restart local v29       #url:Ljava/net/URL;
    :cond_21
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    const/16 v32, 0x4

    invoke-virtual/range {v30 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 245
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyOnDownloadCompleteListener(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 287
    if-eqz v14, :cond_22

    :try_start_15
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 288
    :cond_22
    :goto_17
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_23

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 290
    :cond_23
    :goto_18
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_24

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_24
    const/4 v7, 0x0

    .line 246
    goto/16 :goto_0

    .line 262
    .end local v4           #buffer:[B
    .end local v8           #count:I
    .end local v19           #j:I
    .end local v23           #progress:I
    .end local v24           #rcode:I
    .end local v25           #size:J
    .end local v29           #url:Ljava/net/URL;
    .restart local v13       #fnfe:Ljava/io/FileNotFoundException;
    :cond_25
    :try_start_17
    new-instance v27, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 263
    .local v27, stat:Landroid/os/StatFs;
    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getBlockSize()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    mul-long v5, v30, v32

    .line 264
    .local v5, bytesAvailable:J
    const-wide/32 v30, 0x8000

    cmp-long v30, v5, v30

    if-gez v30, :cond_1d

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyNoSpace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 287
    if-eqz v14, :cond_26

    :try_start_18
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 288
    :cond_26
    :goto_19
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_27

    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 290
    :cond_27
    :goto_1a
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_28

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_28
    const/4 v7, 0x0

    .line 267
    goto/16 :goto_3

    .line 272
    .end local v5           #bytesAvailable:J
    .end local v13           #fnfe:Ljava/io/FileNotFoundException;
    .end local v27           #stat:Landroid/os/StatFs;
    :catch_3
    move-exception v30

    move-object/from16 v18, v30

    .line 273
    .local v18, ioe:Ljava/io/IOException;
    :goto_1b
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, errMsg:Ljava/lang/String;
    const-string v30, "No space left on device"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->notifyNoSpace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 287
    if-eqz v14, :cond_29

    :try_start_1b
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 288
    :cond_29
    :goto_1c
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_2a

    :try_start_1c
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 290
    :cond_2a
    :goto_1d
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_2b
    const/4 v7, 0x0

    .line 277
    goto/16 :goto_3

    .line 279
    :cond_2c
    :try_start_1d
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 287
    if-eqz v14, :cond_2d

    :try_start_1e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 288
    :cond_2d
    :goto_1e
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_2e

    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 290
    :cond_2e
    :goto_1f
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_2f
    const/4 v7, 0x0

    .line 280
    goto/16 :goto_7

    .line 283
    .end local v12           #errMsg:Ljava/lang/String;
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v30

    move-object/from16 v11, v30

    .line 284
    .restart local v11       #e:Ljava/lang/Exception;
    :goto_20
    :try_start_20
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 287
    if-eqz v14, :cond_30

    :try_start_21
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_15

    .line 288
    :cond_30
    :goto_21
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_31

    :try_start_22
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_16

    .line 290
    :cond_31
    :goto_22
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_32
    const/4 v7, 0x0

    .line 285
    goto/16 :goto_7

    .line 286
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v30

    .line 287
    :goto_23
    if-eqz v14, :cond_33

    :try_start_23
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_17

    .line 288
    :cond_33
    :goto_24
    const/4 v14, 0x0

    .line 289
    if-eqz v17, :cond_34

    :try_start_24
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_18

    .line 290
    :cond_34
    :goto_25
    const/16 v17, 0x0

    .line 291
    if-eqz v7, :cond_35

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    :cond_35
    const/4 v7, 0x0

    .line 293
    throw v30

    .line 287
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    .restart local v19       #j:I
    .restart local v24       #rcode:I
    .restart local v25       #size:J
    .restart local v29       #url:Ljava/net/URL;
    :catch_5
    move-exception v30

    goto/16 :goto_a

    .line 289
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v30

    goto/16 :goto_b

    .line 287
    .restart local v4       #buffer:[B
    .restart local v8       #count:I
    .restart local v23       #progress:I
    :catch_7
    move-exception v30

    goto/16 :goto_e

    .line 289
    :catch_8
    move-exception v30

    goto/16 :goto_f

    .line 287
    :catch_9
    move-exception v30

    goto/16 :goto_17

    .line 289
    :catch_a
    move-exception v30

    goto/16 :goto_18

    .line 287
    .end local v4           #buffer:[B
    .end local v8           #count:I
    .end local v19           #j:I
    .end local v23           #progress:I
    .end local v24           #rcode:I
    .end local v25           #size:J
    .end local v29           #url:Ljava/net/URL;
    .restart local v28       #ste:Ljava/net/SocketTimeoutException;
    :catch_b
    move-exception v30

    goto/16 :goto_12

    .line 289
    :catch_c
    move-exception v30

    goto/16 :goto_13

    .line 287
    .end local v28           #ste:Ljava/net/SocketTimeoutException;
    .restart local v5       #bytesAvailable:J
    .restart local v13       #fnfe:Ljava/io/FileNotFoundException;
    .restart local v27       #stat:Landroid/os/StatFs;
    :catch_d
    move-exception v30

    goto/16 :goto_19

    .line 289
    :catch_e
    move-exception v30

    goto/16 :goto_1a

    .line 287
    .end local v5           #bytesAvailable:J
    .end local v27           #stat:Landroid/os/StatFs;
    :catch_f
    move-exception v30

    goto/16 :goto_15

    .line 289
    :catch_10
    move-exception v30

    goto/16 :goto_16

    .line 287
    .end local v13           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v12       #errMsg:Ljava/lang/String;
    .restart local v18       #ioe:Ljava/io/IOException;
    :catch_11
    move-exception v30

    goto :goto_1c

    .line 289
    :catch_12
    move-exception v30

    goto :goto_1d

    .line 287
    :catch_13
    move-exception v30

    goto :goto_1e

    .line 289
    :catch_14
    move-exception v30

    goto :goto_1f

    .line 287
    .end local v12           #errMsg:Ljava/lang/String;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v11       #e:Ljava/lang/Exception;
    :catch_15
    move-exception v30

    goto :goto_21

    .line 289
    :catch_16
    move-exception v30

    goto :goto_22

    .line 287
    .end local v11           #e:Ljava/lang/Exception;
    :catch_17
    move-exception v31

    goto :goto_24

    .line 289
    :catch_18
    move-exception v31

    goto :goto_25

    .line 287
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    .restart local v19       #j:I
    .restart local v29       #url:Ljava/net/URL;
    :catch_19
    move-exception v30

    goto/16 :goto_5

    .line 289
    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    :catch_1a
    move-exception v30

    goto/16 :goto_6

    .line 286
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v30

    move-object v14, v15

    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto :goto_23

    .line 283
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v30

    move-object/from16 v11, v30

    move-object v14, v15

    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 272
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v30

    move-object/from16 v18, v30

    move-object v14, v15

    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 257
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v30

    move-object/from16 v13, v30

    move-object v14, v15

    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto/16 :goto_14

    .line 250
    .end local v14           #fstream:Ljava/io/FileOutputStream;
    .restart local v15       #fstream:Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v30

    move-object/from16 v28, v30

    move-object v14, v15

    .end local v15           #fstream:Ljava/io/FileOutputStream;
    .restart local v14       #fstream:Ljava/io/FileOutputStream;
    goto/16 :goto_11
.end method

.method public setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    .locals 1
    .parameter "listener"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnDownloadCompleteListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    return-object p0
.end method

.method public setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    .locals 1
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mOnProgressUpdateListener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    return-object p0
.end method

.method public setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    .locals 0
    .parameter "urls"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->mUrls:[Ljava/lang/String;

    .line 118
    return-object p0
.end method
