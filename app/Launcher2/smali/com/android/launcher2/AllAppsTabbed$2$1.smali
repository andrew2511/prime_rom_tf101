.class Lcom/android/launcher2/AllAppsTabbed$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsTabbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsTabbed$2;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AllAppsTabbed$2;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsTabbed$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iput p2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->val$duration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x1

    .line 104
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-virtual {v2}, Lcom/android/launcher2/AllAppsTabbed;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, tag:Ljava/lang/String;
    const-string v2, "ALL"

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllAppsPagedView;->setAppFilter(I)V

    .line 111
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AllAppsPagedView;->getAlpha()F

    move-result v0

    .line 112
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/high16 v5, 0x3f80

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->val$duration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 114
    return-void

    .line 107
    .end local v0           #alpha:F
    :cond_1
    const-string v2, "DOWNLOADED"

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/launcher2/AllAppsTabbed$2$1;->this$1:Lcom/android/launcher2/AllAppsTabbed$2;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsTabbed$2;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-static {v2}, Lcom/android/launcher2/AllAppsTabbed;->access$000(Lcom/android/launcher2/AllAppsTabbed;)Lcom/android/launcher2/AllAppsPagedView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/launcher2/AllAppsPagedView;->setAppFilter(I)V

    goto :goto_0
.end method
