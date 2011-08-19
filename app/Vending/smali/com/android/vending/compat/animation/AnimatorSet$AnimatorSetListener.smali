.class Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/android/vending/compat/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/vending/compat/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter "animatorSet"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    .line 556
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$000(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    iget-object v2, v2, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    iget-object v2, v2, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 562
    .local v1, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-interface {v1, v2}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 566
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 8
    .parameter "animation"

    .prologue
    .line 570
    invoke-virtual {p1, p0}, Lcom/android/vending/compat/animation/Animator;->removeListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v7}, Lcom/android/vending/compat/animation/AnimatorSet;->access$000(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 572
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v7}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 573
    .local v1, animNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->done:Z

    .line 574
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v7}, Lcom/android/vending/compat/animation/AnimatorSet;->access$200(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v5

    .line 575
    .local v5, sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    const/4 v0, 0x1

    .line 576
    .local v0, allDone:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 577
    .local v4, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-boolean v7, v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;->done:Z

    if-nez v7, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 582
    .end local v4           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_1
    if-eqz v0, :cond_2

    .line 585
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    iget-object v7, v7, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 586
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    iget-object v7, v7, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 588
    .local v6, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 589
    .local v3, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-interface {v3, v7}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 593
    .end local v3           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v6           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/vending/compat/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 601
    return-void
.end method
