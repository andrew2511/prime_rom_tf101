.class Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderGestureListener"
.end annotation


# instance fields
.field mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mHorizontallyLocked:Z

.field private mInitialSpan:F

.field private mInitialZoomCenterX:F

.field private mInitialZoomCenterY:F

.field mLastZoomCenterScrolledTo:Landroid/graphics/Point;

.field private final mMinimumInitialFlingVelocity:F

.field private mPreviousZoomFocusX:F

.field private mPreviousZoomFocusY:F

.field private mRestoreZoom:Z

.field private mRestoreZoomScale:F

.field private mScale:F

.field mScaleAnimationsPending:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mScroller:Landroid/widget/Scroller;

.field private final mScrollerHandler:Landroid/os/Handler;

.field private mTurning:Z

.field private mTurningDirection:I

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "view"

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1925
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 2104
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    .line 2115
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    .line 2117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 2118
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    .line 1820
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1821
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1823
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mMinimumInitialFlingVelocity:F

    .line 1825
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    .line 1826
    new-instance v2, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScrollerHandler:Landroid/os/Handler;

    .line 1834
    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->updateZoomCenterFromScroller()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->scheduleScrollerUpdate()V

    return-void
.end method

.method private declared-synchronized animateScale(FF)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    const-string v1, "ReaderFragment"

    .line 2233
    monitor-enter p0

    :try_start_0
    const-string v1, "scale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2234
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2236
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    .line 2237
    const-string v1, "ReaderFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2238
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animator: immediately starting animation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_0
    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 2241
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2242
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2250
    :goto_0
    monitor-exit p0

    return-void

    .line 2244
    :cond_1
    :try_start_1
    const-string v1, "ReaderFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2245
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animator: adding deferred animation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_2
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2248
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2233
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private animateToZoomCenter(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2253
    const-string v0, "zoomCenterX"

    new-array v1, v5, [F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2254
    const-string v0, "zoomCenterY"

    new-array v1, v5, [F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    aput v2, v1, v3

    aput p2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2255
    return-void
.end method

.method private clampZoomCenterForScale(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 2258
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2260
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterY(F)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterY(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 2262
    return-void
.end method

.method private dxToFraction(F)F
    .locals 8
    .parameter "dx"

    .prologue
    const/high16 v7, 0x3f00

    .line 1939
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v2

    .line 1940
    .local v2, width:I
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f80

    int-to-float v4, v2

    div-float/2addr v3, v4

    move v1, v3

    .line 1941
    .local v1, sensitivity:F
    :goto_0
    neg-float v3, p1

    mul-float v0, v3, v1

    .line 1945
    .local v0, fraction:F
    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    sub-float v3, v0, v7

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    add-float v0, v7, v3

    .line 1947
    :cond_0
    return v0

    .line 1940
    .end local v0           #fraction:F
    .end local v1           #sensitivity:F
    :cond_1
    const v3, 0x3f19999a

    int-to-float v4, v2

    div-float/2addr v3, v4

    move v1, v3

    goto :goto_0
.end method

.method private maxZoomCenterX(F)F
    .locals 8
    .parameter "scale"

    .prologue
    .line 2287
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 2288
    .local v3, vw:F
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v4

    int-to-float v1, v4

    .line 2289
    .local v1, pw:F
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    move v4, v1

    .line 2304
    :goto_0
    return v4

    .line 2291
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2292
    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 2293
    .local v0, hw:F
    add-float v2, v0, v1

    .line 2302
    .local v2, rightEdge:F
    mul-float v4, p1, v2

    sub-float/2addr v4, v3

    const/high16 v5, 0x3f80

    sub-float v5, p1, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .end local v0           #hw:F
    .end local v2           #rightEdge:F
    :cond_1
    move v4, v1

    .line 2304
    goto :goto_0
.end method

.method private maxZoomCenterY(F)F
    .locals 4
    .parameter "scale"

    .prologue
    .line 2315
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v1

    .line 2316
    .local v1, vh:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->tallestCurrentBitmap()I

    move-result v0

    .line 2317
    .local v0, ph:I
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method private minZoomCenterX(F)F
    .locals 9
    .parameter "scale"

    .prologue
    const/4 v8, 0x0

    .line 2265
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    move v4, v8

    .line 2282
    :goto_0
    return v4

    .line 2267
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2268
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 2269
    .local v3, vw:F
    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 2270
    .local v0, hw:F
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v4

    int-to-float v2, v4

    .line 2271
    .local v2, pw:F
    sub-float v1, v0, v2

    .line 2280
    .local v1, leftEdge:F
    mul-float v4, p1, v1

    const/high16 v5, 0x3f80

    sub-float v5, p1, v5

    div-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_0

    .end local v0           #hw:F
    .end local v1           #leftEdge:F
    .end local v2           #pw:F
    .end local v3           #vw:F
    :cond_1
    move v4, v8

    .line 2282
    goto :goto_0
.end method

.method private minZoomCenterY(F)F
    .locals 5
    .parameter "scale"

    .prologue
    .line 2309
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v1

    .line 2310
    .local v1, vh:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->tallestCurrentBitmap()I

    move-result v0

    .line 2311
    .local v0, ph:I
    const/4 v2, 0x0

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method private onZoomChanged()V
    .locals 4

    .prologue
    .line 2321
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    const-string v0, "ReaderFragment"

    const-string v1, "NaN scale observed in onZoomChanged(); resetting it"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2324
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setZoom(FFF)V

    .line 2327
    return-void
.end method

.method private restoreZoomIfNeeded(I)V
    .locals 6
    .parameter "direction"

    .prologue
    .line 2342
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v2, :cond_0

    .line 2359
    :goto_0
    return-void

    .line 2345
    :cond_0
    if-gez p1, :cond_1

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v2

    move v0, v2

    .line 2348
    .local v0, x:F
    :goto_1
    if-gez p1, :cond_2

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterY(F)F

    move-result v2

    move v1, v2

    .line 2351
    .local v1, y:F
    :goto_2
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 2352
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateToZoomCenter(FF)V

    .line 2357
    :goto_3
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 2358
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    goto :goto_0

    .line 2345
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_1
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v2

    move v0, v2

    goto :goto_1

    .line 2348
    .restart local v0       #x:F
    :cond_2
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterY(F)F

    move-result v2

    move v1, v2

    goto :goto_2

    .line 2354
    .restart local v1       #y:F
    :cond_3
    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2355
    iput v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    goto :goto_3
.end method

.method private restoreZoomIfNeeded(Z)V
    .locals 3
    .parameter "continueCurrent"

    .prologue
    .line 2366
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v1, :cond_0

    .line 2379
    :goto_0
    return-void

    .line 2369
    :cond_0
    if-nez p1, :cond_1

    .line 2371
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterY:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateToZoomCenter(FF)V

    .line 2372
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 2373
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    goto :goto_0

    .line 2376
    :cond_1
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 2377
    .local v0, direction:I
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(I)V

    goto :goto_0

    .line 2376
    .end local v0           #direction:I
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_1
.end method

.method private scheduleScrollerUpdate()V
    .locals 4

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScrollerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2065
    return-void
.end method

.method private temporarilySuppressZoom()V
    .locals 2

    .prologue
    .line 2330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    .line 2331
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    .line 2332
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 2333
    return-void
.end method

.method private updateZoomCenterFromScroller()Z
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 2040
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2042
    .local v0, continuing:Z
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_0

    .line 2043
    const/4 v5, 0x0

    .line 2060
    :goto_0
    return v5

    .line 2047
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 2048
    .local v3, x:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 2049
    .local v4, y:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v5

    .line 2050
    .local v1, dx:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v5

    .line 2051
    .local v2, dy:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 2052
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 2055
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    int-to-float v6, v1

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2056
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    int-to-float v6, v2

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 2057
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 2058
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    move v5, v0

    .line 2060
    goto :goto_0
.end method


# virtual methods
.method public onActionCancel(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 2017
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 2020
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v0, :cond_0

    .line 2021
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 2022
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 2023
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(Z)V

    goto :goto_0
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 2006
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v1, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 2009
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v1, :cond_0

    .line 2010
    iput-boolean v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 2011
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    move-result v0

    .line 2012
    .local v0, continueCurrent:Z
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(Z)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2227
    return-void
.end method

.method public declared-synchronized onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const-string v0, "ReaderFragment"

    .line 2216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 2217
    const-string v0, "ReaderFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animator: polled deferred animations and found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2222
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    :cond_1
    monitor-exit p0

    return-void

    .line 2216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2230
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2213
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const-string v8, "ReaderFragment"

    .line 1881
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    .line 1917
    :goto_0
    return v4

    .line 1885
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3900(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1886
    const-string v4, "ReaderFragment"

    const/4 v4, 0x2

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1887
    const-string v4, "ReaderFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping double-tap because it\'s on the horizontal edge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v7

    .line 1889
    goto :goto_0

    .line 1893
    :cond_2
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 1894
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 1917
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1896
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 1897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 1900
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v3

    .line 1901
    .local v3, viewWidth:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v0

    .line 1902
    .local v0, bitmapWidth:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1903
    int-to-float v4, v3

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 1904
    .local v2, endScale:F
    div-int/lit8 v1, v3, 0x2

    .line 1906
    .local v1, centerX:I
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    int-to-float v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v4

    :goto_2
    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 1909
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 1914
    .end local v1           #centerX:I
    :goto_3
    invoke-direct {p0, v6, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_1

    .line 1906
    .restart local v1       #centerX:I
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v4

    goto :goto_2

    .line 1911
    .end local v1           #centerX:I
    .end local v2           #endScale:F
    :cond_5
    const/high16 v2, 0x4000

    .line 1912
    .restart local v2       #endScale:F
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    goto :goto_3
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 2029
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2031
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->updateZoomCenterFromScroller()Z

    .line 2033
    :cond_0
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    .line 2034
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterY:F

    .line 2035
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    .line 2036
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 18
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    move v2, v0

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    move v2, v0

    if-nez v2, :cond_3

    .line 2072
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2073
    .local v16, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2074
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    move-object v2, v0

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    move-object v2, v0

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2076
    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    move v4, v0

    mul-float/2addr v3, v4

    sub-float v14, v2, v3

    .line 2077
    .local v14, minX:F
    move/from16 v0, v16

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v3

    sub-int v3, v3, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    move v4, v0

    mul-float/2addr v3, v4

    add-float v12, v2, v3

    .line 2078
    .local v12, maxX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    move v4, v0

    mul-float/2addr v3, v4

    sub-float v15, v2, v3

    .line 2079
    .local v15, minY:F
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v3

    sub-int v3, v3, v17

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    move v4, v0

    mul-float/2addr v3, v4

    add-float v13, v2, v3

    .line 2080
    .local v13, maxY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 2081
    const/16 p3, 0x0

    .line 2083
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    move/from16 v0, p3

    float-to-int v0, v0

    move v5, v0

    neg-int v5, v5

    move/from16 v0, p4

    float-to-int v0, v0

    move v6, v0

    neg-int v6, v6

    float-to-int v7, v14

    float-to-int v8, v12

    float-to-int v9, v15

    float-to-int v10, v13

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2086
    const-string v2, "ReaderFragment"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2087
    const-string v2, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flung from ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", velocity("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    neg-float v0, v0

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    neg-float v0, v0

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), min("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), max("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->scheduleScrollerUpdate()V

    .line 2101
    .end local v12           #maxX:F
    .end local v13           #maxY:F
    .end local v14           #minX:F
    .end local v15           #minY:F
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 2093
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    move v2, v0

    if-eqz v2, :cond_2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mMinimumInitialFlingVelocity:F

    move v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2095
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-int v11, v2

    .line 2096
    .local v11, direction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    move-object v2, v0

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V

    .line 2097
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(I)V

    .line 2098
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 10
    .parameter "detector"

    .prologue
    const/high16 v9, 0x3f80

    .line 2122
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float v4, v5, v6

    .line 2123
    .local v4, scale:F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2124
    const-string v5, "ReaderFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NaN scale seen in onScale as product of scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and detector scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 2129
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 2130
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 2131
    .local v2, focusX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 2132
    .local v3, focusY:F
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    sub-float v0, v2, v5

    .line 2133
    .local v0, dx:F
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    sub-float v1, v3, v5

    .line 2134
    .local v1, dy:F
    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    .line 2135
    iput v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    .line 2136
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v6, v9

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2137
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v6, v9

    div-float v6, v1, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 2138
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 2141
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v2           #focusX:F
    .end local v3           #focusY:F
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 2142
    const/4 v5, 0x1

    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2148
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4400(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v2

    .line 2166
    :goto_0
    return v0

    .line 2153
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 2155
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 2158
    :cond_1
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 2159
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2160
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 2161
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    .line 2162
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    .line 2163
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    .line 2164
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    :cond_2
    move v0, v4

    .line 2166
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 5
    .parameter "detector"

    .prologue
    const/high16 v2, 0x40c0

    const/high16 v4, 0x3f80

    .line 2175
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 2177
    .local v0, currentSpan:F
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 2178
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 2191
    :goto_0
    return-void

    .line 2179
    :cond_0
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 2180
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_0

    .line 2181
    :cond_1
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const v2, 0x3fa66666

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v2, 0x3fc0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 2183
    :cond_3
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_0

    .line 2184
    :cond_4
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2185
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NaN mScale seen in onScaleEnd(); current span "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2187
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    goto :goto_0

    .line 2189
    :cond_5
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1953
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 2000
    :goto_0
    return v6

    .line 1954
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 1955
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .line 1956
    .local v1, dy:F
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->dxToFraction(F)F

    move-result v2

    .line 1957
    .local v2, fraction:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v3

    .line 1958
    .local v3, leftEdge:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v4

    .line 1959
    .local v4, rightEdge:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    const/4 v6, 0x1

    move v5, v6

    .line 1961
    .local v5, zoomed:Z
    :goto_1
    if-eqz v5, :cond_4

    .line 1962
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v6, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4200(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_6

    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    .line 1966
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->temporarilySuppressZoom()V

    .line 1981
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_9

    .line 1983
    const/4 v6, 0x0

    goto :goto_0

    .line 1959
    .end local v5           #zoomed:Z
    :cond_5
    const/4 v6, 0x0

    move v5, v6

    goto :goto_1

    .line 1968
    .restart local v5       #zoomed:Z
    :cond_6
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    if-eqz v6, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4300(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 1970
    neg-float p3, v0

    .line 1971
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    .line 1973
    :cond_7
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    if-nez v6, :cond_8

    .line 1974
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    div-float v7, p3, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 1976
    :cond_8
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    div-float v7, p4, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 1977
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 1978
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    goto :goto_2

    .line 1985
    :cond_9
    if-eqz v5, :cond_a

    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-eqz v6, :cond_d

    .line 1986
    :cond_a
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-nez v6, :cond_b

    .line 1987
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1988
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    .line 1989
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    invoke-virtual {v6, v7}, Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V

    .line 1990
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 1993
    :cond_b
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    .line 1994
    neg-float v2, v2

    .line 1997
    :cond_c
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->updateTurn(F)V

    .line 2000
    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "ReaderFragment"

    .line 1840
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3900(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1841
    const-string v5, "ReaderFragment"

    const/4 v5, 0x2

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1842
    const-string v5, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping single tap because it\'s on the horizontal edge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v5, v9

    .line 1876
    :goto_0
    return v5

    .line 1847
    :cond_1
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    move v5, v9

    .line 1849
    goto :goto_0

    .line 1852
    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    move v0, v10

    .line 1853
    .local v0, fragmentAttached:Z
    :goto_1
    if-nez v0, :cond_4

    move v5, v9

    goto :goto_0

    .end local v0           #fragmentAttached:Z
    :cond_3
    move v0, v9

    .line 1852
    goto :goto_1

    .line 1855
    .restart local v0       #fragmentAttached:Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1857
    .local v4, x:F
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v3

    .line 1858
    .local v3, width:I
    div-int/lit8 v1, v3, 0xa

    .line 1860
    .local v1, marginWidth:I
    int-to-float v5, v1

    cmpg-float v5, v4, v5

    if-gez v5, :cond_5

    .line 1862
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1863
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V

    .line 1864
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V

    :goto_2
    move v5, v10

    .line 1876
    goto :goto_0

    .line 1865
    :cond_5
    sub-int v5, v3, v1

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 1867
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 1868
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/apps/books/widget/PageTurnView;->startTurn(I)V

    .line 1869
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(I)V

    goto :goto_2

    .line 1872
    :cond_6
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    .line 1873
    .local v2, visible:Z
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    if-nez v2, :cond_7

    move v6, v10

    :goto_3
    invoke-static {v5, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    goto :goto_2

    :cond_7
    move v6, v9

    goto :goto_3
.end method

.method public setScale(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 2194
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    const-string v0, "ReaderFragment"

    const-string v1, "NaN scale seen in setScale; resetting it"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2196
    const/high16 p1, 0x3f80

    .line 2198
    :cond_0
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    .line 2199
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 2200
    return-void
.end method

.method public setZoomCenterX(F)V
    .locals 0
    .parameter "x"

    .prologue
    .line 2203
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 2204
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 2205
    return-void
.end method

.method public setZoomCenterY(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 2208
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 2209
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 2210
    return-void
.end method
