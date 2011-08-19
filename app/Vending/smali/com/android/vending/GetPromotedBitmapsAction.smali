.class public Lcom/android/vending/GetPromotedBitmapsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "GetPromotedBitmapsAction.java"


# instance fields
.field private final mCarousel:Lcom/android/vending/velvet/CarouselView;

.field private mDefaultSubAction:Lcom/android/vending/BaseActivity$BaseAction;

.field mEndIndex:I

.field mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

.field mPromotedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSkippedCount:I

.field mStartIndex:I


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;I)V
    .locals 6
    .parameter "activity"
    .parameter "carousel"
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/BaseActivity;",
            "Lcom/android/vending/velvet/CarouselView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, promotedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;II)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;II)V
    .locals 1
    .parameter "activity"
    .parameter "carousel"
    .parameter
    .parameter "startIndex"
    .parameter "skippedCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/BaseActivity;",
            "Lcom/android/vending/velvet/CarouselView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, promotedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 64
    iput-object p2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    .line 65
    iget-object v0, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    invoke-virtual {v0, p1}, Lcom/android/vending/velvet/CarouselView;->setBaseActivity(Lcom/android/vending/BaseActivity;)V

    .line 67
    iput-object p3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    .line 68
    iput p4, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    .line 69
    iput p5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    .line 70
    return-void
.end method

.method private compactPromotedData()V
    .locals 9

    .prologue
    .line 164
    const/4 v7, 0x0

    .line 165
    .local v7, missingInfoCount:I
    iget-object v0, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .local v0, arr$:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v0, v3

    .line 166
    .local v1, assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    iget-object v8, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v8, :cond_1

    .line 167
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 165
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v1           #assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    :cond_2
    if-nez v7, :cond_3

    .line 186
    :goto_1
    return-void

    .line 175
    :cond_3
    iget-object v8, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    array-length v8, v8

    sub-int/2addr v8, v7

    new-array v2, v8, [Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 177
    .local v2, compacted:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    const/4 v4, 0x0

    .line 178
    .local v4, index:I
    iget-object v0, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    array-length v6, v0

    const/4 v3, 0x0

    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v1, v0, v3

    .line 179
    .restart local v1       #assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    iget-object v8, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v8, :cond_4

    move v4, v5

    .line 178
    .end local v5           #index:I
    .restart local v4       #index:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_2

    .line 182
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aput-object v1, v2, v5

    goto :goto_3

    .line 184
    .end local v1           #assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_5
    iget v8, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    .line 185
    iput-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    goto :goto_1

    .restart local v1       #assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    :cond_6
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_3
.end method


# virtual methods
.method protected displayResults()V
    .locals 5

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    if-eqz v2, :cond_4

    .line 131
    iget v1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v1, v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    sub-int v3, v1, v3

    aget-object v0, v2, v3

    .line 133
    .local v0, assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    iget-object v2, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed fetching asset for assetID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, v0, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;->mBitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed fetching bitmap for assetID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v0           #assetData:Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;
    :cond_2
    invoke-direct {p0}, Lcom/android/vending/GetPromotedBitmapsAction;->compactPromotedData()V

    .line 143
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 144
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    if-nez v2, :cond_5

    .line 145
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/velvet/CarouselView;->initializeAndLoad(I[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V

    .line 151
    :cond_3
    :goto_2
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    iget v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 152
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    iget v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    invoke-virtual {v2, v3}, Lcom/android/vending/velvet/CarouselView;->trimTrailing(I)V

    .line 156
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Lcom/android/vending/velvet/CarouselView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void

    .line 147
    .restart local v1       #i:I
    :cond_5
    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-virtual {v2, v3}, Lcom/android/vending/velvet/CarouselView;->load([Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;)V

    goto :goto_2
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 6

    .prologue
    .line 195
    iget v1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 200
    new-instance v0, Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    iget-object v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mCarousel:Lcom/android/vending/velvet/CarouselView;

    iget-object v3, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    iget v4, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    add-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mSkippedCount:I

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;II)V

    .line 202
    .local v0, sub:Lcom/android/vending/GetPromotedBitmapsAction;
    iget-object v1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mDefaultSubAction:Lcom/android/vending/BaseActivity$BaseAction;

    invoke-virtual {v0, v1}, Lcom/android/vending/GetPromotedBitmapsAction;->setDefaultSubAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    move-object v1, v0

    .line 205
    .end local v0           #sub:Lcom/android/vending/GetPromotedBitmapsAction;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mDefaultSubAction:Lcom/android/vending/BaseActivity$BaseAction;

    goto :goto_0
.end method

.method public prepare()V
    .locals 8

    .prologue
    .line 74
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    add-int/lit8 v6, v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    .line 76
    iget v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    iget v6, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    sub-int/2addr v5, v6

    new-array v5, v5, [Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iput-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    .line 77
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v2, v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedDatas:[Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    iget v6, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    sub-int v6, v2, v6

    new-instance v7, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;

    invoke-direct {v7}, Lcom/android/vending/velvet/CarouselView$ThumbnailAssetData;-><init>()V

    aput-object v7, v5, v6

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v1}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 82
    .local v1, assetsReq:Lcom/android/vending/model/AssetRequest;
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    :goto_1
    iget v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v2, v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v5}, Lcom/android/vending/BaseActivity;->getRequestManager()Lcom/android/vending/api/RequestManager;

    move-result-object v3

    .line 86
    .local v3, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v0, Lcom/android/vending/api/AssetService;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    .line 88
    .local v0, assetService:Lcom/android/vending/api/AssetService;
    new-instance v5, Lcom/android/vending/GetPromotedBitmapsAction$1;

    invoke-direct {v5, p0}, Lcom/android/vending/GetPromotedBitmapsAction$1;-><init>(Lcom/android/vending/GetPromotedBitmapsAction;)V

    invoke-virtual {v0, v1, v5}, Lcom/android/vending/api/AssetService;->queueGetAssets(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 105
    new-instance v4, Lcom/android/vending/api/GetImageService;

    new-instance v5, Lcom/android/vending/GetPromotedBitmapsAction$2;

    invoke-direct {v5, p0}, Lcom/android/vending/GetPromotedBitmapsAction$2;-><init>(Lcom/android/vending/GetPromotedBitmapsAction;)V

    invoke-direct {v4, v3, v5}, Lcom/android/vending/api/GetImageService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/api/GetImageService$GetImageReceiver;)V

    .line 120
    .local v4, service:Lcom/android/vending/api/GetImageService;
    iget v2, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mStartIndex:I

    :goto_2
    iget v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mEndIndex:I

    if-ge v2, v5, :cond_2

    .line 121
    iget-object v5, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mPromotedList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/vending/api/GetImageService;->getImage(Ljava/lang/String;Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    .end local v0           #assetService:Lcom/android/vending/api/AssetService;
    .end local v1           #assetsReq:Lcom/android/vending/model/AssetRequest;
    .end local v2           #i:I
    .end local v3           #requestManager:Lcom/android/vending/api/RequestManager;
    .end local v4           #service:Lcom/android/vending/api/GetImageService;
    :cond_2
    return-void
.end method

.method public setDefaultSubAction(Lcom/android/vending/BaseActivity$BaseAction;)V
    .locals 0
    .parameter "defaultSubAction"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/vending/GetPromotedBitmapsAction;->mDefaultSubAction:Lcom/android/vending/BaseActivity$BaseAction;

    .line 190
    return-void
.end method
