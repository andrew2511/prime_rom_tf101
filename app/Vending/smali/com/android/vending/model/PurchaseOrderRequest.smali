.class public Lcom/android/vending/model/PurchaseOrderRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "PurchaseOrderRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_ORDER_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Lcom/android/vending/model/BillingParameter;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"
    .parameter "transactionId"
    .parameter "billingInstrumentId"
    .parameter "billingInstrumentType"
    .parameter "billingParameter"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/vending/model/PurchaseOrderRequest;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchaseOrderRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchaseOrderRequest;->setAssetId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchaseOrderRequest;->setTransactionId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p4, p5, p6}, Lcom/android/vending/model/PurchaseOrderRequest;->setBillingInstrumentId(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Lcom/android/vending/model/BillingParameter;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBillingInstrumentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBillingInstrumentType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 67
    .local v0, type:I
    invoke-static {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->fromProtoType(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v1

    return-object v1
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public setBillingInstrumentId(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Lcom/android/vending/model/BillingParameter;)V
    .locals 3
    .parameter "billingInstrumentId"
    .parameter "billingInstrumentType"
    .parameter "billingParameter"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {p2}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 89
    if-eqz p3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {p3}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setCredentials(Lcom/android/vending/model/CarrierBillingCredentials;)V
    .locals 3
    .parameter "credentials"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingCredentials;->getProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 102
    return-void
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 2
    .parameter "developerPayload"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 123
    return-void
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "gaiaAuthToken"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public setPackageParams(Ljava/lang/String;I[B)V
    .locals 3
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "bytes"

    .prologue
    .line 114
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->SIGNATURE_HASH_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 115
    .local v0, sigProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 116
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 117
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 118
    iget-object v1, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 119
    return-void
.end method

.method public setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$ProductType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 111
    return-void
.end method

.method public setRiskHeaderInfo(Lcom/android/vending/model/RiskHeaderInfo;)V
    .locals 3
    .parameter "riskHeaderInfo"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/android/vending/model/RiskHeaderInfo;->getProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 107
    return-void
.end method

.method public setTosAccepted(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 97
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 2
    .parameter "transactionId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 80
    return-void
.end method
