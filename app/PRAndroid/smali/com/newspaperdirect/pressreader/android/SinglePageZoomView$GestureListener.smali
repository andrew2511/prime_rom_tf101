.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    return-object v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 538
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 539
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v10, 0x44fa

    const/high16 v9, 0x4200

    const/high16 v8, -0x3b06

    .line 543
    const/high16 v1, 0x44fa

    .line 544
    .local v1, max_velocity:F
    const/high16 v2, 0x4348

    .line 545
    .local v2, min_velocity:F
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    .line 546
    .local v3, scale:F
    div-float v4, p3, v3

    .line 547
    .local v4, vx:F
    div-float v5, p4, v3

    .line 548
    .local v5, vy:F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x4348

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 565
    :goto_0
    return v6

    .line 549
    :cond_0
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 550
    cmpl-float v6, v4, v10

    if-lez v6, :cond_3

    const/high16 v4, 0x44fa

    .line 552
    :cond_1
    :goto_1
    cmpl-float v6, v5, v10

    if-lez v6, :cond_4

    const/high16 v5, 0x44fa

    .line 554
    :cond_2
    :goto_2
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    div-float v7, v4, v9

    div-float v8, v5, v9

    invoke-direct {v0, v6, v7, v8}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$FlingAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 555
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x800

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 557
    new-instance v6, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener$1;

    invoke-direct {v6, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener$1;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 564
    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v6, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 565
    const/4 v6, 0x1

    goto :goto_0

    .line 551
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_3
    cmpg-float v6, v4, v8

    if-gez v6, :cond_1

    const/high16 v4, -0x3b06

    goto :goto_1

    .line 553
    :cond_4
    cmpg-float v6, v5, v8

    if-gez v6, :cond_2

    const/high16 v5, -0x3b06

    goto :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 568
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->clearAnimation()V

    .line 532
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$8(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;FF)V

    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 570
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method
