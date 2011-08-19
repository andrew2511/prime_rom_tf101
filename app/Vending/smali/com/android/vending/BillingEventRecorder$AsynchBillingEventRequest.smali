.class Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "BillingEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BillingEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsynchBillingEventRequest"
.end annotation


# instance fields
.field private final mBillingEventRequest:Lcom/android/vending/model/BillingEventRequest;


# direct methods
.method public constructor <init>(Lcom/android/vending/model/BillingEventRequest;)V
    .locals 0
    .parameter "billingEventRequest"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;->mBillingEventRequest:Lcom/android/vending/model/BillingEventRequest;

    .line 52
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/vending/api/BillingEventService;

    invoke-direct {v0, p1}, Lcom/android/vending/api/BillingEventService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 56
    .local v0, service:Lcom/android/vending/api/BillingEventService;
    iget-object v1, p0, Lcom/android/vending/BillingEventRecorder$AsynchBillingEventRequest;->mBillingEventRequest:Lcom/android/vending/model/BillingEventRequest;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingEventService;->queueBillingEvent(Lcom/android/vending/model/BillingEventRequest;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 58
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to record billing event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 64
    return-void
.end method
