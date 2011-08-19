.class Lcom/google/android/finsky/activities/PurchaseActivity$4;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->transitionToWebViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1000(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1100(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/google/android/finsky/activities/PurchaseActivity;->MAX_WEB_VIEW_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 584
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 585
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1000(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$4;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1100(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 588
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 591
    return-void
.end method
