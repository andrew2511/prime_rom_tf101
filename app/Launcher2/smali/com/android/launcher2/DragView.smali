.class public Lcom/android/launcher2/DragView;
.super Landroid/view/View;
.source "DragView.java"


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDragRegionHeight:I

.field private mDragRegionLeft:I

.field private mDragRegionTop:I

.field private mDragRegionWidth:I

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOnDrawRunnable:Ljava/lang/Runnable;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 18
    .parameter "context"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mDragRegionLeft:I

    .line 46
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mDragRegionTop:I

    .line 51
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mOffsetX:F

    .line 52
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mOffsetY:F

    .line 62
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragView;->mOnDrawRunnable:Ljava/lang/Runnable;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 80
    .local v16, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0005

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 82
    .local v12, dragScale:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .local v10, scale:Landroid/graphics/Matrix;
    add-int v5, p7, v12

    div-int v5, v5, p7

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    .line 86
    .local v17, scaleFactor:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v17, v5

    if-eqz v5, :cond_0

    .line 87
    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 90
    :cond_0
    const v5, 0x7f0a0006

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 91
    .local v14, offsetX:I
    const v5, 0x7f0a0007

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 94
    .local v15, offsetY:I
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    move-object v5, v0

    const-wide/16 v6, 0x6e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    move-object v5, v0

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4020

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    move-object v5, v0

    new-instance v6, Lcom/android/launcher2/DragView$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v14

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/DragView$1;-><init>(Lcom/android/launcher2/DragView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    const/4 v11, 0x1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 120
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/DragView;->setDragRegion(IIII)V

    .line 123
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mRegistrationX:I

    .line 124
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/DragView;->mRegistrationY:I

    .line 127
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 128
    .local v13, ms:I
    move-object/from16 v0, p0

    move v1, v13

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragView;->measure(II)V

    .line 129
    return-void

    .line 94
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$016(Lcom/android/launcher2/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$116(Lcom/android/launcher2/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DragView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragView;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public getDragRegionHeight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/launcher2/DragView;->mDragRegionHeight:I

    return v0
.end method

.method public getDragRegionLeft()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/launcher2/DragView;->mDragRegionLeft:I

    return v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/launcher2/DragView;->mDragRegionTop:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/launcher2/DragView;->mDragRegionWidth:I

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return v0
.end method

.method getPosition([I)[I
    .locals 3
    .parameter "result"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 251
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_0

    const/4 v1, 0x2

    new-array p1, v1, [I

    .line 252
    :cond_0
    const/4 v1, 0x0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, p1, v1

    .line 253
    const/4 v1, 0x1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, p1, v1

    .line 254
    return-object p1
.end method

.method move(II)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 240
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 241
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 242
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mOnDrawRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mOnDrawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mOnDrawRunnable:Ljava/lang/Runnable;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/DragView;->setMeasuredDimension(II)V

    .line 165
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method public setDragRegion(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/launcher2/DragView;->mDragRegionLeft:I

    .line 137
    iput p2, p0, Lcom/android/launcher2/DragView;->mDragRegionTop:I

    .line 138
    iput p3, p0, Lcom/android/launcher2/DragView;->mDragRegionWidth:I

    .line 139
    iput p4, p0, Lcom/android/launcher2/DragView;->mDragRegionHeight:I

    .line 140
    return-void
.end method

.method public setOnDrawRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mOnDrawRunnable:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    .line 197
    return-void
.end method

.method public show(Landroid/os/IBinder;II)V
    .locals 8
    .parameter "windowToken"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v1, -0x2

    .line 210
    const/4 v7, -0x3

    .line 212
    .local v7, pixelFormat:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int v3, p2, v2

    iget v2, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int v4, p3, v2

    const/16 v5, 0x3ea

    const/16 v6, 0x300

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 222
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 223
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 224
    const-string v1, "DragView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    iput-object v0, p0, Lcom/android/launcher2/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 227
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 230
    return-void
.end method
