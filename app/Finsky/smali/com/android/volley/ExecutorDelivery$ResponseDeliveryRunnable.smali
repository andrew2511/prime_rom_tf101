.class Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/android/volley/Request;

.field private final mResponse:Lcom/android/volley/Response;

.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 0
    .parameter
    .parameter "request"
    .parameter "response"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    .line 73
    iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->isDrainable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getSequence()I

    move-result v1

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;

    invoke-static {v2}, Lcom/android/volley/ExecutorDelivery;->access$000(Lcom/android/volley/ExecutorDelivery;)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 85
    .local v0, shouldDrain:Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->error:Lcom/android/volley/Response$ErrorCode;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->OK:Lcom/android/volley/Response$ErrorCode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v1, v1, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    .line 92
    :goto_1
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-boolean v1, v1, Lcom/android/volley/Response;->intermediate:Z

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "intermediate-response"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 100
    :goto_2
    return-void

    .line 82
    .end local v0           #shouldDrain:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 90
    .restart local v0       #shouldDrain:Z
    :cond_1
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->error:Lcom/android/volley/Response$ErrorCode;

    iget-object v3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;

    iget-object v3, v3, Lcom/android/volley/Response;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->finishMarking(Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;

    const-string v2, "canceled-at-delivery"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->finishMarking(Ljava/lang/String;)V

    goto :goto_2
.end method
