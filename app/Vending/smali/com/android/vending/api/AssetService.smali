.class public Lcom/android/vending/api/AssetService;
.super Lcom/android/vending/api/BaseService;
.source "AssetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/AssetService$1;,
        Lcom/android/vending/api/AssetService$SingleAssetKey;,
        Lcom/android/vending/api/AssetService$CachedAssetList;,
        Lcom/android/vending/api/AssetService$AssetRequestKey;,
        Lcom/android/vending/api/AssetService$GetAssetsReceiver;
    }
.end annotation


# instance fields
.field private mAllowMultipleResponses:Z

.field protected mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

.field private mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private mCachedCorrectedQuery:Ljava/lang/String;

.field private mCachedHeader:Ljava/lang/String;

.field private mCachedListType:Ljava/lang/Integer;

.field private mCachedTotalCorrectedResults:Ljava/lang/Long;

.field private mCachedTotalResults:Ljava/lang/Long;

.field private mHandledAssetRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/AssetRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

.field private mPossiblyExpiredAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mPossiblyExpiredCorrectedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V
    .locals 1
    .parameter "requestMgr"
    .parameter "cacheManager"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    .line 117
    iput-object p2, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 118
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    .line 119
    return-void
.end method

.method public static cacheAssets(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Ljava/util/List;)V
    .locals 4
    .parameter "cacheManager"
    .parameter "assetRequest"
    .parameter "responseProperties"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/cache/CacheManager;",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/model/ResponseProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p3, assetsToCache:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 245
    .local v1, assetListToCache:Lcom/android/vending/api/AssetService$CachedAssetList;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    .local v0, assetIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/vending/model/Asset;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v3, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/android/vending/api/AssetService;->cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V

    .line 251
    return-void
.end method

.method private static cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V
    .locals 9
    .parameter "cacheManager"
    .parameter "assetRequest"
    .parameter "responseProperties"
    .parameter "assetListToCache"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/cache/CacheManager;",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/model/ResponseProperties;",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p4, assetsToCache:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v1, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v1, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    .line 550
    .local v1, requestKey:Lcom/android/vending/api/AssetService$AssetRequestKey;
    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getEtag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAge()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAgeConsumable()I

    move-result v6

    move-object v0, p0

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    .line 556
    invoke-virtual {v1}, Lcom/android/vending/api/AssetService$AssetRequestKey;->isHighPriority()Z

    move-result p3

    .line 559
    .local p3, highPriority:Z
    if-eqz p4, :cond_0

    .line 560
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    .end local v1           #requestKey:Lcom/android/vending/api/AssetService$AssetRequestKey;
    .local p1, i:I
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1           #i:I
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 562
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/model/Asset;

    .line 563
    .local p1, asset:Lcom/android/vending/model/Asset;
    new-instance v3, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, p3, v2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 565
    .local v3, assetKey:Lcom/android/vending/api/AssetService$SingleAssetKey;
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAge()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/vending/model/ResponseProperties;->getMaxAgeConsumable()I

    move-result v8

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    move p1, v0

    .line 567
    .end local v0           #i:I
    .local p1, i:I
    goto :goto_0

    .line 569
    .end local v3           #assetKey:Lcom/android/vending/api/AssetService$SingleAssetKey;
    .end local p1           #i:I
    :cond_0
    return-void
.end method

