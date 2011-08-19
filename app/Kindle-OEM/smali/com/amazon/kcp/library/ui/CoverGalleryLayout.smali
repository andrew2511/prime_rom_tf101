.class public Lcom/amazon/kcp/library/ui/CoverGalleryLayout;
.super Landroid/widget/FrameLayout;
.source "CoverGalleryLayout.java"


# instance fields
.field private authorView:Landroid/widget/TextView;

.field private books:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

.field private final downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadBytesView:Landroid/widget/TextView;

.field private downloadPercentView:Landroid/widget/TextView;

.field private final downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

.field private downloadProgressState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private downloadProgressView:Landroid/widget/ProgressBar;

.field private downloadStatusView:Landroid/widget/TextView;

.field private infoContainer:Landroid/view/View;

.field private final itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    new-instance v0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$2;-><init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 458
    new-instance v0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$3;-><init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 471
    new-instance v0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$4;-><init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->overlayCloudImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->updateUIForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setDownloadProgressUI(Lcom/amazon/kcp/library/models/IListableBook;)V

    return-void
.end method

.method private checkDownloadCallbacks(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eq p1, v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->unregister(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 457
    :cond_1
    return-void
.end method

.method private context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->authorView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->authorView:Landroid/widget/TextView;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->authorView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCoverGalleryView()Lcom/amazon/kcp/library/ui/CoverGallery;
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    if-nez v1, :cond_0

    .line 248
    const v1, 0x7f0c0073

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ui/CoverGallery;

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    .line 249
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 250
    .local v0, spacing:I
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/ui/CoverGallery;->setSpacing(I)V

    .line 251
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/ui/CoverGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 254
    .end local v0           #spacing:I
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    return-object v1
.end method

.method private getCoverHeight()I
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCoverWidth()I
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDownloadBarState()Lcom/amazon/android/util/DownloadProgressBarState;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressState:Lcom/amazon/android/util/DownloadProgressBarState;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressState:Lcom/amazon/android/util/DownloadProgressBarState;

    return-object v0
.end method

.method private getDownloadBytesView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBytesView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBytesView:Landroid/widget/TextView;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBytesView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDownloadPercentView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadPercentView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadPercentView:Landroid/widget/TextView;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadPercentView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDownloadProgressView()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressView:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressView:Landroid/widget/ProgressBar;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDownloadStatusView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadStatusView:Landroid/widget/TextView;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getInfoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->infoContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 239
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->infoContainer:Landroid/view/View;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->infoContainer:Landroid/view/View;

    return-object v0
.end method

.method private getTitleView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->titleView:Landroid/widget/TextView;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private overlayCloudImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "image"

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 123
    .local v2, cloud:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 124
    .local v4, rightPad:I
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 126
    .local v0, bottomPad:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 127
    .local v3, result:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    return-object v3
.end method

.method private setDownloadProgress(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 4
    .parameter

    .prologue
    .line 327
    const/4 v2, 0x4

    .line 329
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->checkDownloadCallbacks(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 331
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eq p1, v1, :cond_0

    .line 337
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 340
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v1, v3}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v1, v3}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 346
    :cond_0
    check-cast p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setDownloadProgressUIState()V

    .line 350
    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadProgressView()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 355
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadStatusView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadPercentView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadBytesView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private setDownloadProgressUI(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 4
    .parameter

    .prologue
    .line 362
    const/4 v2, 0x4

    .line 364
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->checkDownloadCallbacks(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 366
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eq p1, v1, :cond_0

    .line 372
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    iput-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 375
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadBookChangedCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v1, v3}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->downloadProgressChangeCallback:Lcom/amazon/foundation/internal/IDownloadBookItemCallback;

    invoke-interface {v1, v3}, Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;->register(Lcom/amazon/foundation/internal/IDownloadBookItemCallback;)Z

    .line 381
    :cond_0
    check-cast p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setDownloadProgressUIState()V

    .line 385
    const/4 v1, 0x0

    .line 389
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadProgressView()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 390
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadStatusView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadPercentView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadBytesView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private setDownloadProgressUIState()V
    .locals 6

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadBarState()Lcom/amazon/android/util/DownloadProgressBarState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadProgressView()Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getMaxDownloadProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getContentDownloadProgressPercent(Lcom/amazon/kcp/library/models/IDownloadBookItem;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 405
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadPercentView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0062

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadBytesView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->generateByteDownloadStatusString(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 427
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadStatusView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_2
    return-void

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadPercentView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadBytesView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->previousDownloadItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadStatusView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 435
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getDownloadStatusView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateUIForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 3
    .parameter "book"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, author:Ljava/lang/String;
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getAuthorView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setDownloadProgress(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 206
    return-void

    .line 203
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public getBookAdapterView()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ArrayAdapter",
            "<+",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverGalleryView()Lcom/amazon/kcp/library/ui/CoverGallery;

    move-result-object v0

    .line 195
    .local v0, coverGalleryView:Landroid/view/View;
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0           #coverGalleryView:Landroid/view/View;
    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 183
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/CoverGallery;->setVisibility(I)V

    .line 185
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public makeCoverGalleryBookView(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 80
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, iv:Landroid/widget/ImageView;
    instance-of v0, p2, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .line 83
    .local v0, addCloud:Z
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverHeight()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, p2, v4, v5, v6}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;IIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v1

    .line 85
    .local v1, cover:Lcom/amazon/kcp/cover/UpdatableCover;
    new-instance v3, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout$1;-><init>(Lcom/amazon/kcp/library/ui/CoverGalleryLayout;ZLandroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 104
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    return-object v2
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 229
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 232
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 233
    return-void
.end method

.method public setBookList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, bookList:Ljava/util/List;,"Ljava/util/List<+Lcom/amazon/kcp/library/models/IListableBook;>;"
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    .line 69
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->coverGalleryView:Lcom/amazon/kcp/library/ui/CoverGallery;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/CoverGallery;->setVisibility(I)V

    .line 175
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public updateUI()V
    .locals 5

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getCoverGalleryView()Lcom/amazon/kcp/library/ui/CoverGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/ui/CoverGallery;->getSelectedItemPosition()I

    move-result v1

    .line 142
    .local v1, index:I
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 144
    .local v2, listSize:I
    if-nez v2, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getInfoContainer()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 163
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->books:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 164
    .local v0, currentBook:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->updateUIForBookItem(Lcom/amazon/kcp/library/models/IListableBook;)V

    goto :goto_0

    .line 158
    .end local v0           #currentBook:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_2
    if-gez v1, :cond_1

    .line 160
    const/4 v1, 0x0

    goto :goto_1
.end method
