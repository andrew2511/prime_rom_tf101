.class public Lcom/amazon/kcp/reader/ui/ImageZoomView;
.super Landroid/view/View;
.source "ImageZoomView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ZOOM:F = 5.0f

.field private static final DEFAULT_MIN_ZOOM:F = 1.0f

.field private static final MAX_THUMBNAIL_SIZE:F = 0.15f

.field private static final MIN_DEFAULT_TO_MAX_ZOOM_MULTIPLIER:F = 2.0f

.field private static final THUMBNAIL_PADDING_DIPS:I = 0xa


# instance fields
.field private applyDefaultZoomBeforeDraw:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private defaultZoom:F

.field private delayedFocalPointX:F

.field private delayedFocalPointY:F

.field private drawThumbnail:Z

.field private focalPointX:F

.field private focalPointY:F

.field private ignoreNextMove:Z

.field private inPinch:Z

.field private lastPinchDistance:F

.field private maxZoom:F

.field private minZoom:F

.field private final screenOutlineThumbnailPaint:Landroid/graphics/Paint;

.field private setFocalPointBeforeDraw:Z

.field private final sourceRect:Landroid/graphics/Rect;

.field private thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

.field private final thumbnailOverlayPaint:Landroid/graphics/Paint;

.field private touchX:F

.field private touchY:F

.field private zoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawThumbnail:Z

    .line 46
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    .line 56
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    .line 91
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 98
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    .line 147
    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    .line 154
    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    .line 160
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->screenOutlineThumbnailPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->screenOutlineThumbnailPaint:Landroid/graphics/Paint;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->screenOutlineThumbnailPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->screenOutlineThumbnailPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmapPaint:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    invoke-virtual {p0, p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    return-void
.end method

.method private calculateZoomLevels()V
    .locals 8

    .prologue
    const/high16 v7, 0x40a0

    const/high16 v6, 0x4020

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 227
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot compute default zoom level as no bitmaps has been set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 233
    .local v0, imageRatio:F
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 241
    .local v1, screenRatio:F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    .line 265
    :goto_0
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    .line 267
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    .line 268
    iput v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 274
    :goto_1
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    goto :goto_0

    .line 272
    :cond_2
    iput v7, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    goto :goto_1
.end method

.method private drawThumbnail(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 533
    new-instance v5, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;-><init>(Lcom/amazon/kcp/reader/ui/ImageZoomView;IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    .line 537
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getScaleFactor()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 598
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4120

    invoke-static {v6, v7}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v6

    sub-int v19, v5, v6

    .line 544
    .local v19, xImageOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x4120

    invoke-static {v6, v7}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v6

    sub-int v21, v5, v6

    .line 547
    .local v21, yImageOffset:I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getWidth()I

    move-result v5

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getHeight()I

    move-result v6

    add-int v6, v6, v21

    move-object v0, v12

    move/from16 v1, v19

    move/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 550
    .local v12, imageRect:Landroid/graphics/Rect;
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getScaleFactor()F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    move v9, v0

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v20, v0

    .line 551
    .local v20, xScreenOffset:I
    move/from16 v0, v21

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getScaleFactor()F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    move v10, v0

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v22, v0

    .line 554
    .local v22, yScreenOffset:I
    new-instance v17, Landroid/graphics/Rect;

    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    move v7, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;->getScaleFactor()F

    move-result v8

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    move v8, v0

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v22

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 560
    .local v17, screenOutlineRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmapPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v12

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 566
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget v6, v12, Landroid/graphics/Rect;->left:I

    sub-int v14, v5, v6

    .line 567
    .local v14, overlayOnLeft:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget v6, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v5, v6

    .line 568
    .local v16, overlayOnTop:I
    iget v5, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    sub-int v15, v5, v6

    .line 569
    .local v15, overlayOnRight:I
    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    sub-int v13, v5, v6

    .line 571
    .local v13, overlayOnBottom:I
    const/16 v18, 0x0

    .line 572
    .local v18, topSubtraction:I
    const/4 v11, 0x0

    .line 575
    .local v11, bottomSubtraction:I
    if-lez v16, :cond_2

    .line 577
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    add-int v9, v9, v16

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 578
    move/from16 v18, v16

    .line 580
    :cond_2
    if-lez v13, :cond_3

    .line 582
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    iget v8, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    add-int/2addr v9, v13

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 583
    move v11, v13

    .line 587
    :cond_3
    if-lez v14, :cond_4

    .line 589
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    add-int v7, v7, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 591
    :cond_4
    if-lez v15, :cond_5

    .line 593
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    iget v7, v12, Landroid/graphics/Rect;->top:I

    add-int v7, v7, v18

    iget v8, v12, Landroid/graphics/Rect;->right:I

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnailOverlayPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 597
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->screenOutlineThumbnailPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultZoom()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    return v0
.end method

.method public getFocalPointX()F
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    return v0
.end method

.method public getFocalPointY()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    return v0
.end method

.method public modifyZoom(F)V
    .locals 3
    .parameter "deltaPercent"

    .prologue
    const/4 v1, 0x0

    .line 286
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass 0 or negative number to increaseZoom(float)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 297
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 298
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 447
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 453
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 456
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 459
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 462
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 465
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 468
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 472
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointY:F

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 487
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 498
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_7

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 501
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 502
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_6

    .line 506
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 507
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 508
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 512
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getLeft()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getRight()I

    move-result v7

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getBottom()I

    move-result v7

    sub-int v1, v7, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 521
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawThumbnail:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 524
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawThumbnail(Landroid/graphics/Canvas;)V

    .line 527
    :cond_5
    return-void

    :cond_6
    move v1, v4

    goto :goto_1

    :cond_7
    move v0, v4

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 619
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 709
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 624
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    .line 625
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    goto :goto_0

    .line 630
    :pswitch_2
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    .line 632
    invoke-static {p2}, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 634
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_0

    .line 639
    :cond_1
    invoke-static {p2, v3}, Lcom/amazon/android/system/io/PointerLocationReflect;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p2, v2}, Lcom/amazon/android/system/io/PointerLocationReflect;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 640
    invoke-static {p2, v3}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p2, v2}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 641
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    goto :goto_0

    .line 647
    :pswitch_3
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_0

    .line 653
    :pswitch_4
    invoke-static {p2}, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 655
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    .line 656
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_0

    .line 662
    :pswitch_5
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    if-eqz v0, :cond_4

    .line 665
    invoke-static {p2}, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 667
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_0

    .line 672
    :cond_2
    invoke-static {p2, v3}, Lcom/amazon/android/system/io/PointerLocationReflect;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p2, v2}, Lcom/amazon/android/system/io/PointerLocationReflect;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 673
    invoke-static {p2, v3}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p2, v2}, Lcom/amazon/android/system/io/PointerLocationReflect;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 674
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 675
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 682
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    .line 690
    :goto_1
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    goto :goto_0

    .line 688
    :cond_3
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    div-float v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(F)V

    goto :goto_1

    .line 696
    :cond_4
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    if-eqz v0, :cond_5

    .line 698
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    .line 704
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    .line 705
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    goto/16 :goto_0

    .line 702
    :cond_5
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    goto :goto_2

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setDrawThumbnail(Z)V
    .locals 1
    .parameter "drawThumbnail"

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawThumbnail:Z

    if-eq v0, p1, :cond_0

    .line 611
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawThumbnail:Z

    .line 612
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->invalidate()V

    .line 614
    :cond_0
    return-void
