.class public Lcom/android/vending/model/GetMarketMetadataRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetMarketMetadataRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_MARKET_METADATA_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public addMarketSignatureHash(Ljava/lang/String;)V
    .locals 2
    .parameter "hash"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public setContentRating(I)V
    .locals 2
    .parameter "contentRating"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 57
    return-void
.end method

.method public setDeviceConfiguration(Lcom/android/vending/model/DeviceConfiguration;)V
    .locals 3
    .parameter "configuration"

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/android/vending/model/DeviceConfiguration;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 21
    .local v0, configProto:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 23
    return-void
.end method

.method public setDeviceManufacturerName(Ljava/lang/String;)V
    .locals 2
    .parameter "manufacturer"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public setDeviceModelName(Ljava/lang/String;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public setDeviceRoaming(Z)V
    .locals 2
    .parameter "roaming"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 49
    return-void
.end method
