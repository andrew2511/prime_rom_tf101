.class public Lcom/android/vending/AssetItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssetItemAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Lcom/android/vending/api/AssetService$GetAssetsReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetItemAdapter$5;,
        Lcom/android/vending/AssetItemAdapter$ImagesRequest;,
        Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;,
        Lcom/android/vending/AssetItemAdapter$OnImagesLoadErrorListener;,
        Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;,
        Lcom/android/vending/AssetItemAdapter$ViewType;
    }
.end annotation


# static fields
.field private static LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

.field private static sColorsInitialized:Z

.field private static sHighlightColor:Landroid/content/res/ColorStateList;

.field private static sHighlightTitleColor:Landroid/content/res/ColorStateList;

.field private static sNormalColor:Landroid/content/res/ColorStateList;

.field private static sNormalTitleColor:Landroid/content/res/ColorStateList;

.field private static sWarningColor:Landroid/content/res/ColorStateList;

.field private static sWarningTitleColor:Landroid/content/res/ColorStateList;


# instance fields
.field protected mAdapterPopulated:Z

.field private final mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field protected mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

.field protected mContext:Landroid/content/Context;

.field private mEmulateEmptyItems:I

.field protected mHandler:Landroid/os/Handler;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private final mOnImagesLoadedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippetView:Landroid/view/View;

.field private mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    new-instance v0, Lcom/android/vending/AssetItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetItemAdapter$1;-><init>(Lcom/android/vending/AssetItemAdapter;)V

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    .line 143
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    .line 144
    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    .line 147
    sget-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetItemAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/AssetItemAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/model/Asset$AppImageUsage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z

    move-result v0

    return v0
.end method

