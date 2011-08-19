.class public Lcom/layar/ui/BriefInfoView;
.super Landroid/widget/LinearLayout;
.source "BriefInfoView.java"

# interfaces
.implements Lcom/layar/ui/ActionsMenu$ActionsMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/BriefInfoView$GetLayerTask;,
        Lcom/layar/ui/BriefInfoView$PoiImageLoader;
    }
.end annotation


# static fields
.field private static final MIN_DISTANCE_TO_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final BIW_ROUNDS:I

.field private POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

.field private final POI_IMAGE_HEIGHT:I

.field private final POI_IMAGE_WIDTH:I

.field private currentDistance:I

.field private currentPOI:Lcom/layar/data/POI;

.field private dialogWaiting:Lcom/layar/ui/SmartDialog;

.field private distanceText:Landroid/widget/TextView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isLocked:Z

.field private final lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

.field private mAttribution:Landroid/widget/TextView;

.field private mCurrentLayer:Lcom/layar/data/layer/Layer20;

.field private mImageCache:Lcom/layar/data/ImageCache;

.field private mLayerHandler:Lcom/layar/data/layer/LayerHandler;

.field private mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

.field private mLayerName:Ljava/lang/String;

.field private mLine2:Landroid/widget/TextView;

.field private mLine3:Landroid/widget/TextView;

.field private mLine4:Landroid/widget/TextView;

.field private mPOIsContainer:Lcom/layar/core/POIsContainer;

.field private mPoiBitmap:Landroid/graphics/Bitmap;

.field private mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

.field private mStyle:Lcom/layar/ui/LayerStyle;

.field private final mType:I

.field private poiImage:Landroid/widget/ImageView;

.field private viewActions:Lcom/layar/ui/ActionsMenu;

.field private viewBottom:Landroid/view/View;

.field private viewClose:Landroid/view/View;

.field private viewLayerLogo:Landroid/widget/ImageView;

.field private viewTitle:Landroid/widget/TextView;

.field private viewTop:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/BriefInfoView;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/layar/ui/BriefInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "type"

    .prologue
    const/4 v3, -0x2

    const/16 v9, -0x64

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v8, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    .line 60
    iput-object v8, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    .line 61
    iput-boolean v6, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    .line 69
    iput v9, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    iput p3, p0, Lcom/layar/ui/BriefInfoView;->mType:I

    .line 95
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/layar/ui/BriefInfoView;->POI_IMAGE_WIDTH:I

    .line 96
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/layar/ui/BriefInfoView;->POI_IMAGE_HEIGHT:I

    .line 97
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/layar/ui/BriefInfoView;->BIW_ROUNDS:I

    .line 99
    const/high16 v2, 0x4040

    sget v3, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 100
    .local v1, margin:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x3

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    neg-int v3, v1

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    invoke-virtual {p0, v6}, Lcom/layar/ui/BriefInfoView;->setOrientation(I)V

    .line 105
    iput-object v8, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    .line 106
    iput v9, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    .line 108
    invoke-static {p1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 109
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mImageCache:Lcom/layar/data/ImageCache;

    .line 112
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000d

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLine2:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f070035

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLine3:Landroid/widget/TextView;

    .line 118
    const v2, 0x7f070036

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLine4:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mAttribution:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->poiImage:Landroid/widget/ImageView;

    .line 121
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewTop:Landroid/view/View;

    .line 122
    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewBottom:Landroid/view/View;

    .line 123
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewLayerLogo:Landroid/widget/ImageView;

    .line 124
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->distanceText:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/layar/ui/ActionsMenu;

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewActions:Lcom/layar/ui/ActionsMenu;

    .line 126
    const v2, 0x7f07003a

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewClose:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewClose:Landroid/view/View;

    new-instance v3, Lcom/layar/ui/BriefInfoView$1;

    invoke-direct {v3, p0}, Lcom/layar/ui/BriefInfoView$1;-><init>(Lcom/layar/ui/BriefInfoView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0, v6}, Lcom/layar/ui/BriefInfoView;->setClickable(Z)V

    .line 141
    new-instance v2, Lcom/layar/ui/BriefInfoView$2;

    invoke-direct {v2, p0}, Lcom/layar/ui/BriefInfoView$2;-><init>(Lcom/layar/ui/BriefInfoView;)V

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget v2, p0, Lcom/layar/ui/BriefInfoView;->mType:I

    if-ne v2, v6, :cond_1

    .line 163
    invoke-static {p1}, Lcom/layar/ui/StreamStyle;->getStreamStyle(Landroid/content/Context;)Lcom/layar/ui/LayerStyle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->setStyle(Lcom/layar/ui/LayerStyle;)V

    .line 165
    :cond_1
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/layar/ui/BriefInfoView$3;

    invoke-direct {v3, p0}, Lcom/layar/ui/BriefInfoView$3;-><init>(Lcom/layar/ui/BriefInfoView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->gestureDetector:Landroid/view/GestureDetector;

    .line 197
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/BriefInfoView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/layar/ui/BriefInfoView;->setPoiImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/ui/BriefInfoView;Lcom/layar/ui/BriefInfoView$PoiImageLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/ui/BriefInfoView;)Lcom/layar/ui/SmartDialog;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->dialogWaiting:Lcom/layar/ui/SmartDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/ui/BriefInfoView;Lcom/layar/ui/SmartDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->dialogWaiting:Lcom/layar/ui/SmartDialog;

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/layar/ui/BriefInfoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/ui/BriefInfoView;)Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/layer/Layer20;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/ui/BriefInfoView;)Lcom/layar/core/POIsContainer;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/POI;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/ui/BriefInfoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    return v0
.end method

