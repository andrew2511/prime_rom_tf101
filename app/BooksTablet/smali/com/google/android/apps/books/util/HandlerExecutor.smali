.class public Lcom/google/android/apps/books/util/HandlerExecutor;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final sUiThreadExecutor:Lcom/google/android/apps/books/util/HandlerExecutor;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 34
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/google/android/apps/books/util/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/google/android/apps/books/util/HandlerExecutor;->sUiThreadExecutor:Lcom/google/android/apps/books/util/HandlerExecutor;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/books/util/HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method public static getUiThreadExecutor()Lcom/google/android/apps/books/util/HandlerExecutor;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/books/util/HandlerExecutor;->sUiThreadExecutor:Lcom/google/android/apps/books/util/HandlerExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/books/util/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
