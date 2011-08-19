.class Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/android/vending/compat/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

.field private mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V
    .locals 0
    .parameter "animatorSet"
    .parameter "node"
    .parameter "rule"

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    .line 482
    iput-object p2, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 483
    iput p3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mRule:I

    .line 484
    return-void
.end method

.method private startIfReady(Lcom/android/vending/compat/animation/Animator;)V
    .locals 5
    .parameter "dependencyAnimation"

    .prologue
    .line 525
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    iget-boolean v3, v3, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v1, 0x0

    .line 530
    .local v1, dependencyToRemove:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v3, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    .line 531
    .local v0, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    iget v3, v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->rule:I

    iget v4, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v3, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    if-ne v3, p1, :cond_2

    .line 535
    move-object v1, v0

    .line 536
    invoke-virtual {p1, p0}, Lcom/android/vending/compat/animation/Animator;->removeListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 540
    .end local v0           #dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    :cond_3
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v3, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v3, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v3, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Animator;->start()V

    .line 544
    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v3}, Lcom/android/vending/compat/animation/AnimatorSet;->access$000(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v4, v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 492
    return-void
.end method

.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 498
    iget v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/android/vending/compat/animation/Animator;)V

    .line 501
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/vending/compat/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 507
    return-void
.end method

.method public onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 513
    iget v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0, p1}, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;->startIfReady(Lcom/android/vending/compat/animation/Animator;)V

    .line 516
    :cond_0
    return-void
.end method
