.class public Lcom/android/vending/model/RefundRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "RefundRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 16
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->REFUND_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/RefundRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

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

.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/RefundRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 33
    return-void
.end method
