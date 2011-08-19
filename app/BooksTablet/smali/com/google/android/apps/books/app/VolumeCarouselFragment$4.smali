.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setFinalVisibility()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->setFinalVisibility()V

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$502(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 595
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->setFinalVisibility()V

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$502(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 590
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 579
    return-void
.end method
