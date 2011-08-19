.class Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;-><init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;

.field final synthetic val$callbacks:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;->this$0:Lcom/amazon/kcp/reader/ui/AnimatorTranslateX;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;->val$callbacks:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 1545
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;->val$callbacks:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1552
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;->val$callbacks:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 1558
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/AnimatorTranslateX$1;->val$callbacks:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1564
    return-void
.end method
