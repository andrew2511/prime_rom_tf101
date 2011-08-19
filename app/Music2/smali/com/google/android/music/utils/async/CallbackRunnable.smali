.class public Lcom/google/android/music/utils/async/CallbackRunnable;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/lang/String; = "AsyncRunner"

.field private static final LOGV:Z


# instance fields
.field private final mCalledFrom:Ljava/lang/Throwable;

.field private final mCompletionThread:Landroid/os/Handler;

.field private final mRunnable:Lcom/google/android/music/utils/async/AsyncRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "AsyncRunner"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/async/CallbackRunnable;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V
    .locals 1
    .parameter "completionThread"
    .parameter "runnable"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mCompletionThread:Landroid/os/Handler;

    .line 30
    iput-object p2, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mRunnable:Lcom/google/android/music/utils/async/AsyncRunner;

    .line 31
    sget-boolean v0, Lcom/google/android/music/utils/async/CallbackRunnable;->LOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mCalledFrom:Ljava/lang/Throwable;

    .line 32
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/music/utils/async/CallbackRunnable;)Lcom/google/android/music/utils/async/AsyncRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mRunnable:Lcom/google/android/music/utils/async/AsyncRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/utils/async/CallbackRunnable;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/music/utils/async/CallbackRunnable;->appendCalledFromOntoStackTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method private appendCalledFromOntoStackTrace(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mCalledFrom:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mCalledFrom:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/music/utils/ArrayUtils;->combine([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p1, p0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mRunnable:Lcom/google/android/music/utils/async/AsyncRunner;

    invoke-interface {v1}, Lcom/google/android/music/utils/async/AsyncRunner;->backgroundTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-object v1, p0, Lcom/google/android/music/utils/async/CallbackRunnable;->mCompletionThread:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/utils/async/CallbackRunnable$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/utils/async/CallbackRunnable$1;-><init>(Lcom/google/android/music/utils/async/CallbackRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void

    .line 37
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 38
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/music/utils/async/CallbackRunnable;->appendCalledFromOntoStackTrace(Ljava/lang/Exception;)V

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
