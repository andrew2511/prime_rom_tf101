.class Lcom/google/android/finsky/activities/PurchaseActivity$5;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->transitionToPurchaseLoadingState()V
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
    .line 628
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1000(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 637
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1000(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 638
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1200(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    .line 640
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$5;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1200(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    .line 645
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 648
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 651
    return-void
.end method
