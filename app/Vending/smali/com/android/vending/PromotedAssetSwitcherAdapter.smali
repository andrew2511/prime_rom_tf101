.class public Lcom/android/vending/PromotedAssetSwitcherAdapter;
.super Ljava/lang/Object;
.source "PromotedAssetSwitcherAdapter.java"

# interfaces
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;
.implements Lcom/android/vending/api/GetImageService$GetImageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;,
        Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;,
        Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;,
        Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    }
.end annotation


# instance fields
.field private final mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

.field private mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialLoadComplete:Z

.field private mInitialLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

.field private mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

.field private final mPreloadedDataLock:Ljava/lang/Object;

.field private final mPromotedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "initialLoadListener"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, promotedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    .line 46
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadComplete:Z

    .line 49
    iput-object p2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

    .line 50
    iput-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    .line 51
    iput-object p3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/PromotedAssetSwitcherAdapter;Lcom/android/vending/api/RequestManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->queueRequests(Lcom/android/vending/api/RequestManager;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/PromotedAssetSwitcherAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->isCurrentPreloadDataPosition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    return-object v0
.end method

.method private checkLoadCompletions(Z)V
    .locals 2
    .parameter "explicitlyPostToUiThread"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-boolean v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadComplete:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasLoadedEnoughForDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadComplete:Z

    .line 190
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->clone()Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->notifyInitialLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->clone()Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->notifyFullLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V

    .line 196
    :cond_1
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCurrentPreloadDataPosition(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyFullLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V
    .locals 2
    .parameter "promotedAssetData"
    .parameter "explicitlyPostToUiThread"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    if-eqz v0, :cond_0

    .line 219
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$2;-><init>(Lcom/android/vending/PromotedAssetSwitcherAdapter;Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-nez p2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    invoke-interface {v0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;->notifyFullLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    goto :goto_0

    .line 228
    :cond_2
    const-string v0, "Unable to execute runnable because there is no UI thread handler."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyInitialLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V
    .locals 2
    .parameter "promotedAssetData"
    .parameter "explicitlyPostToUiThread"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

    if-eqz v0, :cond_0

    .line 202
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$1;-><init>(Lcom/android/vending/PromotedAssetSwitcherAdapter;Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    if-nez p2, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mInitialLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;

    invoke-interface {v0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;->notifyInitialLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "Unable to execute runnable because there is no UI thread handler."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueRequests(Lcom/android/vending/api/RequestManager;I)V
    .locals 6
    .parameter "manager"
    .parameter "positionToLoad"

    .prologue
    .line 376
    new-instance v1, Lcom/android/vending/api/AssetService;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 377
    .local v1, assetService:Lcom/android/vending/api/AssetService;
    new-instance v2, Lcom/android/vending/api/GetImageService;

    invoke-direct {v2, p1, p0}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/api/GetImageService$GetImageReceiver;)V

    .line 379
    .local v2, imageService:Lcom/android/vending/api/GetImageService;
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 380
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 383
    invoke-virtual {v1, v0, p0}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 384
    return-void
.end method

.method private readyToPreload(IZ)Z
    .locals 5
    .parameter "positionToPreload"
    .parameter "forceRequest"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->getNumPromotedAssets()I

    move-result v0

    .line 243
    .local v0, numPromotedAssets:I
    if-nez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->notifyInitialLoadCompleteOnUiThread(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;Z)V

    move v1, v3

    .line 260
    :goto_0
    return v1

    .line 248
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    :cond_1
    move v1, v3

    .line 249
    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    if-nez p2, :cond_3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->isCurrentPreloadDataPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    monitor-exit v2

    move v1, v3

    goto :goto_0

    .line 257
    :cond_3
    new-instance v3, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p1, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;-><init>(ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    .line 259
    monitor-exit v2

    move v1, v4

    .line 260
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public attemptToPreloadFromCache(ILcom/android/vending/api/RequestManager;)Z
    .locals 2
    .parameter "promotedListPositionToLoad"
    .parameter "requestManager"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->readyToPreload(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p2, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->queueRequests(Lcom/android/vending/api/RequestManager;I)V

    .line 115
    invoke-virtual {p2, v1}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNumPromotedAssets()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPromoAssetData(I)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    .locals 3
    .parameter "promotedListPosition"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasLoadedEnoughForDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->clone()Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    .line 87
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->requestPreload(IZ)V

    .line 87
    :cond_1
    :goto_1
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->requestPreload(IZ)V

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 126
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v5, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v5

    .line 127
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 128
    .local v0, asset:Lcom/android/vending/model/Asset;
    iget-object v6, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v6, :cond_0

    .line 131
    iget-object v6, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v6}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v2

    .line 132
    .local v2, promoPosition:I
    iget-object v6, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, promotedAssetId:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Promoted asset ID is null at position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #promoPosition:I
    .end local v3           #promotedAssetId:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 138
    .restart local v0       #asset:Lcom/android/vending/model/Asset;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #promoPosition:I
    .restart local v3       #promotedAssetId:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 139
    :try_start_1
    const-string v6, "Asset in response is null"

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getPromotionalDescription()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, promotedDesc:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing promotional description for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 149
    const-string v4, ""

    .line 152
    :cond_3
    iget-object v6, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v6, v4}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setPromoDescription(Ljava/lang/String;)V

    .line 153
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->checkLoadCompletions(Z)V

    .line 154
    monitor-exit v5

    .line 158
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    .end local v2           #promoPosition:I
    .end local v3           #promotedAssetId:Ljava/lang/String;
    .end local v4           #promotedDesc:Ljava/lang/String;
    :goto_1
    return-void

    .line 157
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onGetImageResponse(Lcom/android/vending/model/GetImageRequest;Lcom/android/vending/model/GetImageResponse;)V
    .locals 6
    .parameter "request"
    .parameter "response"

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageRequest;->getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v2

    .line 166
    .local v2, usage:Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, assetId:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    .local v1, image:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne v3, v2, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPromotedList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v5}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mPreloadedData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v3, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setPromoBadge(Landroid/graphics/Bitmap;)V

    .line 174
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->checkLoadCompletions(Z)V

    .line 176
    :cond_0
    monitor-exit v4

    .line 178
    :cond_1
    return-void

    .line 176
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public requestPreload(IZ)V
    .locals 2
    .parameter "promotedListPosition"
    .parameter "forcePreload"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->readyToPreload(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v1, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PreloadPromoAssetsRequest;-><init>(Lcom/android/vending/PromotedAssetSwitcherAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setFullLoadListener(Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;)V
    .locals 0
    .parameter "fullLoadListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter;->mFullLoadListener:Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;

    .line 60
    return-void
.end method
