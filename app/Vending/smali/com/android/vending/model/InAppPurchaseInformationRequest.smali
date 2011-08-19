.class public Lcom/android/vending/model/InAppPurchaseInformationRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "InAppPurchaseInformationRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 15
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->IN_APP_PURCHASE_INFORMATION_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/InAppPurchaseInformationRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 17
    return-void
.end method


# virtual methods
.method public addNotificationId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/model/InAppPurchaseInformationRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public setNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vending/model/InAppPurchaseInformationRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 39
    return-void
.end method

.method public setPackageParams(Ljava/lang/String;I[B)V
    .locals 3
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x1

    .line 25
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->SIGNATURE_HASH_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 26
    .local v0, sigProto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 27
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 28
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 29
    iget-object v1, p0, Lcom/android/vending/model/InAppPurchaseInformationRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 30
    return-void
.end method
