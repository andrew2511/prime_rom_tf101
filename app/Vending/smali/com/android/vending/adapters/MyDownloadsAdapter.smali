.class public final Lcom/android/vending/adapters/MyDownloadsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;
.implements Lcom/android/vending/model/LocalAssetCache$AssetStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;,
        Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    }
.end annotation


# static fields
.field private static final sAssetAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private final mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/vending/adapters/AggregatedAdapter",
            "<",
            "Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mDownloadingSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

.field protected mHandler:Landroid/os/Handler;

.field private final mInstalledSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListView:Landroid/widget/ListView;

.field private final mOwnedSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mUpdatesSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

.field private final mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$2;

    invoke-direct {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$2;-><init>()V

    sput-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter;->sAssetAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    .line 181
    iput-object p2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mHandler:Landroid/os/Handler;

    .line 182
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 183
    new-instance v1, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    invoke-direct {v1, p1}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    .line 185
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    const v2, 0x7f07016a

    sget-object v3, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;ILcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 187
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    const v2, 0x7f07016b

    sget-object v3, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->UPDATE_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;ILcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 189
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    const v2, 0x7f07016c

    sget-object v3, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->INSTALL_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;ILcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 191
    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    const v2, 0x7f07016d

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;ILcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 193
    new-instance v1, Lcom/android/vending/adapters/AggregatedAdapter;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/android/vending/adapters/AggregatedAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    .local v0, rsrc:Landroid/content/res/Resources;
    sget-object v1, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 200
    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    sput-object p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 203
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/vending/adapters/MyDownloadsAdapter;->sAssetAbcSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/adapters/MyDownloadsAdapter;Lcom/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssetView(Lcom/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/adapters/MyDownloadsAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/adapters/MyDownloadsAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    return-object v0
.end method

.method private getAssetView(Lcom/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "asset"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 291
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v1

    .line 294
    .local v1, isRunning:Z
    if-nez p2, :cond_0

    .line 295
    if-eqz v1, :cond_5

    const v5, 0x7f040039

    move v2, v5

    .line 297
    .local v2, layoutId:I
    :goto_0
    iget-object v5, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 300
    .end local v2           #layoutId:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;

    .line 302
    .local v0, holder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    if-nez v0, :cond_6

    .line 303
    new-instance v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    invoke-direct {v0, p2, v1}, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;-><init>(Landroid/view/View;Z)V

    .line 309
    .restart local v0       #holder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->setAssetDisplay(Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;Lcom/android/vending/model/Asset;)V

    .line 312
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 313
    iget-object v5, v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    const v6, 0x7f0700cf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 316
    :cond_2
    iget-boolean v5, v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    if-eqz v5, :cond_4

    .line 317
    invoke-static {p1}, Lcom/android/vending/model/DownloadProgressManager;->getCachedProgress(Lcom/android/vending/model/Asset;)Lcom/android/vending/model/DownloadProgress;

    move-result-object v4

    .line 318
    .local v4, progress:Lcom/android/vending/model/DownloadProgress;
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v3

    .line 319
    .local v3, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v3, :cond_3

    .line 322
    const-string v5, "Could not find LocalAsset for %s (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_3
    iget-object v5, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    invoke-virtual {v5, p2, p1}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/Asset;)V

    .line 327
    if-eqz v4, :cond_4

    .line 328
    iget-object v5, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mViewUpdater:Lcom/android/vending/adapters/DownloadingAssetViewUpdater;

    invoke-virtual {v5, p2, v4}, Lcom/android/vending/adapters/DownloadingAssetViewUpdater;->updateView(Landroid/view/View;Lcom/android/vending/model/DownloadProgress;)V

    .end local v3           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v4           #progress:Lcom/android/vending/model/DownloadProgress;
    :cond_4
    move-object v5, p2

    .line 332
    :goto_1
    return-object v5

    .line 295
    .end local v0           #holder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_5
    const v5, 0x7f040018

    move v2, v5

    goto :goto_0

    .line 304
    .restart local v0       #holder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    :cond_6
    iget-boolean v5, v0, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isRunning:Z

    if-eq v5, v1, :cond_1

    .line 306
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p3}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getAssetView(Lcom/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1
.end method

.method private getBitmapForAsset(Lcom/android/vending/model/Asset;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .parameter "asset"

    .prologue
    const/4 v6, 0x0

    .line 392
    if-nez p1, :cond_0

    .line 393
    sget-object v2, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 405
    .end local p0
    :goto_0
    return-object v2

    .line 396
    .restart local p0
    :cond_0
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v2, v6}, Lcom/android/vending/model/Asset;->areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v2, v6}, Lcom/android/vending/model/Asset;->setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, loading:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    sget-object v2, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v2, v6, v1}, Lcom/android/vending/model/Asset;->setLoadingBitmaps(Lcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;)V

    .line 401
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v2

    new-instance v3, Lcom/android/vending/adapters/ImageRequest;

    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-direct {v3, p1, v4, v5, p0}, Lcom/android/vending/adapters/ImageRequest;-><init>(Lcom/android/vending/model/Asset;Landroid/os/Handler;Lcom/android/vending/model/Asset$AppImageUsage;Lcom/android/vending/adapters/ImageRequest$OnImagesLoadedListener;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 404
    .end local v1           #loading:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_1
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {p1, v2, v6}, Lcom/android/vending/model/Asset;->getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, drawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, p0

    goto :goto_0

    .restart local p0
    :cond_2
    sget-object v2, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "sectionAdapter"

    .prologue
    .line 337
    if-nez p2, :cond_0

    .line 338
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040047

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 342
    :cond_0
    const v6, 0x7f0800f2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 343
    .local v5, titleView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    invoke-static/range {p4 .. p4}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->access$400(Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v6, 0x7f0800f4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 347
    .local v0, bulkActionButton:Landroid/widget/Button;
    invoke-static/range {p4 .. p4}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->access$500(Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;)Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    move-result-object v4

    .line 348
    .local v4, sectionAction:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p0}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->isVisible(Lcom/android/vending/adapters/MyDownloadsAdapter;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move v3, v6

    .line 349
    .local v3, isActionVisible:Z
    :goto_0
    if-eqz v3, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 350
    if-eqz v3, :cond_1

    .line 351
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->getLabelId()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    new-instance v6, Lcom/android/vending/adapters/MyDownloadsAdapter$4;

    invoke-direct {v6, p0, v4}, Lcom/android/vending/adapters/MyDownloadsAdapter$4;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 359
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_5

    .line 360
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 368
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_2
    const v6, 0x7f0800f5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, countView:Landroid/widget/TextView;
    if-eqz v3, :cond_6

    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    if-nez v3, :cond_2

    .line 371
    invoke-virtual/range {p4 .. p4}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_2
    const v6, 0x7f0800f3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_7

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-object p2

    .line 348
    .end local v1           #countView:Landroid/widget/TextView;
    .end local v3           #isActionVisible:Z
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 349
    .restart local v3       #isActionVisible:Z
    :cond_4
    const/16 v6, 0x8

    goto :goto_1

    .line 362
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 369
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v1       #countView:Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 374
    :cond_7
    const/16 v7, 0x8

    goto :goto_4
.end method

.method private getUpdates(Z)Ljava/util/List;
    .locals 4
    .parameter "containsDangerousNewPermissions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v2, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 508
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 515
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_2
    return-object v2
.end method

.method private postNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/vending/adapters/MyDownloadsAdapter$5;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    return-void
.end method

.method private putAssetsInBuckets()V
    .locals 7

    .prologue
    .line 206
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v6}, Lcom/android/vending/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, [Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .line 207
    .local v1, adapters:[Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    move-object v2, v1

    .local v2, arr$:[Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 208
    .local v0, adapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->clearAssets()V

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v0           #adapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    :cond_0
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/Asset;

    .line 213
    .local v3, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    invoke-virtual {v6, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/android/vending/model/Asset;)V

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    invoke-virtual {v6, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/android/vending/model/Asset;)V

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->isUninstalling()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    :cond_3
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mInstalledSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    invoke-virtual {v6, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/android/vending/model/Asset;)V

    goto :goto_1

    .line 220
    :cond_4
    iget-object v6, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mOwnedSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    invoke-virtual {v6, v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->addAsset(Lcom/android/vending/model/Asset;)V

    goto :goto_1

    .line 223
    .end local v3           #asset:Lcom/android/vending/model/Asset;
    :cond_5
    move-object v2, v1

    array-length v5, v2

    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v0, v2, v4

    .line 225
    .restart local v0       #adapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->sortAssets()V

    .line 228
    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->notifyDataSetChanged()V

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 230
    .end local v0           #adapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    :cond_6
    return-void
.end method

.method private setAssetDisplay(Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter "holder"
    .parameter "asset"

    .prologue
    .line 380
    iget-object v1, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    iget-object v1, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-direct {p0, p2}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getBitmapForAsset(Lcom/android/vending/model/Asset;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 387
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 388
    sget-object v1, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p1, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isImageLoaded:Z

    .line 389
    return-void

    .line 388
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAssets(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/adapters/MyDownloadsAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vending/adapters/MyDownloadsAdapter$3;-><init>(Lcom/android/vending/adapters/MyDownloadsAdapter;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public containsAsset(Ljava/lang/String;)Z
    .locals 3
    .parameter "serverId"

    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

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

    .line 473
    .local v0, a:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const/4 v2, 0x1

    .line 477
    .end local v0           #a:Lcom/android/vending/model/Asset;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAssets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getChangedUpdates()Ljava/util/List;
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
    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getUpdates(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/android/vending/adapters/AggregatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 256
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getNotInstalled()Ljava/util/List;
    .locals 4
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
    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    iget-object v3, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 527
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isDownloadingOrInstalling()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isFree()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->isOwnedByUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 533
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_2
    return-object v2
.end method

.method public getNumUpdates()I
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    invoke-virtual {v0}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTopAsset()Lcom/android/vending/model/Asset;
    .locals 5

    .prologue
    .line 549
    iget-object v4, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v4}, Lcom/android/vending/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;

    .local v0, arr$:[Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 550
    .local v3, sectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-virtual {v3}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset;

    move-object v4, p0

    .line 556
    .end local v3           #sectionAdapter:Lcom/android/vending/adapters/MyDownloadsAdapter$SectionAdapter;
    :goto_1
    return-object v4

    .restart local p0
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getUnchangedUpdates()Ljava/util/List;
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
    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getUpdates(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 246
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    .line 248
    iget-object v1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAggregatedAdapter:Lcom/android/vending/adapters/AggregatedAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/vending/adapters/AggregatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 236
    iget-object v2, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 237
    .local v0, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->snapshotLocalState()V

    goto :goto_0

    .line 239
    .end local v0           #asset:Lcom/android/vending/model/Asset;
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->putAssetsInBuckets()V

    .line 240
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method public onAssetStateChanged(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "serverAssetId"
    .parameter "newState"

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->postNotifyDataSetChanged()V

    .line 569
    return-void
.end method

.method public onImageLoadFailure(Lcom/android/vending/model/Asset;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "asset"
    .parameter "t"

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->notifyDataSetChanged()V

    .line 455
    return-void
.end method

.method public onImageLoadSuccess(Lcom/android/vending/model/Asset;)V
    .locals 15
    .parameter "asset"

    .prologue
    const/4 v14, 0x1

    .line 411
    invoke-virtual {p0}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getCount()I

    move-result v7

    .line 412
    .local v7, itemCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 413
    invoke-virtual {p0, v4}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 414
    .local v6, item:Ljava/lang/Object;
    instance-of v11, v6, Lcom/android/vending/model/Asset;

    if-nez v11, :cond_1

    .line 412
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 418
    :cond_1
    move-object v0, v6

    check-cast v0, Lcom/android/vending/model/Asset;

    move-object v2, v0

    .line 419
    .local v2, currAsset:Lcom/android/vending/model/Asset;
    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 424
    iget-object v11, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 425
    .local v3, firstVisibleRow:I
    iget-object v11, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 426
    .local v10, visibleChildCount:I
    if-lt v4, v3, :cond_2

    add-int v11, v3, v10

    if-lt v4, v11, :cond_3

    .line 451
    .end local v2           #currAsset:Lcom/android/vending/model/Asset;
    .end local v3           #firstVisibleRow:I
    .end local v6           #item:Ljava/lang/Object;
    .end local v10           #visibleChildCount:I
    :cond_2
    :goto_1
    return-void

    .line 432
    .restart local v2       #currAsset:Lcom/android/vending/model/Asset;
    .restart local v3       #firstVisibleRow:I
    .restart local v6       #item:Ljava/lang/Object;
    .restart local v10       #visibleChildCount:I
    :cond_3
    iget-object v11, p0, Lcom/android/vending/adapters/MyDownloadsAdapter;->mListView:Landroid/widget/ListView;

    sub-int v12, v4, v3

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, assetRowView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;

    .line 434
    .local v9, viewHolder:Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;
    if-eqz v9, :cond_2

    iget-object v11, v9, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v11, :cond_2

    .line 435
    invoke-direct/range {p0 .. p1}, Lcom/android/vending/adapters/MyDownloadsAdapter;->getBitmapForAsset(Lcom/android/vending/model/Asset;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 436
    .local v5, image:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v11, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v5, v11, :cond_4

    iget-boolean v11, v9, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->isImageLoaded:Z

    if-eqz v11, :cond_5

    .line 437
    :cond_4
    iget-object v11, v9, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 441
    :cond_5
    new-instance v8, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/vending/adapters/MyDownloadsAdapter;->sLoadingImageBitmap:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v13, v11, v12

    aput-object v5, v11, v14

    invoke-direct {v8, v11}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 444
    .local v8, newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 445
    iget-object v11, v9, Lcom/android/vending/adapters/MyDownloadsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    const/16 v11, 0x64

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1
.end method
