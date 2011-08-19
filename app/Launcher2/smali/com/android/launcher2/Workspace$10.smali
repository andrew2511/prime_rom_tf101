.class Lcom/android/launcher2/Workspace$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->animateViewIntoPosition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$10;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2252
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1502(Lcom/android/launcher2/Workspace;Landroid/view/View;)Landroid/view/View;

    .line 2254
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$10;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1502(Lcom/android/launcher2/Workspace;Landroid/view/View;)Landroid/view/View;

    .line 2247
    return-void
.end method
