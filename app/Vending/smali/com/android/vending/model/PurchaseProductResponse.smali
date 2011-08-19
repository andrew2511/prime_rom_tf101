.class public Lcom/android/vending/model/PurchaseProductResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "PurchaseProductResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_PRODUCT_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getItemDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 31
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 24
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMerchantField()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 38
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
