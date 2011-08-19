.class Landroid/widget/StackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field alphaAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 470
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 471
    return-void
.end method


# virtual methods
.method cancelAlphaAnimator()Z
    .registers 3

    .prologue
    .line 486
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->alphaAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 487
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->alphaAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 488
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 489
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 490
    const/4 v1, 0x1

    .line 493
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method cancelSliderAnimator()Z
    .registers 3

    .prologue
    .line 508
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 509
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 510
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 511
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 512
    const/4 v1, 0x1

    .line 515
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method cancelTransformAnimator()Z
    .registers 3

    .prologue
    .line 497
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 498
    iget-object v1, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 499
    .local v0, oa:Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 500
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 501
    const/4 v1, 0x1

    .line 504
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method setAlphaAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .parameter "oa"

    .prologue
    .line 474
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->alphaAnimator:Ljava/lang/ref/WeakReference;

    .line 475
    return-void
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .parameter "oa"

    .prologue
    .line 482
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 483
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .parameter "oa"

    .prologue
    .line 478
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 479
    return-void
.end method
