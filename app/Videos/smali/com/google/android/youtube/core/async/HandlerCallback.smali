.class public final Lcom/google/android/youtube/core/async/HandlerCallback;
.super Lcom/google/android/youtube/core/async/ThreadingCallback;
.source "HandlerCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/ThreadingCallback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/youtube/core/async/HandlerCallback;,"Lcom/google/android/youtube/core/async/HandlerCallback<TR;TE;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    invoke-direct {p0, p2}, Lcom/google/android/youtube/core/async/ThreadingCallback;-><init>(Lcom/google/android/youtube/core/async/Callback;)V

    .line 24
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HandlerCallback;->handler:Landroid/os/Handler;

    .line 25
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HandlerCallback;->thread:Ljava/lang/Thread;

    .line 26
    return-void
.end method


# virtual methods
.method protected post(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/youtube/core/async/HandlerCallback;,"Lcom/google/android/youtube/core/async/HandlerCallback<TR;TE;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/HandlerCallback;->thread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/async/HandlerCallback;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
