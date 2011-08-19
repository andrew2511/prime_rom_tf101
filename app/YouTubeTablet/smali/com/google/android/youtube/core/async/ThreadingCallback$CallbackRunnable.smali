.class Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;
.super Ljava/lang/Object;
.source "ThreadingCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/ThreadingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private request:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private success:Z

.field private target:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/ThreadingCallback$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareForOnError(Lcom/google/android/youtube/core/async/Callback;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    .local p1, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    .local p2, request:Ljava/lang/Object;,"TR;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 85
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->request:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->exception:Ljava/lang/Exception;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->response:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->success:Z

    .line 89
    return-void
.end method

.method public prepareForOnResponse(Lcom/google/android/youtube/core/async/Callback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    .local p1, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    .local p2, request:Ljava/lang/Object;,"TR;"
    .local p3, response:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 77
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->request:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->response:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->exception:Ljava/lang/Exception;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->success:Z

    .line 81
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;,"Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable<TR;TE;>;"
    const/4 v3, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->success:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->request:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->response:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :goto_0
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 98
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->request:Ljava/lang/Object;

    .line 99
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->response:Ljava/lang/Object;

    .line 100
    iput-object v3, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->exception:Ljava/lang/Exception;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->success:Z

    .line 102
    invoke-static {p0}, Lcom/google/android/youtube/core/async/ThreadingCallback;->access$100(Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;)V

    .line 103
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->request:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ThreadingCallback$CallbackRunnable;->exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
