.class public Lcom/android/vending/model/CheckForNotificationsResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "CheckForNotificationsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->CHECK_FOR_NOTIFICATIONS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 15
    return-void
.end method
