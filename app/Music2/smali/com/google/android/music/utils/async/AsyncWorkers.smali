.class public Lcom/google/android/music/utils/async/AsyncWorkers;
.super Ljava/lang/Object;
.source "AsyncWorkers.java"


# static fields
.field public static final sBackendServiceWorker:Lcom/google/android/music/Worker;

.field public static final sUIBackgroundWorker:Lcom/google/android/music/Worker;

.field private static final sUniqueMessageTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/music/Worker;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "UIAsyncWorker"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    .line 26
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "BGAsyncWorker"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static declared-synchronized getUniqueMessageType(Lcom/google/android/music/Worker;)I
    .locals 3
    .parameter "worker"

    .prologue
    .line 51
    const-class v1, Lcom/google/android/music/utils/async/AsyncWorkers;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .local v0, i:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 54
    .restart local v0       #i:Ljava/util/concurrent/atomic/AtomicInteger;
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v1

    return v2

    .line 51
    .end local v0           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "worker"
    .parameter "r"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/music/utils/async/TraceableRunnable;

    invoke-direct {v0, p1}, Lcom/google/android/music/utils/async/TraceableRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V
    .locals 2
    .parameter "worker"
    .parameter "runner"

    .prologue
    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 43
    .local v0, callbackHandler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v1, v0, p1}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