.method private setPoiImage(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "image"

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    .line 433
    iget-object v6, p0, Lcom/layar/ui/BriefInfoView;->poiImage:Landroid/widget/ImageView;

    .line 435
    const/4 v1, 0x4

    iget v2, p0, Lcom/layar/ui/BriefInfoView;->POI_IMAGE_WIDTH:I

    iget v3, p0, Lcom/layar/ui/BriefInfoView;->POI_IMAGE_HEIGHT:I

    .line 436
    iget-boolean v0, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v5, v0, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    move-object v0, p1

    .line 434
    invoke-static/range {v0 .. v5}, Lcom/layar/data/ImageCache;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 433
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    return-void

    .line 436
    :cond_1
    iget v0, p0, Lcom/layar/ui/BriefInfoView;->BIW_ROUNDS:I

    move v4, v0

    goto :goto_0
.end method


# virtual methods
.method public initLayer(Lcom/layar/data/layer/Layer20;)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    if-nez p1, :cond_0

    .line 281
    :try_start_0
    monitor-exit p0

    .line 300
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    monitor-exit p0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 291
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    .line 292
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    .line 294
    iget v0, p0, Lcom/layar/ui/BriefInfoView;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 295
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mImageCache:Lcom/layar/data/ImageCache;

    .line 296
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    const-string v2, "banner_icon"

    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->viewLayerLogo:Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 295
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 278
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    if-nez v0, :cond_2

    .line 298
    invoke-static {p1}, Lcom/layar/ui/LayerStyle;->fromLayer(Lcom/layar/data/layer/Layer20;)Lcom/layar/ui/LayerStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/BriefInfoView;->setStyle(Lcom/layar/ui/LayerStyle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public initLayer(Ljava/lang/String;)V
    .locals 5
    .parameter "layerName"

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 252
    .local v0, handlerLayer:Lcom/layar/data/layer/Layer20;
    if-eqz p1, :cond_4

    .line 254
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->viewLayerLogo:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iput-object v4, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    .line 260
    iput-object v4, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/data/layer/LayerDB20;->getInstance(Landroid/content/Context;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/layar/data/layer/LayerDB20;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 264
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {p0, v1}, Lcom/layar/ui/BriefInfoView;->initLayer(Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->cancel(Z)Z

    .line 269
    :cond_3
    new-instance v2, Lcom/layar/ui/BriefInfoView$GetLayerTask;

    invoke-direct {v2, p0, p1}, Lcom/layar/ui/BriefInfoView$GetLayerTask;-><init>(Lcom/layar/ui/BriefInfoView;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    .line 270
    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 272
    .end local v1           #layer:Lcom/layar/data/layer/Layer20;
    :cond_4
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    if-eq v0, v2, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/layar/ui/BriefInfoView;->initLayer(Lcom/layar/data/layer/Layer20;)V

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    return v0
.end method

.method public onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "action"
    .parameter "layer"

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_2

    .line 231
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/layar/data/PoiAction;->closeBiw:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->clearFocusLock()V

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/ui/BriefInfoView;->setLock(Z)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    invoke-interface {v0, p1, v1}, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    .line 229
    :cond_1
    :goto_0
    monitor-exit p0

    .line 243
    return-void

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLayerLoader:Lcom/layar/ui/BriefInfoView$GetLayerTask;

    invoke-virtual {v0, p1}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->setAction(Lcom/layar/data/PoiAction;)V

    .line 238
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder;

    .line 239
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090105

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 238
    iput-object v0, p0, Lcom/layar/ui/BriefInfoView;->dialogWaiting:Lcom/layar/ui/SmartDialog;

    .line 240
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->dialogWaiting:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 202
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    .line 203
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 215
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    .line 224
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewActions:Lcom/layar/ui/ActionsMenu;

    invoke-virtual {v0, p0}, Lcom/layar/ui/ActionsMenu;->setListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 225
    return-void
.end method

.method public setLock(Z)V
    .locals 6
    .parameter "lock"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 406
    iput-boolean p1, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    .line 408
    if-eqz p1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 410
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewClose:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewActions:Lcom/layar/ui/ActionsMenu;

    .line 412
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    iget v3, p0, Lcom/layar/ui/BriefInfoView;->mType:I

    if-ne v3, v4, :cond_0

    move v3, v4

    .line 411
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/ui/ActionsMenu;->constructMenu(Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Z)V

    .line 413
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 422
    :goto_1
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/layar/ui/BriefInfoView;->setPoiImage(Landroid/graphics/Bitmap;)V

    .line 423
    return-void

    :cond_0
    move v3, v5

    .line 412
    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewBottom:Landroid/view/View;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 416
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 417
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v2, v2, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 416
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 418
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 419
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewClose:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewActions:Lcom/layar/ui/ActionsMenu;

    invoke-virtual {v0}, Lcom/layar/ui/ActionsMenu;->clear()V

    goto :goto_1
.end method

.method public setPOI(Lcom/layar/data/POI;)V
    .locals 8
    .parameter "poi"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 339
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v3}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v1

    .line 340
    .local v1, focus:Lcom/layar/data/BasePOI;
    if-ne v1, p1, :cond_1

    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v3}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 346
    .local v2, inFocus:Z
    :goto_0
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    if-ne v3, v2, :cond_2

    .line 403
    :cond_0
    :goto_1
    return-void

    .end local v2           #inFocus:Z
    :cond_1
    move v2, v7

    .line 340
    goto :goto_0

    .line 349
    .restart local v2       #inFocus:Z
    :cond_2
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    if-eq v3, v4, :cond_3

    .line 350
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->POI_DEFAULT_IMAGE:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiBitmap:Landroid/graphics/Bitmap;

    .line 354
    :cond_3
    if-nez p1, :cond_4

    .line 355
    iput-object v6, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    .line 356
    const/16 v3, -0x64

    iput v3, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    .line 357
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine3:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine4:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mAttribution:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 365
    :cond_4
    iget-object v3, p1, Lcom/layar/data/POI;->layerName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/layar/ui/BriefInfoView;->initLayer(Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    invoke-virtual {v3, p1}, Lcom/layar/data/POI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, diff:I
    iget v3, p1, Lcom/layar/data/POI;->geodistance:I

    iget v4, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    if-le v3, v4, :cond_8

    .line 371
    iget v3, p1, Lcom/layar/data/POI;->geodistance:I

    iget v4, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    sub-int v0, v3, v4

    .line 375
    :goto_2
    const/4 v3, 0x3

    if-ge v0, v3, :cond_5

    .line 376
    iget-boolean v3, p0, Lcom/layar/ui/BriefInfoView;->isLocked:Z

    iget-object v4, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v4}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 380
    .end local v0           #diff:I
    :cond_5
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    .line 381
    iget v3, p1, Lcom/layar/data/POI;->geodistance:I

    iput v3, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    .line 382
    iget-boolean v3, p1, Lcom/layar/data/POI;->showBiwOnClick:Z

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 383
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    iget-object v3, v3, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 384
    iget-object v3, p1, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/layar/ui/BriefInfoView;->mCurrentLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, v3, v4}, Lcom/layar/ui/BriefInfoView;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    .line 385
    :cond_6
    invoke-virtual {p0, v7}, Lcom/layar/ui/BriefInfoView;->setLock(Z)V

    .line 389
    :goto_3
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/layar/data/POI;->title:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4, v5}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine2:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/layar/data/POI;->line2:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4, v5}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine3:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/layar/data/POI;->line3:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4, v5}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mLine4:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/layar/data/POI;->line4:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4, v5}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mAttribution:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/layar/data/POI;->attribution:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4, v5}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->distanceText:Landroid/widget/TextView;

    iget v4, p1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v4}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-direct {p0, v6}, Lcom/layar/ui/BriefInfoView;->setPoiImage(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v3, p1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    if-eqz v3, :cond_7

    .line 399
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    invoke-virtual {v3, v7}, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->cancel(Z)Z

    .line 400
    :cond_7
    new-instance v3, Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    iget-object v4, p1, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/layar/ui/BriefInfoView$PoiImageLoader;-><init>(Lcom/layar/ui/BriefInfoView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    .line 401
    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->mPoiImageLoader:Lcom/layar/ui/BriefInfoView$PoiImageLoader;

    new-array v4, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/layar/ui/BriefInfoView$PoiImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 373
    .restart local v0       #diff:I
    :cond_8
    iget v3, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    iget v4, p1, Lcom/layar/data/POI;->geodistance:I

    sub-int v0, v3, v4

    goto/16 :goto_2

    .line 387
    .end local v0           #diff:I
    :cond_9
    invoke-virtual {p0, v2}, Lcom/layar/ui/BriefInfoView;->setLock(Z)V

    goto :goto_3
.end method

.method public setPOIsContainer(Lcom/layar/core/POIsContainer;)V
    .locals 0
    .parameter "POIsContainer"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    .line 247
    return-void
.end method

.method public setStyle(Lcom/layar/ui/LayerStyle;)V
    .locals 5
    .parameter "style"

    .prologue
    const/4 v4, 0x0

    .line 303
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    .line 305
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->bannerTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mAttribution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->titleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->distanceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v1, v1, Lcom/layar/ui/LayerStyle;->titleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLine4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mAttribution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->lineLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v2, v2, Lcom/layar/ui/LayerStyle;->bannerBackgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 322
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->viewBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView;->mStyle:Lcom/layar/ui/LayerStyle;

    iget v2, v2, Lcom/layar/ui/LayerStyle;->biwBackgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 325
    iput-object v4, p0, Lcom/layar/ui/BriefInfoView;->currentPOI:Lcom/layar/data/POI;

    .line 326
    const/16 v0, -0x64

    iput v0, p0, Lcom/layar/ui/BriefInfoView;->currentDistance:I

    .line 328
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView;->mImageCache:Lcom/layar/data/ImageCache;

    .line 330
    iget-object v1, p0, Lcom/layar/ui/BriefInfoView;->mLayerName:Ljava/lang/String;

    const-string v2, "banner_icon"

    iget-object v3, p0, Lcom/layar/ui/BriefInfoView;->viewLayerLogo:Landroid/widget/ImageView;

    .line 329
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto/16 :goto_0
.end method
