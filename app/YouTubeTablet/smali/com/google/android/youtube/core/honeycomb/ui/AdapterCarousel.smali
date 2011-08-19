.class public Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;
.super Lcom/android/ex/carousel/CarouselView;
.source "AdapterCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;
    }
.end annotation


# static fields
.field private static loadingBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private adapter:Landroid/widget/Adapter;

.field private final antiAliasedPainter:Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;

.field private cameraZ:F

.field private cardHeight:I

.field private cardWidth:I

.field private final carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

.field private carouselRotation:Ljava/lang/Float;

.field private detached:Z

.field private detailHeight:I

.field private final detailViewTag:Ljava/lang/String;

.field private detailWidth:I

.field private lastTouchPosition:[I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private radius:F

.field private rowCount:I

.field private rowSpacing:F

.field private slotCount:I

.field private splitDetailViews:Z

.field private surfaceReady:Z

.field private visibleSlotCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v1, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;-><init>()V

    iput-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->antiAliasedPainter:Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;

    .line 86
    const v1, 0x7f0d00f2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;

    .line 88
    sget-object v1, Lcom/google/android/youtube/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->radius:F

    .line 90
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowCount:I

    .line 91
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowSpacing:F

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->slotCount:I

    .line 94
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cameraZ:F

    .line 95
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardWidth:I

    .line 96
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardHeight:I

    .line 97
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailWidth:I

    .line 98
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailHeight:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 102
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setBackgroundColor(FFFF)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    .line 106
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->radius:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setRadius(F)V

    .line 107
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setRowCount(I)V

    .line 108
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowSpacing:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setRowSpacing(F)V

    .line 109
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setVisibleSlots(I)V

    .line 110
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setVisibleDetails(I)V

    .line 111
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->slotCount:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setSlotCount(I)V

    .line 113
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDrawRuler(Z)V

    .line 114
    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDetailTextureAlignment(I)V

    .line 116
    sget-object v1, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_0
    sget-object v1, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    sget-object v1, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->loadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCardsFaceTangent(Z)V

    .line 125
    const v1, -0x4036f025

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCardRotation(F)V

    .line 126
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDragModel(I)V

    .line 127
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setPrefetchCardCount(I)V

    .line 128
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cameraZ:F

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCameraZ(F)V

    .line 130
    iget v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardWidth:I

    iget v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCardSize(II)V

    .line 132
    new-instance v1, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    .line 133
    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 134
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detached:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$201(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->lastTouchPosition:[I

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->splitDetailViews:Z

    return v0
.end method


# virtual methods
.method public createCards(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 318
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->createCards(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 323
    return-void
.end method

.method public createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "view"
    .parameter "w"
    .parameter "h"
    .parameter "antialias"

    .prologue
    const/high16 v3, 0x4000

    const/4 v4, 0x0

    .line 296
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 306
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 309
    if-eqz p4, :cond_1

    if-eqz v0, :cond_1

    .line 310
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 311
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->antiAliasedPainter:Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AntiAliasedEdgePainter;->paint(Landroid/graphics/Canvas;)V

    .line 313
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->onDestroy()V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->destroyRenderScriptGL()V

    .line 246
    return-void
.end method

.method public destroyRenderScriptGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getRenderScriptGL()Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    .line 252
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    .line 254
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->surfaceReady:Z

    if-nez v0, :cond_0

    .line 350
    new-instance p1, Landroid/graphics/Canvas;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 352
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 353
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->surfaceReady:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastTouchPosition()[I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->lastTouchPosition:[I

    return-object v0
.end method

.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const/high16 v1, 0x7f07

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public layout(IIII)V
    .locals 1
    .parameter "t"
    .parameter "l"
    .parameter "b"
    .parameter "r"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detached:Z

    if-nez v0, :cond_0

    .line 380
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->layout(IIII)V

    .line 382
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detached:Z

    .line 374
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onAttachedToWindow()V

    .line 375
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->requestLayout()V

    .line 387
    new-instance v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$2;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 287
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 288
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "rotation"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    .line 289
    const-string v3, "super"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 290
    .local v2, superState:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 291
    invoke-super {p0, v2}, Lcom/android/ex/carousel/CarouselView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, state:Landroid/os/Bundle;
    invoke-super {p0}, Lcom/android/ex/carousel/CarouselView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 276
    .local v1, superState:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 277
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 280
    const-string v2, "rotation"

    iget-object v3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 282
    :cond_1
    return-object v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 357
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->requestLayout()V

    .line 359
    new-instance v0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$1;-><init>(Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->post(Ljava/lang/Runnable;)Z

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->onWindowVisibilityChanged(I)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 230
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 236
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 212
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setZOrderOnTop(Z)V

    .line 214
    return-void
.end method

.method public setCameraZ(F)V
    .locals 8
    .parameter "cameraZ"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 155
    new-array v1, v4, [F

    aput v3, v1, v5

    aput v3, v1, v6

    aput p1, v1, v7

    .line 157
    .local v1, eye:[F
    new-array v0, v4, [F

    aput v3, v0, v5

    aput v3, v0, v6

    iget v3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->radius:F

    neg-float v3, v3

    aput v3, v0, v7

    .line 158
    .local v0, at:[F
    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 159
    .local v2, up:[F
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setLookAt([F[F[F)V

    .line 160
    return-void

    .line 158
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setCardSize(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 191
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardWidth:I

    .line 192
    iput p2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardHeight:I

    .line 194
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 195
    .local v0, cardMatrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->cardWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 196
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 197
    .local v1, rsMatrix:[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setDefaultCardMatrix([F)V

    .line 199
    return-void
.end method

.method public setDetailSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 202
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailWidth:I

    .line 203
    iput p2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->detailHeight:I

    .line 204
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 218
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 222
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 150
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->radius:F

    .line 151
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRadius(F)V

    .line 152
    return-void
.end method

.method public setRowCount(I)V
    .locals 0
    .parameter "rows"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRowCount(I)V

    .line 181
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowCount:I

    .line 182
    return-void
.end method

.method public setRowSpacing(F)V
    .locals 0
    .parameter "s"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setRowSpacing(F)V

    .line 187
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->rowSpacing:F

    .line 188
    return-void
.end method

.method public setSlotCount(I)V
    .locals 5
    .parameter "slots"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setSlotCount(I)V

    .line 165
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->slotCount:I

    .line 166
    const-wide v1, 0x401921fb54442d18L

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 168
    .local v0, wedgeSize:F
    const v1, 0x3fc90fdb

    iget v2, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->setStartAngle(F)V

    .line 169
    return-void
.end method

.method public setSplitDetailViews(Z)V
    .locals 1
    .parameter "splitDetailViews"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->splitDetailViews:Z

    if-eq v0, p1, :cond_0

    .line 142
    iput-boolean p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->splitDetailViews:Z

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselCallback:Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel$CarouselCallback;->onChanged()V

    .line 146
    :cond_0
    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 0
    .parameter "slots"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setVisibleSlots(I)V

    .line 174
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->setVisibleDetails(I)V

    .line 175
    iput p1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->visibleSlotCount:I

    .line 176
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    .line 261
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->surfaceReady:Z

    .line 263
    invoke-virtual {p0}, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->invalidate()V

    .line 264
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/honeycomb/ui/AdapterCarousel;->surfaceReady:Z

    .line 269
    invoke-super {p0, p1}, Lcom/android/ex/carousel/CarouselView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 270
    return-void
.end method
