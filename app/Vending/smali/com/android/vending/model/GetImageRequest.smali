.class public Lcom/android/vending/model/GetImageRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetImageRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_IMAGE_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GIR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageIdAsInt()I
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, imageId:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/Asset$AppImageUsage;->valueOf(I)Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetId()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 2
    .parameter "imageId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 80
    return-void
.end method

.method public setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$ProductType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 108
    return-void
.end method

.method public setScreenDensity(I)V
    .locals 2
    .parameter "density"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 88
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 104
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 96
    return-void
.end method

.method public setUsage(Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 3
    .parameter "usage"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppImageUsage cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/GetImageRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 63
    return-void
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
