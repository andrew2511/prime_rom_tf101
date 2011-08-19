.class public Lcom/android/vending/model/GetAssetRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetAssetRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_ASSET_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetAssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method


# virtual methods
.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/GetAssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public setDirectDownloadKey(Ljava/lang/String;)V
    .locals 2
    .parameter "ddlKey"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/vending/model/GetAssetRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 34
    return-void
.end method
