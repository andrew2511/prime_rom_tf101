.class Lcom/android/launcher2/Launcher$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$alphaAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$fromView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2920
    iput-object p1, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$19;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2924
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2925
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$19;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Landroid/animation/Animator;)V

    .line 2927
    :cond_0
    return-void
.end method
