.class public abstract Lcom/google/android/youtube/core/async/ThreadingCallback;
.super Ljava/lang/Object;
.source "ThreadingCallback.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/ThreadingCallback$1;,
        Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# static fields
.field private static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final target:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/ThreadingCallback;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback;,"Lcom/google/android/youtube/core/async/ThreadingCallback<TR;TE;>;"
    .local p1, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/youtube/core/async/ThreadingCallback;->releaseRunnable(Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;)V

    return-void
.end method

.method private static obtainRunnable()Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v1, Lcom/google/android/youtube/core/async/ThreadingCallback;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;

    .line 56
    .local v0, runnable:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;-><init>(Lcom/google/android/youtube/core/async/ThreadingCallback$1;)V

    goto :goto_0
.end method

.method private static releaseRunnable(Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, runnable:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<**>;"
    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/async/ThreadingCallback;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted when releasing runnable to the queue"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback;,"Lcom/google/android/youtube/core/async/ThreadingCallback<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    invoke-static {}, Lcom/google/android/youtube/core/async/ThreadingCallback;->obtainRunnable()Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;

    move-result-object v0

    .line 43
    .local v0, runnable:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->prepareForOnError(Lcom/google/android/youtube/core/async/Callback;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/ThreadingCallback;->post(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback;,"Lcom/google/android/youtube/core/async/ThreadingCallback<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    invoke-static {}, Lcom/google/android/youtube/core/async/ThreadingCallback;->obtainRunnable()Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;

    move-result-object v0

    .line 37
    .local v0, runnable:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->prepareForOnResponse(Lcom/google/android/youtube/core/async/Callback;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/ThreadingCallback;->post(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method protected abstract post(Ljava/lang/Runnable;)V
.end method
