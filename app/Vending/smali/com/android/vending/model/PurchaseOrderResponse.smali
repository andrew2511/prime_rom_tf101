.class public Lcom/android/vending/model/PurchaseOrderResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "PurchaseOrderResponse.java"


# instance fields
.field private mPurchasedAsset:Lcom/android/vending/model/Asset;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_ORDER_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->fromProtoPurchaseResult(I)Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasedAsset()Lcom/android/vending/model/Asset;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 44
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mPurchasedAsset:Lcom/android/vending/model/Asset;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/vending/model/Asset;

    iget-object v1, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mPurchasedAsset:Lcom/android/vending/model/Asset;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseOrderResponse;->mPurchasedAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PurchaseResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseOrderResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
