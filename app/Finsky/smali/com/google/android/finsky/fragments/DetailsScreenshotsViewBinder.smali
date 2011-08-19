.class public Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsScreenshotsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

.field private mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private mLoadRequestCount:I

.field private mMaxImageHeight:I

.field private mNumImagesFailed:I

.field private mPreviewImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotsRightPadding:I

.field private mScreenshotsSpacing:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 34
    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    .line 40
    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLoadRequestCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLoadRequestCount:I

    return v0
.end method

.method static synthetic access$104(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;)Lcom/google/android/finsky/adapters/ImageStripAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    return-object v0
.end method

.method private loadImages()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v7, 0x1

    .line 101
    .local v7, currIndex:I
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLoadRequestCount:I

    add-int/lit8 v11, v0, 0x1

    iput v11, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLoadRequestCount:I

    .line 102
    .local v11, loadId:I
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 103
    .local v12, numImagesToLoad:I
    iput v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mNumImagesFailed:I

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 106
    .local v9, img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 107
    move v10, v7

    .line 109
    .local v10, index:I
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;

    invoke-direct {v3, p0, v11, v12, v10}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;III)V

    iget v5, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 137
    .local v6, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v10, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 143
    goto :goto_0

    .line 144
    .end local v6           #bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v9           #img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v10           #index:I
    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .parameter "view"
    .parameter "doc"

    .prologue
    const v5, 0x7f090032

    .line 53
    const v1, 0x7f090022

    const v2, 0x7f0b0059

    invoke-super {p0, p1, p2, v1, v2}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 55
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    .line 56
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_1
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HorizontalStrip;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    .line 65
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->setBackgroundColor(I)V

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsSpacing:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->setLayoutMargin(I)V

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    .line 74
    :cond_2
    new-instance v1, Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mPreviewImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsRightPadding:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 85
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mLayout:Landroid/view/View;

    invoke-direct {v0, v1, v5, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    .line 86
    .local v0, layoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->setLayoutSwitcher(Lcom/google/android/finsky/layout/LayoutSwitcher;)V

    .line 87
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .parameter "context"
    .parameter "bitmapLoader"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1, v1, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 45
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 46
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsSpacing:I

    .line 48
    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mScreenshotsRightPadding:I

    .line 49
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->mMaxImageHeight:I

    .line 50
    return-void
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsScreenshotsViewBinder;->loadImages()V

    .line 154
    return-void
.end method
