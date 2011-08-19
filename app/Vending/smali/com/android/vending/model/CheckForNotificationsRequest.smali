.class public Lcom/android/vending/model/CheckForNotificationsRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "CheckForNotificationsRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->CHECK_FOR_NOTIFICATIONS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CheckForNotificationsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public requiresSsl()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
