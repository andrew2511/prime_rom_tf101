.class Lcom/android/gallery3d/ui/CropView$AnimationController;
.super Lcom/android/gallery3d/anim/Animation;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationController"
.end annotation


# instance fields
.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mStartScale:F

.field private mStartX:I

.field private mStartY:I

.field private mTargetScale:F

.field private mTargetX:I

.field private mTargetY:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/CropView;)V
    .locals 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Lcom/android/gallery3d/anim/Animation;-><init>()V

    .line 292
    const/16 v0, 0x4e2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->setDuration(I)V

    .line 293
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 294
    return-void
.end method

.method private calculateTarget(Landroid/graphics/RectF;)V
    .locals 14
    .parameter "highlight"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v12, 0x3f00

    .line 377
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/CropView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 378
    .local v7, width:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/CropView;->getHeight()I

    move-result v8

    int-to-float v2, v8

    .line 380
    .local v2, height:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 381
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 382
    .local v5, minScale:F
    const v8, 0x3f19999a

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float v9, v7, v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget-object v11, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v11}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    div-float v10, v2, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8, v5, v13}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v6

    .line 385
    .local v6, scale:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 387
    .local v0, centerX:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/RectF;->top:F

    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 390
    .local v1, centerY:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v8, v7

    if-lez v8, :cond_1

    .line 391
    mul-float v8, v7, v12

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 392
    .local v3, limitX:I
    iget v8, p1, Landroid/graphics/RectF;->left:F

    iget v9, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 394
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v0, v3, v8}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v0

    .line 398
    .end local v3           #limitX:I
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v8, v2

    if-lez v8, :cond_2

    .line 399
    mul-float v8, v2, v12

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 400
    .local v4, limitY:I
    iget v8, p1, Landroid/graphics/RectF;->top:F

    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    div-float/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 402
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v1, v4, v8}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v1

    .line 406
    .end local v4           #limitY:I
    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    .line 407
    iput v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    .line 408
    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    .line 410
    .end local v0           #centerX:I
    .end local v1           #centerY:I
    .end local v5           #minScale:F
    .end local v6           #scale:F
    :cond_0
    return-void

    .line 396
    .restart local v0       #centerX:I
    .restart local v1       #centerY:I
    .restart local v5       #minScale:F
    .restart local v6       #scale:F
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    div-int/lit8 v0, v8, 0x2

    goto :goto_0

    .line 404
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    goto :goto_1
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    return v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 299
    const/high16 v0, 0x4000

    iget-object v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 302
    return-void
.end method

.method public inverseMapPoint(Landroid/graphics/PointF;)V
    .locals 6
    .parameter "point"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 333
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 334
    .local v0, s:F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 336
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 338
    return-void
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 10
    .parameter "input"
    .parameter "output"

    .prologue
    const/high16 v6, 0x3f00

    .line 341
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/CropView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v5, v6

    .line 342
    .local v0, offsetX:F
    iget-object v5, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/CropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v1, v5, v6

    .line 343
    .local v1, offsetY:F
    iget v3, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 344
    .local v3, x:I
    iget v4, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 345
    .local v4, y:I
    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 346
    .local v2, s:F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v3

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v0

    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v7}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    iget v7, p1, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/android/gallery3d/ui/CropView;->access$500(Lcom/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v0

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/android/gallery3d/ui/CropView;->access$600(Lcom/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v8, v1

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    return-object p2
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 356
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    .line 357
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    .line 358
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    iget v2, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    .line 360
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iget v1, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->forceStop()V

    .line 362
    :cond_0
    return-void
.end method

.method public parkNow(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->forceStop()V

    .line 327
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetX:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 328
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetY:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 329
    iget v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mTargetScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput v0, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    .line 330
    return-void
.end method

.method public startParkingAnimation(Landroid/graphics/RectF;)V
    .locals 12
    .parameter "highlight"

    .prologue
    const/16 v11, 0x40

    const/high16 v10, 0x4280

    const v9, 0x3f4ccccd

    const v8, 0x3ecccccd

    .line 305
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-static {v6}, Lcom/android/gallery3d/ui/CropView;->access$200(Lcom/android/gallery3d/ui/CropView;)Lcom/android/gallery3d/ui/CropView$AnimationController;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, p1, v7}, Lcom/android/gallery3d/ui/CropView$AnimationController;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 306
    .local v3, r:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/CropView;->getWidth()I

    move-result v4

    .line 307
    .local v4, width:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/CropView;->getHeight()I

    move-result v1

    .line 309
    .local v1, height:I
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 310
    .local v5, wr:F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 311
    .local v2, hr:F
    const/16 v0, 0x40

    .line 312
    .local v0, d:I
    cmpl-float v6, v5, v8

    if-ltz v6, :cond_0

    cmpg-float v6, v5, v9

    if-gez v6, :cond_0

    cmpl-float v6, v2, v8

    if-ltz v6, :cond_0

    cmpg-float v6, v2, v9

    if-gez v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    sub-int v7, v4, v11

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_0

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    sub-int v7, v1, v11

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 322
    :goto_0
    return-void

    .line 317
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentX:I

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartX:I

    .line 318
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentY:I

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartY:I

    .line 319
    iget v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mCurrentScale:F

    iput v6, p0, Lcom/android/gallery3d/ui/CropView$AnimationController;->mStartScale:F

    .line 320
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/CropView$AnimationController;->calculateTarget(Landroid/graphics/RectF;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/CropView$AnimationController;->start()V

    goto :goto_0
.end method
