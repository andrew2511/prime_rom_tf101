.class Lcom/google/android/finsky/fragments/DetailsFragment$1;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/DetailsFragment;->switchLayout(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/DetailsFragment;

.field final synthetic val$developerPanel:Landroid/view/View;

.field final synthetic val$relatedPanel:Landroid/view/View;

.field final synthetic val$reviewsPanel:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->this$0:Lcom/google/android/finsky/fragments/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$reviewsPanel:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$developerPanel:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$relatedPanel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 246
    .local v0, alpha:F
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$reviewsPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 247
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$developerPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 248
    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$1;->val$relatedPanel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 250
    return-void
.end method
