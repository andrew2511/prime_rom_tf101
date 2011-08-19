.class public Lcom/asus/reader/ui/DragView;
.super Landroid/view/View;
.source "DragView.java"

# interfaces
.implements Lcom/asus/reader/ui/TweenCallback;


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScale:F

.field mTween:Lcom/asus/reader/ui/SymmetricalLinearTween;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 8
    .parameter "context"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/asus/reader/ui/DragView;->mAnimationScale:F

    .line 80
    check-cast p1, Landroid/app/Activity;

    .end local p1
    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/asus/reader/ui/DragView;->mView:Landroid/view/ViewGroup;

    .line 83
    new-instance v0, Lcom/asus/reader/ui/SymmetricalLinearTween;

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2, p0}, Lcom/asus/reader/ui/SymmetricalLinearTween;-><init>(ZILcom/asus/reader/ui/TweenCallback;)V

    iput-object v0, p0, Lcom/asus/reader/ui/DragView;->mTween:Lcom/asus/reader/ui/SymmetricalLinearTween;

    .line 85
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v5, scale:Landroid/graphics/Matrix;
    int-to-float v7, p7

    .line 87
    .local v7, scaleFactor:F
    const/high16 v0, 0x4220

    add-float/2addr v0, v7

    div-float v7, v0, v7

    iput v7, p0, Lcom/asus/reader/ui/DragView;->mScale:F

    .line 88
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 90
    const/4 v6, 0x1

    move-object v0, p2

    move v1, p5

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    add-int/lit8 v0, p3, 0x14

    iput v0, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    .line 94
    add-int/lit8 v0, p4, 0x14

    iput v0, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    .line 96
    return-void
.end method


# virtual methods
.method makeViewLayout(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/asus/reader/ui/DragView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    invoke-virtual {p0, v3}, Lcom/asus/reader/ui/DragView;->setBackgroundColor(I)V

    .line 190
    return-object v0
.end method

.method move(II)V
    .locals 5
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/asus/reader/ui/DragView;->makeViewLayout(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget v0, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/asus/reader/ui/DragView;->layout(IIII)V

    .line 175
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 131
    iget-object v0, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 118
    iget v1, p0, Lcom/asus/reader/ui/DragView;->mAnimationScale:F

    .line 119
    .local v1, scale:F
    const v3, 0x3f7fbe77

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 121
    .local v2, width:F
    mul-float v3, v2, v1

    sub-float v3, v2, v3

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 122
    .local v0, offset:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 125
    .end local v0           #offset:F
    .end local v2           #width:F
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/asus/reader/ui/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 199
    const-string v0, "---------> DragView onLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/ui/DragView;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public onTweenFinished()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onTweenStarted()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onTweenValueChanged(FF)V
    .locals 2
    .parameter "value"
    .parameter "oldValue"

    .prologue
    const/high16 v1, 0x3f80

    .line 135
    iget v0, p0, Lcom/asus/reader/ui/DragView;->mScale:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/asus/reader/ui/DragView;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/ui/DragView;->mAnimationScale:F

    .line 136
    invoke-virtual {p0}, Lcom/asus/reader/ui/DragView;->invalidate()V

    .line 137
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/asus/reader/ui/DragView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 5
    .parameter "windowToken"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/asus/reader/ui/DragView;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/ui/DragView;->makeViewLayout(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/ui/DragView;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/ui/DragView;->mAnimationScale:F

    .line 160
    iget v0, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/asus/reader/ui/DragView;->mRegistrationX:I

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/asus/reader/ui/DragView;->mRegistrationY:I

    sub-int v3, p3, v3

    iget-object v4, p0, Lcom/asus/reader/ui/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/asus/reader/ui/DragView;->layout(IIII)V

    .line 162
    iget-object v0, p0, Lcom/asus/reader/ui/DragView;->mTween:Lcom/asus/reader/ui/SymmetricalLinearTween;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/SymmetricalLinearTween;->start(Z)V

    .line 163
    return-void
.end method
