.class public Lcom/android/vending/model/GetMarketMetadataResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetMarketMetadataResponse.java"


# instance fields
.field private mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 12
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_MARKET_METADATA_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 14
    iput-object p1, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mAccount:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingEventsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 44
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBillingParameters()Lcom/android/vending/model/BillingParameter$BillingParameterSet;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;

    iget-object v1, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1}, Lcom/android/vending/model/BillingParameter$BillingParameterSet;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public getCommentPostEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 39
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInAppBillingEnabled()Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 49
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatestClientUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestClientVersionCode()I
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPaidAppsEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWarningMessage()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 54
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBillingParameters()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/GetMarketMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method
