.class public Lcom/android/vending/model/InAppRestoreTransactionsResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "InAppRestoreTransactionsResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->IN_APP_RESTORE_TRANSACTIONS_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getPurchaseResult()Lcom/android/vending/model/PurchaseResult;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 37
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 42
    .local v0, purchaseResult:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/android/vending/model/PurchaseResult;

    invoke-direct {v1, v0}, Lcom/android/vending/model/PurchaseResult;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 33
    .local v0, signedData:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 24
    :goto_0
    return-object v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 24
    .local v0, signedData:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
