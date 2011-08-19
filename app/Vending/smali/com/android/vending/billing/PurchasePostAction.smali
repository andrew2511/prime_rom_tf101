.class public Lcom/android/vending/billing/PurchasePostAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "PurchasePostAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;
    }
.end annotation


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mAssetRequest:Lcom/android/vending/model/AssetRequest;

.field private final mAssetService:Lcom/android/vending/api/AssetService;

.field private mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

.field private mImageId:Ljava/lang/String;

.field private final mImageService:Lcom/android/vending/api/GetImageService;

.field private mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

.field private final mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

.field private mLastAssetId:Ljava/lang/String;

.field private mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

.field private mLastImageId:Ljava/lang/String;

.field private mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

.field private mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

.field private mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

.field private mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

.field private mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

.field private final mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

.field private mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

.field private final mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

.field private mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V
    .locals 3
    .parameter "activity"
    .parameter "requestManager"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/vending/BaseActivity$BaseAction;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 68
    new-instance v0, Lcom/android/vending/api/PurchasePostService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/PurchasePostService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    .line 69
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {v0}, Lcom/android/vending/api/InAppPurchaseService;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    .line 70
    new-instance v0, Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 72
    new-instance v0, Lcom/android/vending/api/PurchaseMetadataService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/PurchaseMetadataService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    .line 73
    new-instance v0, Lcom/android/vending/api/GetImageService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    .line 74
    return-void
.end method

.method private resetRequests()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 317
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 319
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 320
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 322
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 323
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 325
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 326
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 328
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 329
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 333
    return-void
.end method

.method private startRemainingRequests()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->start()V

    .line 307
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->cancel()V

    .line 312
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->resetRequests()V

    .line 313
    return-void
.end method

.method public displayResults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onAssetLoaded()V

    .line 256
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 257
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 258
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->startRemainingRequests()V

    .line 300
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    invoke-virtual {v1}, Lcom/android/vending/api/GetImageService;->getResponse()Lcom/android/vending/model/GetImageResponse;

    move-result-object v0

    .line 264
    .local v0, response:Lcom/android/vending/model/GetImageResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 266
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 267
    iput-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->startRemainingRequests()V

    goto :goto_0

    .line 272
    .end local v0           #response:Lcom/android/vending/model/GetImageResponse;
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    invoke-virtual {v1}, Lcom/android/vending/api/PurchaseMetadataService;->getPurchaseMetadataResponse()Lcom/android/vending/model/PurchaseMetadataResponse;

    move-result-object v0

    .line 275
    .local v0, response:Lcom/android/vending/model/PurchaseMetadataResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V

    .line 278
    .end local v0           #response:Lcom/android/vending/model/PurchaseMetadataResponse;
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    invoke-virtual {v1}, Lcom/android/vending/api/PurchasePostService;->getPurchasePostResponse()Lcom/android/vending/model/PurchasePostResponse;

    move-result-object v0

    .line 280
    .local v0, response:Lcom/android/vending/model/PurchasePostResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    .line 288
    .end local v0           #response:Lcom/android/vending/model/PurchasePostResponse;
    :cond_3
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v1, :cond_4

    .line 289
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    invoke-virtual {v1}, Lcom/android/vending/api/InAppPurchaseService;->getPurchaseProductResponse()Lcom/android/vending/model/PurchaseProductResponse;

    move-result-object v0

    .line 291
    .local v0, response:Lcom/android/vending/model/PurchaseProductResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v1, v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V

    .line 294
    .end local v0           #response:Lcom/android/vending/model/PurchaseProductResponse;
    :cond_4
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 295
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    invoke-virtual {v1}, Lcom/android/vending/api/GetImageService;->getResponse()Lcom/android/vending/model/GetImageResponse;

    move-result-object v0

    .line 296
    .local v0, response:Lcom/android/vending/model/GetImageResponse;
    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    .line 299
    .end local v0           #response:Lcom/android/vending/model/GetImageResponse;
    :cond_5
    invoke-direct {p0}, Lcom/android/vending/billing/PurchasePostAction;->resetRequests()V

    goto :goto_0
.end method

