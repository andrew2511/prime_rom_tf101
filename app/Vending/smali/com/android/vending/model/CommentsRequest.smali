.class public Lcom/android/vending/model/CommentsRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "CommentsRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->COMMENTS_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 18
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CR"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, cacheKey:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->hasStartIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->getStartIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->hasNumEntries()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->getNumEntries()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/android/vending/model/CommentsRequest;->hasShouldReturnSelfComment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v1, "self"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_3
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumEntries()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartIndex()J
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAssetId()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasNumEntries()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasShouldReturnSelfComment()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasStartIndex()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asset ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public setAssetReferrer(Ljava/lang/String;)V
    .locals 2
    .parameter "assetReferrer"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public setNumEntries(J)V
    .locals 2
    .parameter "numEntries"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 43
    return-void
.end method

.method public setShouldReturnSelfComment(Z)V
    .locals 2
    .parameter "shouldReturnSelf"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 82
    return-void
.end method

.method public setStartIndex(J)V
    .locals 2
    .parameter "startIndex"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/model/CommentsRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 31
    return-void
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