.method private checkCache(Lcom/android/vending/model/AssetRequest;)Z
    .locals 14
    .parameter "assetRequest"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 463
    const/4 v6, 0x0

    .line 464
    .local v6, cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    const/4 v1, 0x0

    .line 465
    .local v1, cachedAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v2, cachedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v3, cachedCorrectedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->numAssetId()I

    move-result v0

    if-ne v0, v12, :cond_5

    .line 468
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v4, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1, v11}, Lcom/android/vending/model/AssetRequest;->getAssetId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4, v11}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v6

    .line 473
    if-eqz v6, :cond_1

    .line 474
    new-instance v7, Lcom/android/vending/model/Asset;

    iget-object v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v0, v4}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    .line 475
    .local v7, existingAsset:Lcom/android/vending/model/Asset;
    invoke-virtual {v7}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    .line 528
    .end local v7           #existingAsset:Lcom/android/vending/model/Asset;
    :goto_0
    return v0

    .line 478
    .restart local v7       #existingAsset:Lcom/android/vending/model/Asset;
    :cond_0
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .end local v1           #cachedAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;
    invoke-direct {v1, v13}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 479
    .restart local v1       #cachedAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;
    iget-object v0, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    const-wide/16 v4, 0x1

    iput-wide v4, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    .line 481
    const-string v0, ""

    iput-object v0, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    .line 482
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    .line 483
    iput-object v13, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    .line 484
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v7           #existingAsset:Lcom/android/vending/model/Asset;
    :cond_1
    :goto_1
    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 507
    iget-boolean v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    if-eqz v0, :cond_3

    .line 509
    :cond_2
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/vending/api/AssetService;->initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V

    .line 516
    :cond_3
    iget-boolean v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v0, :cond_4

    .line 517
    iput-object v1, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 518
    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssets:Ljava/util/List;

    .line 519
    iput-object v3, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredCorrectedAssets:Ljava/util/List;

    .line 520
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getRequestSpecificProperties()Lcom/android/vending/model/RequestSpecificProperties;

    move-result-object v0

    iget-object v4, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/vending/model/RequestSpecificProperties;->setIfNoneMatch(Ljava/lang/String;)V

    .line 524
    :cond_4
    iget-boolean v0, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-nez v0, :cond_6

    move v0, v12

    goto :goto_0

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v4, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v4, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    invoke-interface {v0, v4, v11}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v6

    .line 490
    if-eqz v6, :cond_1

    .line 493
    iget-object v1, v6, Lcom/android/vending/cache/CacheManager$CacheResult;->serializable:Ljava/io/Serializable;

    .end local v1           #cachedAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;
    check-cast v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 494
    .restart local v1       #cachedAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v9, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v9, p1}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    .line 495
    .local v9, key:Lcom/android/vending/api/AssetService$AssetRequestKey;
    invoke-virtual {v9}, Lcom/android/vending/api/AssetService$AssetRequestKey;->isHighPriority()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAccount()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/api/AssetService;->loadCachedAssets(Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)Z

    move-result v8

    .line 497
    .local v8, inCache:Z
    if-nez v8, :cond_1

    .line 499
    const/4 v2, 0x0

    .line 500
    const/4 v3, 0x0

    goto :goto_1

    .end local v8           #inCache:Z
    .end local v9           #key:Lcom/android/vending/api/AssetService$AssetRequestKey;
    :cond_6
    move v0, v11

    .line 524
    goto :goto_0

    :cond_7
    move v0, v11

    .line 528
    goto :goto_0
.end method

.method private createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 425
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 426
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveVendingHistory(Z)V

    .line 430
    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 431
    return-object v0
.end method

