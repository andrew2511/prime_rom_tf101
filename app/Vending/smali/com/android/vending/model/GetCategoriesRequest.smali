.class public Lcom/android/vending/model/GetCategoriesRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "GetCategoriesRequest.java"

# interfaces
.implements Lcom/android/vending/cache/Cacheable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 19
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_CATEGORIES_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/GetCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 20
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const-string v0, "GCR_"

    .line 37
    .local v0, cacheKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/GetCategoriesRequest;->isPrefetchPromoData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public isHighPriority()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isPrefetchPromoData()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public setPrefetchPromoData(Z)V
    .locals 2
    .parameter "prefetchPromo"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 29
    return-void
.end method

.method public storeInMemory()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
