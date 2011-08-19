.class public Lcom/android/vending/model/BillingEventRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "BillingEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/BillingEventRequest$BillingEventType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 37
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->BILLING_EVENT_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 38
    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setBillingParametersId(Ljava/lang/String;)V
    .locals 2
    .parameter "billingParametersId"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public setEventType(Lcom/android/vending/model/BillingEventRequest$BillingEventType;)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->getRpcId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 55
    return-void
.end method

.method public setExceptionOccurred(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 87
    return-void
.end method

.method public setResultSuccess(Z)V
    .locals 2
    .parameter "resultSuccess"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/model/BillingEventRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 71
    return-void
.end method
