.class public Lcom/google/android/finsky/fragments/PromoViewBinder;
.super Ljava/lang/Object;
.source "PromoViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/ArrayObserver;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/google/android/finsky/api/model/DfeList;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mPromoStripManager:Lcom/google/android/finsky/layout/PromoStripManager;

.field private mStrip:Lcom/google/android/finsky/layout/PromoStrip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/PromoViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private hasPromos()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setupStrip(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 90
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/PromoStrip;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    new-instance v1, Lcom/google/android/finsky/fragments/PromoViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/fragments/PromoViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/PromoViewBinder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->setTapListener(Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;)V
    .locals 12
    .parameter "promoView"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PromoViewBinder;->hasPromos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/google/android/finsky/layout/PromoStripManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/layout/PromoStripManager;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mPromoStripManager:Lcom/google/android/finsky/layout/PromoStripManager;

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/PromoViewBinder;->setupStrip(Landroid/view/ViewGroup;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PromoAdapter;->destroy()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 74
    .local v11, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/google/android/finsky/adapters/PromoAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    const/high16 v4, 0x7f08

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f080003

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f080004

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v8, 0xa

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/PromoAdapter;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeList;IIIILcom/google/android/finsky/adapters/ArrayObserver;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->setAdapter(Lcom/google/android/finsky/adapters/PromoAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->resetStrip(I)V

    .line 82
    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 83
    .local v10, promoShadowView:Landroid/widget/ImageView;
    new-instance v9, Lcom/google/android/finsky/model/Bucket;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/DfeList;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V

    .line 84
    .local v9, firstBucket:Lcom/google/android/finsky/model/Bucket;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/google/android/finsky/model/Bucket;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusMetadata;->getPromoShadowResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mPromoStripManager:Lcom/google/android/finsky/layout/PromoStripManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/PromoStripManager;->showWhenReady()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 47
    iput-object p3, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PromoAdapter;->destroy()V

    .line 108
    iput-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    .line 110
    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    .line 111
    iput-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mPromoStripManager:Lcom/google/android/finsky/layout/PromoStripManager;

    .line 112
    return-void
.end method

.method public onItemChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mStrip:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getFlyover(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getPromo(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/layout/PromoStrip;->setItem(ILcom/google/android/finsky/api/model/Document;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mPromoStripManager:Lcom/google/android/finsky/layout/PromoStripManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/PromoStripManager;->showWhenReady()V

    .line 123
    :cond_0
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 0
    .parameter "promoList"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PromoViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeList;

    .line 53
    return-void
.end method
