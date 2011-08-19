.class Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;
.super Ljava/lang/Object;
.source "SinglePageNewspaperView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 496
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 497
    .local v3, animation:Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 530
    :goto_0
    return v10

    .line 498
    :cond_0
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->clearAnimation()V

    .line 499
    const/high16 v0, 0x4380

    .line 500
    .local v0, GESTURE_THRESHOLD_DIP:F
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->density:F

    .line 501
    .local v8, scale:F
    const/high16 v10, 0x4380

    mul-float/2addr v10, v8

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v6, v10

    .line 502
    .local v6, gestureThreshold:I
    const/4 v4, 0x0

    .line 503
    .local v4, dx:F
    const/4 v5, 0x0

    .line 504
    .local v5, dy:F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 505
    .local v1, absdx:F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 506
    .local v2, absdy:F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v10

    int-to-float v11, v6

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 507
    :cond_1
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 508
    :cond_2
    cmpl-float v10, v1, v2

    if-lez v10, :cond_6

    .line 509
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v10

    move v9, v10

    .line 510
    .local v9, w:I
    :goto_1
    const/4 v10, 0x0

    cmpg-float v10, p3, v10

    if-gez v10, :cond_5

    .line 511
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v10

    int-to-float v11, v9

    add-float/2addr v10, v11

    const/high16 v11, 0x4080

    add-float v4, v10, v11

    .line 512
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v10, v10, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$12(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v5

    .line 525
    .end local v9           #w:I
    :cond_3
    :goto_2
    float-to-int v10, v4

    if-nez v10, :cond_9

    float-to-int v10, v5

    if-nez v10, :cond_9

    const/4 v10, 0x0

    goto :goto_0

    .line 509
    :cond_4
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move v9, v10

    goto :goto_1

    .line 515
    .restart local v9       #w:I
    :cond_5
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v10

    int-to-float v11, v9

    sub-float/2addr v10, v11

    const/high16 v11, 0x4080

    sub-float v4, v10, v11

    .line 516
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    iget-object v10, v10, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$12(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v5

    goto :goto_2

    .line 520
    .end local v9           #w:I
    :cond_6
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v11

    sub-int v7, v10, v11

    .line 521
    .local v7, h:I
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v10, v7, :cond_7

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 522
    :cond_7
    const/4 v10, 0x0

    cmpg-float v10, p4, v10

    if-gez v10, :cond_8

    div-int/lit8 v10, v7, 0x3

    int-to-float v10, v10

    iget-object v11, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v11

    sub-float v5, v10, v11

    goto :goto_2

    .line 523
    :cond_8
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v10}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F

    move-result v10

    div-int/lit8 v11, v7, 0x3

    int-to-float v11, v11

    sub-float v5, v10, v11

    goto :goto_2

    .line 526
    .end local v7           #h:I
    :cond_9
    new-instance v3, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;

    .end local v3           #animation:Landroid/view/animation/Animation;
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-direct {v3, v10, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)V

    .line 527
    .restart local v3       #animation:Landroid/view/animation/Animation;
    const-wide/16 v10, 0x96

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 528
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 529
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-virtual {v10, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 530
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 533
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;

    invoke-static {v0, p3, p4}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->access$13(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 535
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method
