.class Lcom/google/android/finsky/fragments/DetailsFragment$2;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$oldState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/DetailsFragment;Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$2;->this$0:Lcom/google/android/finsky/fragments/DetailsFragment;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/DetailsFragment$2;->val$oldState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 270
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment$2;->val$oldState:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DetailsFragment$2;->this$0:Lcom/google/android/finsky/fragments/DetailsFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->access$100(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;Landroid/view/View;)V

    .line 266
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 274
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 261
    return-void
.end method
