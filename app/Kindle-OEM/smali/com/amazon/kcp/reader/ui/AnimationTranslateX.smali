.class Lcom/amazon/kcp/reader/ui/AnimationTranslateX;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/TranslateXAnimator;


# instance fields
.field animatedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "v"
    .parameter "offsetX"
    .parameter "duration"
    .parameter "interpolator"
    .parameter "callbacks"

    .prologue
    const/4 v2, 0x0

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;->animatedView:Landroid/view/View;

    .line 1597
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1598
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1600
    if-eqz p5, :cond_0

    .line 1602
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1605
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1606
    invoke-virtual {v0, p6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1608
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1609
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;->animatedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1626
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;->animatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimationTranslateX;->animatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1617
    const/4 v0, 0x1

    .line 1619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
