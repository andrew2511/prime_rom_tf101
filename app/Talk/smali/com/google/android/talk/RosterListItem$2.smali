.class final Lcom/google/android/talk/RosterListItem$2;
.super Ljava/lang/Object;
.source "RosterListItem.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListItem;->makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic val$a:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    .line 540
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$2;->val$a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 529
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$2;->mCanceled:Z

    .line 526
    return-void
.end method