.method private expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter "assetRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/AssetRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAssetIdRequests()Ljava/util/List;

    move-result-object v2

    .line 273
    .local v2, assetIdRequests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 274
    .local v8, numAssetIdRequests:I
    if-nez v8, :cond_1

    .line 310
    :cond_0
    return-object p2

    .line 283
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v3, assetMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAssetIdRequestsToServer()Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, assetRequestsToServer:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 286
    .local v5, assetRequestsToServerSize:I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    .local v9, numAssets:I
    :goto_0
    if-ge v6, v9, :cond_3

    .line 287
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 291
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, assetId:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    if-ge v6, v5, :cond_2

    .line 294
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 295
    .local v10, serverId:Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 296
    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v10           #serverId:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 301
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v1           #assetId:Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .restart local v1       #assetId:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 306
    .restart local v0       #asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_4

    .line 307
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter "assetRequest"
    .parameter "cachedAssetList"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/AssetRequest;",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p3, cachedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p4, cachedCorrectedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-wide v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    .line 582
    invoke-direct {p0, p1, p3}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 583
    .local v0, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-direct {p0, p1, p4}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 584
    .local v1, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-interface {v2, v0, v1}, Lcom/android/vending/api/AssetService$GetAssetsReceiver;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 585
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 587
    iget-wide v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    .line 588
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    .line 589
    iget-object v2, p2, Lcom/android/vending/api/AssetService$CachedAssetList;->mListType:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private loadCachedAssets(Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 9
    .parameter "cachedAssetList"
    .parameter
    .parameter
    .parameter "isHighPriority"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/api/AssetService$CachedAssetList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, cachedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p3, cachedCorrectedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    const/4 v8, 0x0

    .line 602
    iget-object v0, p1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    .line 603
    .local v0, assetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 604
    new-instance v4, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, p4, p5}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 605
    .local v4, key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    iget-object v5, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-interface {v5, v4, v8}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v1

    .line 607
    .local v1, cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v1, :cond_0

    move v5, v8

    .line 636
    .end local v1           #cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4           #key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    :goto_1
    return v5

    .line 610
    .restart local v1       #cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    .restart local v4       #key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_0
    iget-object v5, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->account:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 613
    const-string v5, "Cached asset result has null account!!"

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move v5, v8

    .line 614
    goto :goto_1

    .line 616
    :cond_1
    new-instance v5, Lcom/android/vending/model/Asset;

    iget-object v6, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v7, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->account:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    .end local v1           #cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4           #key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_2
    iget-object v2, p1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedAssetList:Ljava/util/List;

    .line 621
    .local v2, correctedAssetList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 622
    new-instance v4, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, p5}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .restart local v4       #key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    iget-object v5, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-interface {v5, v4, v8}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v1

    .line 624
    .restart local v1       #cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v1, :cond_3

    move v5, v8

    .line 625
    goto :goto_1

    .line 627
    :cond_3
    iget-object v5, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->account:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 630
    const-string v5, "Cached corrected asset result has null account!"

    invoke-static {v5}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move v5, v8

    .line 631
    goto :goto_1

    .line 633
    :cond_4
    new-instance v5, Lcom/android/vending/model/Asset;

    iget-object v6, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iget-object v7, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->account:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/vending/model/Asset;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 636
    .end local v1           #cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    .end local v4           #key:Lcom/android/vending/api/AssetService$SingleAssetKey;
    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCorrectedSearchQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 347
    .end local p0
    :goto_0
    return-object v0

    .line 339
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 341
    const-string v0, ""

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_2

    .line 345
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    .restart local p0
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedHeader:Ljava/lang/String;

    .line 373
    .end local p0
    :goto_0
    return-object v0

    .line 370
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 371
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    .restart local p0
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getListType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedListType:Ljava/lang/Integer;

    .line 384
    .end local p0
    :goto_0
    return-object v0

    .line 381
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 382
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getListType()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 384
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTotalAssets()J
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 325
    .end local p0
    :goto_0
    return-wide v0

    .line 321
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 322
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumTotalAssets()J

    move-result-wide v0

    goto :goto_0

    .line 325
    .restart local p0
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getNumTotalCorrectedAssets()J
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCachedTotalCorrectedResults:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 362
    .end local p0
    :goto_0
    return-wide v0

    .line 358
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_1

    .line 359
    iget-object p0, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/AssetResponse;

    invoke-virtual {p0}, Lcom/android/vending/model/AssetResponse;->getNumTotalCorrectedAssets()J

    move-result-wide v0

    goto :goto_0

    .line 362
    .restart local p0
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public invalidate(Lcom/android/vending/model/Asset;)V
    .locals 4
    .parameter "asset"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 397
    return-void
.end method

.method public invalidate(Lcom/android/vending/model/LocalAsset;)V
    .locals 4
    .parameter "asset"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 401
    return-void
.end method