.method private addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z
    .locals 2
    .parameter "position"
    .parameter "usage"
    .parameter "imageId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 797
    .local p4, requestedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p5, requestedParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 798
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v1, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;-><init>(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 802
    iget-object v1, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/vending/model/Asset;->setLoadingBitmaps(Lcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;)V

    .line 804
    const/4 v1, 0x1

    .line 806
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private contains(Ljava/lang/String;)Z
    .locals 3
    .parameter "assetId"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 273
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v2, 0x1

    .line 277
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAssetAtPosition(I)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "position"

    .prologue
    .line 810
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x0

    .line 813
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset;

    move-object v0, p0

    goto :goto_0
.end method

.method protected static getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "usage"
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    const/4 v2, 0x1

    .line 576
    .local v2, numBitmaps:I
    sget-object v4, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 590
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 579
    :pswitch_0
    const/4 v2, 0x1

    .line 594
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 595
    .local v3, rsrc:Landroid/content/res/Resources;
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 596
    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p0, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    .line 600
    :cond_0
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    .line 601
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 606
    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq v4, p1, :cond_1

    sget-object v4, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq v4, p1, :cond_1

    .line 608
    sget-object v4, Lcom/android/vending/AssetItemAdapter;->LOADING_IMAGE_BITMAP:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v1           #i:I
    .end local v3           #rsrc:Landroid/content/res/Resources;
    .restart local p0
    :pswitch_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    .line 584
    const/4 v2, 0x2

    goto :goto_0

    .line 586
    :cond_2
    const/4 v2, 0x1

    .line 588
    goto :goto_0

    .line 613
    .end local p0
    .restart local v3       #rsrc:Landroid/content/res/Resources;
    :cond_3
    return-object v0

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "asset"

    .prologue
    .line 509
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 512
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isEverInstalledByUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    const v1, 0x7f0700d0

    .line 518
    .local v1, resId:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 522
    .end local v0           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    .line 516
    .restart local v0       #localAsset:Lcom/android/vending/model/LocalAsset;
    :cond_0
    const v1, 0x7f0700d1

    .restart local v1       #resId:I
    goto :goto_0

    .line 519
    .end local v0           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v1           #resId:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private initializeDownloadingView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)Z
    .locals 2
    .parameter "view"
    .parameter "asset"
    .parameter "parent"

    .prologue
    .line 354
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    const/4 v1, 0x0

    .line 365
    :goto_0
    return v1

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 362
    const v1, 0x7f08001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V
    .locals 7
    .parameter "view"
    .parameter "asset"

    .prologue
    const/4 v6, 0x1

    .line 408
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f08001b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 410
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v4, 0x7f08004c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 413
    .local v0, authorTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v4, 0x7f080061

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 418
    const v4, 0x7f08001c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 419
    .local v1, starRatingView:Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v4

    if-lez v4, :cond_0

    .line 420
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 421
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 427
    :goto_0
    const v4, 0x7f080063

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 428
    .restart local v2       #textView:Landroid/widget/TextView;
    invoke-static {p2, v2, v6}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 429
    return-void

    .line 423
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z
    .locals 1
    .parameter "usage"

    .prologue
    .line 907
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmaps(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 11
    .parameter "position"
    .parameter "usage"
    .parameter "imageId"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    .line 706
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    .local v4, requestedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    .local v5, requestedParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    const/4 v6, 0x0

    .line 710
    .local v6, maxImageRequestsPerAsset:I
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p2}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected usage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_0
    const/4 v6, 0x1

    .line 725
    :goto_0
    const/4 v8, 0x0

    .line 727
    .local v8, numRequestedImages:I
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v7

    .line 728
    .local v7, numAssets:I
    move v1, p1

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_2

    sub-int v0, v9, v6

    if-gt v8, v0, :cond_2

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 730
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    add-int/2addr v8, v6

    .line 729
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    .end local v1           #i:I
    .end local v7           #numAssets:I
    .end local v8           #numRequestedImages:I
    :pswitch_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x2

    move v6, v0

    .line 719
    :goto_2
    goto :goto_0

    :cond_1
    move v6, v10

    .line 717
    goto :goto_2

    .line 738
    .restart local v1       #i:I
    .restart local v7       #numAssets:I
    .restart local v8       #numRequestedImages:I
    :cond_2
    sub-int v1, p1, v10

    :goto_3
    if-ltz v1, :cond_4

    sub-int v0, v9, v6

    if-gt v8, v0, :cond_4

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 740
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    add-int/2addr v8, v6

    .line 739
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 746
    :cond_4
    if-lez v8, :cond_5

    .line 747
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v2, Lcom/android/vending/AssetItemAdapter$ImagesRequest;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/vending/AssetItemAdapter$ImagesRequest;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 749
    :cond_5
    return-void

    .line 710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private refreshSnippetView(Lcom/android/vending/model/Asset;)V
    .locals 2
    .parameter "asset"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V
    .locals 13
    .parameter "serverAsset"
    .parameter "textView"
    .parameter "inTitleBar"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 436
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 441
    .local v1, context:Landroid/content/Context;
    sget-boolean v8, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    if-nez v8, :cond_3

    .line 442
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 444
    .local v5, resources:Landroid/content/res/Resources;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 445
    .local v4, resolvedNormalColor:Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 446
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x1010038

    invoke-virtual {v8, v9, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 450
    :cond_2
    const v8, 0x7f090004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sHighlightTitleColor:Landroid/content/res/ColorStateList;

    .line 452
    const v8, 0x7f09002f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sHighlightColor:Landroid/content/res/ColorStateList;

    .line 453
    const v8, 0x7f090005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sWarningTitleColor:Landroid/content/res/ColorStateList;

    .line 454
    const v8, 0x7f090030

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sWarningColor:Landroid/content/res/ColorStateList;

    .line 455
    const v8, 0x7f090007

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sNormalTitleColor:Landroid/content/res/ColorStateList;

    .line 456
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sput-object v8, Lcom/android/vending/AssetItemAdapter;->sNormalColor:Landroid/content/res/ColorStateList;

    .line 458
    sput-boolean v10, Lcom/android/vending/AssetItemAdapter;->sColorsInitialized:Z

    .line 465
    .end local v4           #resolvedNormalColor:Landroid/util/TypedValue;
    .end local v5           #resources:Landroid/content/res/Resources;
    :cond_3
    if-eqz p2, :cond_4

    .line 466
    sget-object v3, Lcom/android/vending/AssetItemAdapter;->sNormalTitleColor:Landroid/content/res/ColorStateList;

    .line 467
    .local v3, normalColor:Landroid/content/res/ColorStateList;
    sget-object v2, Lcom/android/vending/AssetItemAdapter;->sHighlightTitleColor:Landroid/content/res/ColorStateList;

    .line 468
    .local v2, highlightColor:Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/android/vending/AssetItemAdapter;->sWarningTitleColor:Landroid/content/res/ColorStateList;

    .line 475
    .local v7, warningColor:Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 478
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 480
    const v8, 0x7f0700d3

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 482
    if-eqz p2, :cond_0

    .line 483
    new-array v8, v10, [I

    const v9, 0x1010036

    aput v9, v8, v12

    invoke-virtual {v1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 486
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 488
    .local v6, textColorPrimary:I
    const/high16 v8, 0x4040

    invoke-virtual {p1, v8, v11, v11, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 470
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v2           #highlightColor:Landroid/content/res/ColorStateList;
    .end local v3           #normalColor:Landroid/content/res/ColorStateList;
    .end local v6           #textColorPrimary:I
    .end local v7           #warningColor:Landroid/content/res/ColorStateList;
    :cond_4
    sget-object v3, Lcom/android/vending/AssetItemAdapter;->sNormalColor:Landroid/content/res/ColorStateList;

    .line 471
    .restart local v3       #normalColor:Landroid/content/res/ColorStateList;
    sget-object v2, Lcom/android/vending/AssetItemAdapter;->sHighlightColor:Landroid/content/res/ColorStateList;

    .line 472
    .restart local v2       #highlightColor:Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/android/vending/AssetItemAdapter;->sWarningColor:Landroid/content/res/ColorStateList;

    .restart local v7       #warningColor:Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 491
    :cond_5
    const v8, 0x7f0700d2

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 495
    :cond_6
    const v8, 0x7f0700ce

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 497
    :cond_7
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 498
    invoke-static {v1, p0}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 501
    :cond_8
    invoke-static {v1, p0}, Lcom/android/vending/AssetItemAdapter;->getPriceOrPurchaseStateString(Landroid/content/Context;Lcom/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAssets(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 240
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetItemAdapter;->innerAddAllAssets(Ljava/util/List;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mOnImagesLoadedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public final clearAllAssets()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->clearAllAssetsWithNoNotification()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected clearAllAssetsWithNoNotification()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAsset(I)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "position"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 195
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    return-object v0
.end method

.method public getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "position"
    .parameter "usage"

    .prologue
    .line 533
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 535
    .local v0, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;
    .locals 3
    .parameter "position"
    .parameter "usage"
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 548
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-nez v0, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v2

    .line 559
    :goto_0
    return-object v2

    .line 552
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/AssetItemAdapter;->loadBitmaps(ILcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 555
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/vending/model/Asset;->getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v1

    .line 559
    .local v1, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, p3}, Lcom/android/vending/AssetItemAdapter;->getLoadingImages(Landroid/content/Context;Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getNumAssets()I

    move-result v0

    iget v1, p0, Lcom/android/vending/AssetItemAdapter;->mEmulateEmptyItems:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public getNumAssets()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v1

    .line 315
    .local v1, asset:Lcom/android/vending/model/Asset;
    move-object v4, p2

    .line 316
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 317
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v5}, Lcom/android/vending/AssetItemAdapter$ViewType;->getResourceLayoutId()I

    move-result v5

    iget-object v6, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, p3}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 320
    :cond_0
    const v5, 0x7f08001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 321
    .local v3, imageView:Landroid/widget/ImageView;
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 322
    .local v0, appImageUsage:Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 323
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    sget-object v5, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    iget-object v6, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v6}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 342
    :cond_1
    invoke-virtual {p0, v4, v1, p3}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetListView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)V

    .line 345
    :goto_0
    :pswitch_0
    return-object v4

    .line 327
    :pswitch_1
    iput-object v4, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    .line 328
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter;->mSnippetView:Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lcom/android/vending/AssetItemAdapter;->initializeSnippetView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    goto :goto_0

    .line 335
    :pswitch_2
    invoke-direct {p0, v4, v1, p3}, Lcom/android/vending/AssetItemAdapter;->initializeDownloadingView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected initializeSnippetListView(Landroid/view/View;Lcom/android/vending/model/Asset;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "view"
    .parameter "asset"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 373
    const v5, 0x7f08001b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 374
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v5, 0x7f08004c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 377
    .local v0, authorTextView:Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const v5, 0x7f08001d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 380
    .restart local v4       #textView:Landroid/widget/TextView;
    invoke-static {p2, v4, v9}, Lcom/android/vending/AssetItemAdapter;->setPriceOrState(Lcom/android/vending/model/Asset;Landroid/widget/TextView;Z)V

    .line 382
    const v5, 0x7f08004a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, snippetContainer:Landroid/view/View;
    iget-object v5, p0, Lcom/android/vending/AssetItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 386
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getPriceMicros()J

    move-result-wide v5

    const-wide/32 v7, 0x7a120

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 387
    const v5, 0x7f090027

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 393
    :goto_0
    const v5, 0x7f08001c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 394
    .local v3, starRatingView:Landroid/widget/RatingBar;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v5

    if-lez v5, :cond_1

    .line 395
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/RatingBar;->setRating(F)V

    .line 396
    invoke-virtual {v3, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 401
    :goto_1
    invoke-static {v2, p3, v9}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    .line 402
    return-void

    .line 390
    .end local v3           #starRatingView:Landroid/widget/RatingBar;
    :cond_0
    const v5, 0x106000d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 398
    .restart local v3       #starRatingView:Landroid/widget/RatingBar;
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected innerAddAllAssets(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/vending/AssetItemAdapter;->mAdapterPopulated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmapsForAsset(ILjava/util/List;)V
    .locals 15
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p2, usages:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset$AppImageUsage;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/AssetItemAdapter;->getAssetAtPosition(I)Lcom/android/vending/model/Asset;

    move-result-object v12

    .line 760
    .local v12, asset:Lcom/android/vending/model/Asset;
    if-nez v12, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v4, requestedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v5, requestedParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    const/4 v14, 0x0

    .line 766
    .local v14, numRequestedImages:I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/Asset$AppImageUsage;

    .line 767
    .local v2, usage:Lcom/android/vending/model/Asset$AppImageUsage;
    invoke-direct {p0, v2}, Lcom/android/vending/AssetItemAdapter;->isScreenshotUsage(Lcom/android/vending/model/Asset$AppImageUsage;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 768
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 769
    invoke-virtual {v12, v2, v3}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move/from16 v1, p1

    .line 770
    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    .line 771
    add-int/lit8 v14, v14, 0x1

    .line 768
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 774
    .end local v3           #i:I
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {v12, v2, v0}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    const/4 v9, -0x1

    move-object v6, p0

    move/from16 v7, p1

    move-object v8, v2

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/vending/AssetItemAdapter;->addImageRequest(ILcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;Ljava/util/List;)Z

    .line 777
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 781
    .end local v2           #usage:Lcom/android/vending/model/Asset$AppImageUsage;
    :cond_5
    if-lez v14, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAsynchRunner:Lcom/android/vending/AsynchRequestRunner;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$ImagesRequest;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/vending/AssetItemAdapter$ImagesRequest;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    goto :goto_0
.end method

.method public notifyImagesLoadError(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, imageRequestParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetItemAdapter$4;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    :cond_0
    return-void
.end method

.method public notifyImagesLoaded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, imageRequestParameters:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;>;"
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/AssetItemAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetItemAdapter$3;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    :cond_0
    return-void
.end method

.method public onGetAssetsResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 209
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    .local p2, correctedAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    new-instance v0, Lcom/android/vending/AssetItemAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/AssetItemAdapter$2;-><init>(Lcom/android/vending/AssetItemAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetItemAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public reloadLocalAssetInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/vending/AssetItemAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mAssets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    invoke-direct {p0, v0}, Lcom/android/vending/AssetItemAdapter;->refreshSnippetView(Lcom/android/vending/model/Asset;)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/AssetItemAdapter;->notifyDataSetChanged()V

    .line 266
    :cond_2
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v0, "Unable to run action because there is no UI thread handler."

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/vending/AssetItemAdapter;->mViewType:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 200
    return-void
.end method
