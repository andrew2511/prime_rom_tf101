.class public Lcom/android/vending/model/InAppPurchaseInformationResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "InAppPurchaseInformationResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->IN_APP_PURCHASE_INFORMATION_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getContentText(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x3

    .line 55
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 57
    .local v0, statusBar:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x2

    .line 46
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 48
    .local v0, statusBar:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNumStatusBarNotifications()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    return v0
.end method

.method public getPurchaseResult()Lcom/android/vending/model/PurchaseResult;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 64
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 69
    .local v0, purchaseResult:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/android/vending/model/PurchaseResult;

    invoke-direct {v1, v0}, Lcom/android/vending/model/PurchaseResult;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 28
    .local v0, signedData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 22
    .local v0, signedData:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTickerText(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 37
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 39
    .local v0, statusBar:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
