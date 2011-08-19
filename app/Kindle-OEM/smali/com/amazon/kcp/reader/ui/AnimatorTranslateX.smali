.class Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/TranslateXAnimator;


# instance fields
.field animatedView:Landroid/view/View;

.field animation:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animatedView:Landroid/view/View;

    .line 1531
    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p2

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    .line 1532
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1534
    if-eqz p5, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;

    invoke-direct {v1, p0, p6}, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;-><init>(Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1567
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animatedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1584
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;->animation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
