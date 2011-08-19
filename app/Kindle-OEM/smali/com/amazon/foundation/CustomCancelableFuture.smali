.class public abstract Lcom/amazon/foundation/CustomCancelableFuture;
.super Ljava/lang/Object;
.source "CustomCancelableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/CustomCancelableFuture$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;-><init>(Lcom/amazon/foundation/CustomCancelableFuture;)V

    iput-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    .line 49
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected doWork()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->isDone()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/foundation/CustomCancelableFuture;->impl:Lcom/amazon/foundation/CustomCancelableFuture$Helper;

    invoke-virtual {v0}, Lcom/amazon/foundation/CustomCancelableFuture$Helper;->run()V

    .line 76
    return-void
.end method
