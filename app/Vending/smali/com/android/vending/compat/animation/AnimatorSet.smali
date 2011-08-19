.class public final Lcom/android/vending/compat/animation/AnimatorSet;
.super Lcom/android/vending/compat/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/compat/animation/AnimatorSet$Builder;,
        Lcom/android/vending/compat/animation/AnimatorSet$Node;,
        Lcom/android/vending/compat/animation/AnimatorSet$Dependency;,
        Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;,
        Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;
    }
.end annotation


# instance fields
.field mCanceled:Z

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/vending/compat/animation/Animator;",
            "Lcom/android/vending/compat/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vending/compat/animation/Animator;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mStartDelay:J

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mDuration:J

    .line 831
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 616
    iget-boolean v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v7, :cond_7

    .line 617
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v5, roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 620
    .local v3, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 621
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v3           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .end local v1           #i$:Ljava/util/Iterator;
    .local v6, tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 626
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 627
    .local v4, root:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v7, v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 629
    iget-object v7, v4, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 630
    .restart local v3       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 631
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 632
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 637
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    .end local v4           #root:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 638
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 641
    :cond_6
    iput-boolean v9, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 642
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v7, v8, :cond_b

    .line 643
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 650
    .end local v5           #roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    .end local v6           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v7, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 651
    .restart local v3       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 652
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    .line 653
    .local v0, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 654
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 656
    :cond_9
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 657
    iget-object v7, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 661
    .end local v0           #dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_a
    iput-boolean v9, v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;->done:Z

    goto :goto_3

    .line 664
    .end local v3           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 218
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    .line 219
    iget-object v4, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 222
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 223
    .local v1, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_0

    .line 226
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 228
    .local v2, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v4, v2, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Animator;->cancel()V

    goto :goto_1

    .line 231
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Lcom/android/vending/compat/animation/Animator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/AnimatorSet;->clone()Lcom/android/vending/compat/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/vending/compat/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 397
    invoke-super {p0}, Lcom/android/vending/compat/animation/Animator;->clone()Lcom/android/vending/compat/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/AnimatorSet;

    .line 406
    .local v0, anim:Lcom/android/vending/compat/animation/AnimatorSet;
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 407
    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    .line 408
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 409
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 410
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 411
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 416
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v11, nodeCloneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/vending/compat/animation/AnimatorSet$Node;Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    iget-object v12, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 418
    .local v9, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    invoke-virtual {v9}, Lcom/android/vending/compat/animation/AnimatorSet$Node;->clone()Lcom/android/vending/compat/animation/AnimatorSet$Node;

    move-result-object v10

    .line 419
    .local v10, nodeClone:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v12, v0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iput-object v14, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 424
    iput-object v14, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 425
    iput-object v14, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 426
    iput-object v14, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 429
    iget-object v12, v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v12}, Lcom/android/vending/compat/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 430
    .local v2, cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 431
    const/4 v8, 0x0

    .line 432
    .local v8, listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 433
    .local v7, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    instance-of v12, v7, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v12, :cond_1

    .line 434
    if-nez v8, :cond_2

    .line 435
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .restart local v8       #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    .end local v7           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    :cond_3
    if-eqz v8, :cond_0

    .line 441
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 442
    .restart local v7       #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    .end local v2           #cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    .end local v9           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_4
    iget-object v12, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 450
    .restart local v9       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 451
    .restart local v10       #nodeClone:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v12, v9, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 452
    iget-object v12, v9, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    .line 453
    .local v4, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    iget-object v12, v4, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 454
    .local v3, clonedDependencyNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    new-instance v1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    iget v12, v4, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v1, v3, v12}, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;-><init>(Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V

    .line 456
    .local v1, cloneDependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    invoke-virtual {v10, v1}, Lcom/android/vending/compat/animation/AnimatorSet$Node;->addDependency(Lcom/android/vending/compat/animation/AnimatorSet$Dependency;)V

    goto :goto_2

    .line 461
    .end local v1           #cloneDependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    .end local v3           #clonedDependencyNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    .end local v4           #dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_6
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/AnimatorSet;->clone()Lcom/android/vending/compat/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 4

    .prologue
    .line 241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    .line 242
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorSet;->sortNodes()V

    .line 245
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 246
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_0

    .line 247
    new-instance v2, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/AnimatorSet;)V

    iput-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    .line 249
    :cond_0
    iget-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    iget-object v3, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v2, v3}, Lcom/android/vending/compat/animation/Animator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 252
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_1
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 254
    .restart local v1       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/Animator;->end()V

    goto :goto_1

    .line 257
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_2
    return-void
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 267
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 271
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public play(Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/AnimatorSet$Builder;
    .locals 1
    .parameter "anim"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 204
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/compat/animation/AnimatorSet$Builder;-><init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/Animator;)V

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs playSequentially([Lcom/android/vending/compat/animation/Animator;)V
    .locals 4
    .parameter "items"

    .prologue
    const/4 v3, 0x1

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput-boolean v3, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 115
    array-length v1, p1

    if-ne v1, v3, :cond_1

    .line 116
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/android/vending/compat/animation/AnimatorSet;->play(Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/AnimatorSet$Builder;

    .line 123
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 119
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/vending/compat/animation/AnimatorSet;->play(Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->before(Lcom/android/vending/compat/animation/Animator;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playTogether([Lcom/android/vending/compat/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNeedsSort:Z

    .line 99
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/android/vending/compat/animation/AnimatorSet;->play(Lcom/android/vending/compat/animation/Animator;)Lcom/android/vending/compat/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 100
    .local v0, builder:Lcom/android/vending/compat/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 101
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->with(Lcom/android/vending/compat/animation/Animator;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0           #builder:Lcom/android/vending/compat/animation/AnimatorSet$Builder;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/android/vending/compat/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/compat/animation/AnimatorSet;->setDuration(J)Lcom/android/vending/compat/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/android/vending/compat/animation/AnimatorSet;
    .locals 4
    .parameter "duration"

    .prologue
    .line 319
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "duration must be a value of zero or greater"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 325
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2, p1, p2}, Lcom/android/vending/compat/animation/Animator;->setDuration(J)Lcom/android/vending/compat/animation/Animator;

    goto :goto_0

    .line 327
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_1
    iput-wide p1, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mDuration:J

    .line 328
    return-object p0
.end method

.method public start()V
    .locals 12

    .prologue
    .line 341
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mCanceled:Z

    .line 345
    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorSet;->sortNodes()V

    .line 351
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v6, nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/AnimatorSet$Node;>;"
    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 353
    .local v5, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    if-nez v8, :cond_0

    .line 354
    new-instance v8, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v8, p0, p0}, Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/AnimatorSet;)V

    iput-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    .line 356
    :cond_0
    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 357
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :goto_1
    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    iget-object v9, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mSetListener:Lcom/android/vending/compat/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v8, v9}, Lcom/android/vending/compat/animation/Animator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    .line 360
    .local v1, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    iget-object v8, v1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iget-object v8, v8, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    new-instance v9, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;

    iget v10, v1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v9, p0, v5, v10}, Lcom/android/vending/compat/animation/AnimatorSet$DependencyListener;-><init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V

    invoke-virtual {v8, v9}, Lcom/android/vending/compat/animation/Animator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 363
    .end local v1           #dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    :cond_3
    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_1

    .line 368
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_4
    iget-wide v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 369
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 370
    .restart local v5       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v8, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v8}, Lcom/android/vending/compat/animation/Animator;->start()V

    .line 371
    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 375
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_5
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Lcom/android/vending/compat/animation/ValueAnimator;->ofFloat([F)Lcom/android/vending/compat/animation/ValueAnimator;

    move-result-object v0

    .line 376
    .local v0, delayAnim:Lcom/android/vending/compat/animation/ValueAnimator;
    iget-wide v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v0, v8, v9}, Lcom/android/vending/compat/animation/ValueAnimator;->setDuration(J)Lcom/android/vending/compat/animation/ValueAnimator;

    .line 377
    new-instance v8, Lcom/android/vending/compat/animation/AnimatorSet$1;

    invoke-direct {v8, p0, v6}, Lcom/android/vending/compat/animation/AnimatorSet$1;-><init>(Lcom/android/vending/compat/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Lcom/android/vending/compat/animation/ValueAnimator;->addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V

    .line 386
    .end local v0           #delayAnim:Lcom/android/vending/compat/animation/ValueAnimator;
    :cond_6
    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 387
    iget-object v8, p0, Lcom/android/vending/compat/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 389
    .local v7, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/Animator$AnimatorListener;

    .line 390
    .local v4, listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    invoke-interface {v4, p0}, Lcom/android/vending/compat/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/android/vending/compat/animation/Animator;)V

    goto :goto_4

    .line 393
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    .end local v7           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :cond_7
    return-void

    .line 375
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
