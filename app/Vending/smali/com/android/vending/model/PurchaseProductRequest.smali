.class public Lcom/android/vending/model/PurchaseProductRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "PurchaseProductRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_PRODUCT_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchaseProductRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setPackageParams(Ljava/lang/String;I[B)V
    .locals 3
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x3

    .line 33
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->SIGNATURE_HASH_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 34
    .local v0, sigProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 36
    invoke-virtual {v0, v2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 37
    iget-object v1, p0, Lcom/android/vending/model/PurchaseProductRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 38
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/vending/model/PurchaseProductRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$ProductType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 26
    return-void
.end method
