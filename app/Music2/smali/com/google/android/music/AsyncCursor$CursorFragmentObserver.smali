.class final Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;
.super Landroid/database/ContentObserver;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CursorFragmentObserver"
.end annotation


# instance fields
.field mLogTag:Ljava/lang/String;

.field mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/AsyncCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/music/AsyncCursor;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 83
    iget-object v0, p1, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mOwner:Ljava/lang/ref/WeakReference;

    .line 85
    iget-object v0, p1, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mLogTag:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncCursor;Lcom/google/android/music/AsyncCursor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;-><init>(Lcom/google/android/music/AsyncCursor;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 91
    .local v0, owner:Lcom/google/android/music/AsyncCursor;
    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mLogTag:Ljava/lang/String;

    const-string v2, "Cursor disappeared"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    monitor-enter v0

    .line 96
    :try_start_0
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "onChange received on cursor"

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 97
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 98
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 99
    iget-object v1, v0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 100
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
