.class Lcom/google/common/util/concurrent/AbstractIdleService$1;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractIdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    sget-object v1, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor(Lcom/google/common/base/Service$State;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method protected final doStop()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    sget-object v1, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor(Lcom/google/common/base/Service$State;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