.method public invalidateById(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "assetId"
    .parameter "account"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 408
    iget-object v0, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v1, Lcom/android/vending/api/AssetService$SingleAssetKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/android/vending/api/AssetService$SingleAssetKey;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/vending/cache/CacheManager;->delete(Lcom/android/vending/cache/Cacheable;)V

    .line 409
    return-void
.end method

.method public invalidateMyDownloads()V
    .locals 4

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/vending/api/AssetService;->createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 417
    .local v0, myDownloadsRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    new-instance v2, Lcom/android/vending/api/AssetService$AssetRequestKey;

    invoke-direct {v2, v0}, Lcom/android/vending/api/AssetService$AssetRequestKey;-><init>(Lcom/android/vending/model/AssetRequest;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/vending/cache/CacheManager;->invalidate(Lcom/android/vending/cache/Cacheable;Z)Z

    .line 418
    return-void
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 13
    .parameter "request"
    .parameter "isCached"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, assetListToCache:Lcom/android/vending/api/AssetService$CachedAssetList;
    const/4 v5, 0x0

    .line 189
    .local v5, assetsToCache:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/AssetRequest;

    .line 190
    .local v2, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v3, p0, Lcom/android/vending/api/AssetService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    check-cast v3, Lcom/android/vending/model/AssetResponse;

    .line 193
    .local v3, assetResponse:Lcom/android/vending/model/AssetResponse;
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v9

    .line 194
    .local v9, responseProperties:Lcom/android/vending/model/ResponseProperties;
    invoke-virtual {v9}, Lcom/android/vending/model/ResponseProperties;->getResult()Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v10

    sget-object v11, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v10, v11, :cond_1

    .line 195
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    iget-object v11, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssets:Ljava/util/List;

    iget-object v12, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredCorrectedAssets:Ljava/util/List;

    invoke-direct {p0, v2, v10, v11, v12}, Lcom/android/vending/api/AssetService;->initializeFromCache(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;Ljava/util/List;)V

    .line 197
    iget-object v1, p0, Lcom/android/vending/api/AssetService;->mPossiblyExpiredAssetList:Lcom/android/vending/api/AssetService$CachedAssetList;

    .line 212
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 213
    new-instance v1, Lcom/android/vending/api/AssetService$CachedAssetList;

    .end local v1           #assetListToCache:Lcom/android/vending/api/AssetService$CachedAssetList;
    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>(Lcom/android/vending/api/AssetService$1;)V

    .line 214
    .restart local v1       #assetListToCache:Lcom/android/vending/api/AssetService$CachedAssetList;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #assetsToCache:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .restart local v5       #assetsToCache:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumAssets()I

    move-result v8

    .local v8, i:I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_3

    .line 216
    invoke-virtual {v3, v8}, Lcom/android/vending/model/AssetResponse;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 217
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v8           #i:I
    :cond_1
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/vending/api/AssetService;->mCachedTotalResults:Ljava/lang/Long;

    .line 200
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/vending/api/AssetService;->mCachedCorrectedQuery:Ljava/lang/String;

    .line 201
    iget-boolean v10, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 202
    :cond_2
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getAssets()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 203
    .local v4, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getCorrectedAssets()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/vending/api/AssetService;->expandAssetList(Lcom/android/vending/model/AssetRequest;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 206
    .local v7, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-interface {v10, v4, v7}, Lcom/android/vending/api/AssetService$GetAssetsReceiver;->onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V

    .line 207
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v4           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .end local v7           #correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .restart local v8       #i:I
    :cond_3
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumTotalAssets()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    .line 223
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getCorrectedQuery()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    .line 224
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumCorrectedAssets()I

    move-result v8

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    .line 225
    invoke-virtual {v3, v8}, Lcom/android/vending/model/AssetResponse;->getCorrectedAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v6

    .line 226
    .local v6, correctedAsset:Lcom/android/vending/model/Asset;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedAssetList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
    .end local v6           #correctedAsset:Lcom/android/vending/model/Asset;
    :cond_4
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getNumTotalCorrectedAssets()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    .line 232
    invoke-virtual {v3}, Lcom/android/vending/model/AssetResponse;->getHeader()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    .line 234
    .end local v8           #i:I
    :cond_5
    iget-object v10, p0, Lcom/android/vending/api/AssetService;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-static {v10, v2, v9, v1, v5}, Lcom/android/vending/api/AssetService;->cacheResponse(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Lcom/android/vending/api/AssetService$CachedAssetList;Ljava/util/List;)V

    .line 236
    return-void
.end method

.method public queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 1
    .parameter "assetRequest"
    .parameter "assetsReceiver"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/android/vending/model/AssetRequest;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Ljava/lang/String;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 124
    return-void
.end method

.method public queueGetAssets(Ljava/lang/String;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 3
    .parameter "account"
    .parameter "assetRequest"
    .parameter "assetsReceiver"

    .prologue
    .line 144
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 147
    iput-object p3, p0, Lcom/android/vending/api/AssetService;->mAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .line 148
    invoke-direct {p0, p2}, Lcom/android/vending/api/AssetService;->checkCache(Lcom/android/vending/model/AssetRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/android/vending/model/AssetResponse;

    invoke-direct {v0, p1}, Lcom/android/vending/model/AssetResponse;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, applicationsResponse:Lcom/android/vending/model/AssetResponse;
    iget-object v2, p0, Lcom/android/vending/api/AssetService;->mHandledAssetRequests:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 154
    .local v1, canPostponeRefresh:Z
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/AssetService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    goto :goto_0
.end method

.method public queueGetMyDownloads(Ljava/lang/String;Lcom/android/vending/api/AssetService$GetAssetsReceiver;[Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "assetsReceiver"
    .parameter "pendingDownloads"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/vending/api/AssetService;->createMyDownloadsRequest()Lcom/android/vending/model/AssetRequest;

    move-result-object v0

    .line 165
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 166
    invoke-virtual {v0, p3}, Lcom/android/vending/model/AssetRequest;->setPendingDownloadAssetIds([Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Ljava/lang/String;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 169
    return-void
.end method

.method public setAllowMultipleResponses(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/vending/api/AssetService;->mAllowMultipleResponses:Z

    .line 182
    return-void
.end method
