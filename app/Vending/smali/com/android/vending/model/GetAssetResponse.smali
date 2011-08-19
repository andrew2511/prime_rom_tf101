.class public Lcom/android/vending/model/GetAssetResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetAssetResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_ASSET_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 17
    return-void
.end method
