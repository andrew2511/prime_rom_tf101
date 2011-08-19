.class Lcom/android/launcher2/Launcher$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideOrShowToolbarButton(ZLandroid/view/View;Landroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$hiding:Z

.field final synthetic val$showing:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;ZLandroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2665
    iput-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$13;->val$showing:Z

    iput-object p3, p0, Lcom/android/launcher2/Launcher$13;->val$view:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher2/Launcher$13;->val$hiding:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2673
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->val$hiding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$13;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2600(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2674
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2668
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->val$showing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$13;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2400(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2669
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$13;->val$hiding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$13;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2500(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2670
    :cond_1
    return-void
.end method
