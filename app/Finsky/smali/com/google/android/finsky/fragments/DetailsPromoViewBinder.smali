.class public Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsPromoViewBinder.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mPromoHeight:I

.field private mPromoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .parameter "view"
    .parameter "doc"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-super {p0, p1, p2, v0, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f090029

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 43
    .local v2, imageView:Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 44
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;

    const/4 v4, 0x1

    const-wide/16 v5, 0x12c

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/finsky/layout/MinTimeThumbnailListener;-><init>(Landroid/widget/ImageView;ZJ)V

    iget v4, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mPromoWidth:I

    iget v5, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mPromoHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .parameter "context"
    .parameter "bitmapLoader"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-super {p0, p1, v1, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mPromoWidth:I

    .line 35
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/fragments/DetailsPromoViewBinder;->mPromoHeight:I

    .line 36
    return-void
.end method
