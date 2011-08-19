.class public Lcom/android/vending/model/AckNotificationsResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "AckNotificationsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->ACK_NOTIFICATIONS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 15
    return-void
.end method