.method public executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .parameter "request"
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 127
    invoke-virtual {p0, p2, p3}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 128
    return-void
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object p0, p0, Lcom/android/vending/billing/PurchasePostAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .end local p0
    check-cast p0, Lcom/android/vending/billing/BasePurchaseActivity;

    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetService()Lcom/android/vending/api/AssetService;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method protected onRequestComplete(Z)V
    .locals 2
    .parameter "success"

    .prologue
    const/4 v1, 0x0

    .line 340
    if-nez p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 349
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    invoke-interface {v0}, Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;->onPurchasePostError()V

    .line 368
    :cond_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    .line 352
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 355
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 356
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 357
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    .line 359
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 360
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 361
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 362
    iput-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public prepare()V
    .locals 8

    .prologue
    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 217
    .local v6, currentTime:J
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetService:Lcom/android/vending/api/AssetService;

    iget-object v1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    const-string v4, "0"

    sget-object v5, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataService:Lcom/android/vending/api/PurchaseMetadataService;

    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/PurchaseMetadataService;->queueGetPurchaseMetadata(Ljava/lang/String;Lcom/android/vending/model/PurchaseMetadataRequest;)V

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostService:Lcom/android/vending/api/PurchasePostService;

    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/PurchasePostService;->purchasePost(Ljava/lang/String;Lcom/android/vending/model/PurchasePostRequest;)V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mInAppPurchaseService:Lcom/android/vending/api/InAppPurchaseService;

    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/InAppPurchaseService;->queueRequest(Ljava/lang/String;Lcom/android/vending/model/PurchaseProductRequest;)Lcom/android/vending/model/PurchaseProductResponse;

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageService:Lcom/android/vending/api/GetImageService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    iget-object v3, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    sget-object v4, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    goto :goto_0
.end method

.method public queueAssetRequest(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V
    .locals 1
    .parameter "request"
    .parameter "receiver"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 161
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mGetAssetsReceiver:Lcom/android/vending/api/AssetService$GetAssetsReceiver;

    .line 163
    :cond_0
    return-void
.end method

.method public queueIconRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "assetId"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 201
    :cond_0
    return-void
.end method

.method public queueImageRequest(Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;)V
    .locals 1
    .parameter "usage"
    .parameter "imageId"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 184
    iput-object p2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 186
    :cond_0
    return-void
.end method

.method public queueMetadataRequest(Lcom/android/vending/model/PurchaseMetadataRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 174
    :cond_0
    return-void
.end method

.method public queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 139
    :cond_0
    return-void
.end method

.method public queuePurchaseProductRequest(Lcom/android/vending/model/PurchaseProductRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-nez v0, :cond_0

    .line 148
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 150
    :cond_0
    return-void
.end method

.method public retry()V
    .locals 3

    .prologue
    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 373
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetRequest:Lcom/android/vending/model/AssetRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetRequest:Lcom/android/vending/model/AssetRequest;

    .line 375
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    .line 398
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastAssetId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mAssetId:Ljava/lang/String;

    .line 381
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchasePostRequest:Lcom/android/vending/model/PurchasePostRequest;

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    if-eqz v2, :cond_3

    .line 389
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseProductRequest:Lcom/android/vending/model/PurchaseProductRequest;

    .line 391
    :cond_3
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    if-eqz v2, :cond_4

    .line 392
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mPurchaseMetadataRequest:Lcom/android/vending/model/PurchaseMetadataRequest;

    .line 394
    :cond_4
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 395
    iget-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mLastImageId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/vending/billing/PurchasePostAction;->mImageId:Ljava/lang/String;

    .line 397
    :cond_5
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->retry()V

    goto :goto_0
.end method

.method public setActivity(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/billing/PurchasePostAction;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-super {p0, p1, v0}, Lcom/android/vending/BaseActivity$BaseAction;->setActivity(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    .line 85
    return-void
.end method

.method public setListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vending/billing/PurchasePostAction;->mListener:Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;

    .line 99
    return-void
.end method

.method public start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V
    .locals 0
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/PurchasePostAction;->setActivity(Lcom/android/vending/BaseActivity;)V

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/PurchasePostAction;->setListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/vending/billing/PurchasePostAction;->start()V

    .line 112
    return-void
.end method
