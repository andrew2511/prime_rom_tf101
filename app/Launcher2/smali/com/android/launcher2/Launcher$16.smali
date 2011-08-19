.class Lcom/android/launcher2/Launcher$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$scaleAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$toAllApps:Z

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/android/launcher2/Launcher$16;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher2/Launcher$16;->val$toAllApps:Z

    iput-object p4, p0, Lcom/android/launcher2/Launcher$16;->val$scaleAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/high16 v1, 0x3f80

    .line 2817
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2818
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2819
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$16;->val$scaleAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Landroid/animation/Animator;)V

    .line 2822
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 2805
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2806
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2807
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2808
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$16;->val$toAllApps:Z

    if-nez v0, :cond_0

    .line 2809
    iget-object v0, p0, Lcom/android/launcher2/Launcher$16;->val$toView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setFastAlpha(F)V

    .line 2811
    :cond_0
    return-void
.end method
