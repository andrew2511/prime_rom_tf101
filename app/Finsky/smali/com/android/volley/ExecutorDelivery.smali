.class public Lcom/android/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/android/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private mDiscardBefore:I

.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/ExecutorDelivery;->mDiscardBefore:I

    .line 27
    new-instance v0, Lcom/android/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/ExecutorDelivery$1;-><init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/ExecutorDelivery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/volley/ExecutorDelivery;->mDiscardBefore:I

    return v0
.end method


# virtual methods
.method public discardBefore(I)V
    .locals 0
    .parameter "sequence"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/volley/ExecutorDelivery;->mDiscardBefore:I

    .line 60
    return-void
.end method

.method public postError(Lcom/android/volley/Request;Lcom/android/volley/Response$ErrorCode;)V
    .locals 3
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response$ErrorCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object v0

    .line 54
    .local v0, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    .local p2, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<*>;"
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
