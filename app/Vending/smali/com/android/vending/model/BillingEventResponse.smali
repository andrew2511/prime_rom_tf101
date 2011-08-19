.class public Lcom/android/vending/model/BillingEventResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "BillingEventResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->BILLING_EVENT_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 13
    return-void
.end method