.end method

.method public setFocalPoint(FF)Z
    .locals 9
    .parameter "focalPointX"
    .parameter "focalPointY"

    .prologue
    const/4 v8, 0x1

    .line 381
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 383
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot set the focal point since no bitmap has been set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v5

    if-nez v5, :cond_2

    .line 389
    :cond_1
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointX:F

    .line 390
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointY:F

    .line 391
    iput-boolean v8, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    .line 392
    const/4 v5, 0x0

    .line 440
    :goto_0
    return v5

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v5, v6

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float v2, v5, v6

    .line 402
    .local v2, focalLeftEdgeTouching:F
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 403
    .local v1, focalCenter:F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    .line 421
    .end local v1           #focalCenter:F
    .end local v2           #focalLeftEdgeTouching:F
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 423
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float v4, v5, v6

    .line 424
    .local v4, focalTopEdgeTouching:F
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 425
    .restart local v1       #focalCenter:F
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    .line 439
    .end local v1           #focalCenter:F
    .end local v4           #focalTopEdgeTouching:F
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->invalidate()V

    move v5, v8

    .line 440
    goto :goto_0

    .line 406
    :cond_3
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    .line 408
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v6, v7

    sub-float v3, v5, v6

    .line 409
    .local v3, focalRightEdgeTouching:F
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 410
    .restart local v1       #focalCenter:F
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    goto :goto_1

    .line 414
    .end local v1           #focalCenter:F
    .end local v3           #focalRightEdgeTouching:F
    :cond_4
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    goto :goto_1

    .line 428
    :cond_5
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    .line 430
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 431
    .local v0, focalBottomEdgeTouching:F
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 432
    .restart local v1       #focalCenter:F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    goto :goto_2

    .line 436
    .end local v0           #focalBottomEdgeTouching:F
    .end local v1           #focalCenter:F
    :cond_6
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    goto :goto_2
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmap:Landroid/graphics/Bitmap;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->thumbnail:Lcom/amazon/kcp/reader/ui/ImageZoomView$Thumbnail;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 196
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 315
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass 0 or a negative number to setZoom(float)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 322
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    .line 324
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 325
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->invalidate()V

    .line 327
    :cond_1
    return-void
.end method

.method public updateFocalPoint(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 360
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float v2, p2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 361
    return-void
.end method
