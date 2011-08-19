.class public Lcom/amazon/kcp/reader/ui/MagnifyingView;
.super Landroid/widget/ImageView;
.source "MagnifyingView.java"


# static fields
.field private static final BITMAP_SIZE_SCALE:F = 2.0f

.field private static final DEFAULT_MAGNIFICATION:F = 1.2f


# instance fields
.field private bitmapRect:Landroid/graphics/Rect;

.field private centerPoint:Landroid/graphics/PointF;

.field private magnification:F

.field private magnifiedView:Landroid/view/View;

.field public final magnifiedViewChangedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const v0, 0x3f99999a

    iput v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/ui/MagnifyingView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView$1;-><init>(Lcom/amazon/kcp/reader/ui/MagnifyingView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedViewChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 65
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/MagnifyingView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    return-void
.end method

.method private disposeImageBitmap()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private magnifiedVisibleAreaChanged(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x4000

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->disposeImageBitmap()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    .line 106
    :cond_2
    if-eqz p1, :cond_0

    .line 108
    iput-object v7, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    div-float v1, v0, v1

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    div-float v2, v0, v2

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v1, v10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v2, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    float-to-int v6, v3

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    float-to-int v6, v4

    if-eq v5, v6, :cond_5

    .line 126
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->disposeImageBitmap()V

    move-object v0, v7

    .line 130
    :cond_5
    :goto_1
    if-nez v0, :cond_9

    .line 132
    float-to-int v0, v3

    float-to-int v5, v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    const/4 v5, 0x1

    .line 137
    :goto_2
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    .line 138
    if-nez v6, :cond_6

    .line 140
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 142
    :cond_6
    iget v7, v6, Landroid/graphics/PointF;->x:F

    div-float v8, v1, v10

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 143
    iget v8, v6, Landroid/graphics/PointF;->y:F

    div-float v9, v2, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 144
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v1, v1

    add-int/2addr v1, v7

    float-to-int v2, v2

    add-int/2addr v2, v8

    invoke-direct {v9, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    if-nez v5, :cond_7

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 149
    :cond_7
    iget v1, v6, Landroid/graphics/PointF;->x:F

    div-float v2, v3, v10

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 150
    iget v2, v6, Landroid/graphics/PointF;->y:F

    div-float v5, v4, v10

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 151
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v3, v3

    add-int/2addr v3, v1

    float-to-int v4, v4

    add-int/2addr v4, v2

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    .line 154
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    :cond_8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 164
    iget v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    iget v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 165
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->bitmapRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 166
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_9
    move v5, p1

    goto/16 :goto_2

    :cond_a
    move-object v0, v7

    goto/16 :goto_1
.end method


# virtual methods
.method public getMagnification()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    return v0
.end method

.method public getMagnifiedCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMagnifiedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 263
    return-void
.end method

.method public setMagnification(F)V
    .locals 3
    .parameter "magnification"

    .prologue
    .line 224
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnification level ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be greater than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 230
    iput p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnification:F

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 233
    :cond_1
    return-void
.end method

.method public setMagnifiedCenterPoint(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "centerPoint"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->centerPoint:Landroid/graphics/PointF;

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public setMagnifiedView(Landroid/view/View;)V
    .locals 1
    .parameter "magnifiedView"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedView:Landroid/view/View;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    if-nez p1, :cond_1

    .line 241
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
