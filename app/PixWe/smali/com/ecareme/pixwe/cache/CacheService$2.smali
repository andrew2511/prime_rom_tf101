.class Lcom/ecareme/pixwe/cache/CacheService$2;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/cache/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$action:Ljava/lang/Runnable;

.field private final synthetic val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/ecareme/pixwe/cache/CacheService$2;->val$action:Ljava/lang/Runnable;

    .line 777
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/cache/CacheService$2;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    iget-object v0, p0, Lcom/ecareme/pixwe/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 784
    return-void

    .line 781
    :catchall_0
    move-exception v0

    .line 782
    iget-object v1, p0, Lcom/ecareme/pixwe/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 783
    throw v0
.end method
