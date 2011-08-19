.class public Lcom/android/vending/model/PurchasePostResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "PurchasePostResponse.java"


# instance fields
.field private mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_POST_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/vending/model/PurchaseInfo;

    iget-object v1, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/PurchaseInfo;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    return-object v0
.end method

.method public getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->fromProtoPurchaseResult(I)Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfServiceCheckboxText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfServiceHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfServiceText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfServiceUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTermsOfServiceText()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasTermsOfServiceUrl()Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PurchaseResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PurchaseInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/PurchaseInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TermsOfServicesUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TermsOfServicesText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    return-object v0
.end method
