.class public Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerRunsPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4
    .parameter "r"
    .parameter "e"

    .prologue
    .line 1948
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1949
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1951
    :cond_9
    return-void
.end method
