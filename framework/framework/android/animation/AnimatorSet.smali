.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$Dependency;,
        Landroid/animation/AnimatorSet$AnimatorSetListener;,
        Landroid/animation/AnimatorSet$DependencyListener;
    }
.end annotation


# instance fields
.field mCanceled:Z

.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 87
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mCanceled:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 100
    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 964
    return-void
.end method

.method static synthetic access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/AnimatorSet;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 739
    iget-boolean v11, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_9c

    .line 740
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 741
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v9, roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 743
    .local v6, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v6, :cond_32

    .line 744
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 745
    .local v3, node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_2c

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2f

    .line 746
    :cond_2c
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 749
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    :cond_32
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v10, tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :goto_37
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_84

    .line 751
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 752
    .local v7, numRoots:I
    const/4 v1, 0x0

    :goto_42
    if-ge v1, v7, :cond_7a

    .line 753
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    .line 754
    .local v8, root:Landroid/animation/AnimatorSet$Node;
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_77

    .line 756
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 757
    .local v5, numDependents:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_5a
    if-ge v2, v5, :cond_77

    .line 758
    iget-object v11, v8, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 759
    .restart local v3       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_74

    .line 761
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 752
    .end local v2           #j:I
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    .end local v5           #numDependents:I
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 766
    .end local v8           #root:Landroid/animation/AnimatorSet$Node;
    :cond_7a
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 767
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 768
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_37

    .line 770
    .end local v7           #numRoots:I
    :cond_84
    iput-boolean v13, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 771
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_ee

    .line 772
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 779
    .end local v1           #i:I
    .end local v6           #numNodes:I
    .end local v9           #roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    .end local v10           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_9c
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 780
    .restart local v6       #numNodes:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a3
    if-ge v1, v6, :cond_ee

    .line 781
    iget-object v11, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 782
    .restart local v3       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_e9

    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_e9

    .line 783
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 784
    .local v4, numDependencies:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_c0
    if-ge v2, v4, :cond_e9

    .line 785
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .line 786
    .local v0, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_d5

    .line 787
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 789
    :cond_d5
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e6

    .line 790
    iget-object v11, v3, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 794
    .end local v0           #dependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v2           #j:I
    .end local v4           #numDependencies:I
    :cond_e9
    iput-boolean v13, v3, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    .line 797
    .end local v3           #node:Landroid/animation/AnimatorSet$Node;
    :cond_ee
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6

    .prologue
    .line 274
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/AnimatorSet;->mCanceled:Z

    .line 275
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_23

    .line 276
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 278
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 279
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_13

    .line 282
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_23
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_54

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 285
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 286
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_74

    .line 287
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 289
    .restart local v3       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 290
    .restart local v1       #listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_44

    .line 295
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_54
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_74

    .line 296
    iget-object v4, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 297
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    goto :goto_62

    .line 300
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_74
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 515
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 524
    .local v0, anim:Landroid/animation/AnimatorSet;
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 525
    const/4 v12, 0x0

    iput-boolean v12, v0, Landroid/animation/AnimatorSet;->mCanceled:Z

    .line 526
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 527
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 528
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 529
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 534
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 535
    .local v11, nodeCloneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/animation/AnimatorSet$Node;Landroid/animation/AnimatorSet$Node;>;"
    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_99

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 536
    .local v9, node:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v9}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v10

    .line 537
    .local v10, nodeClone:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v13, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 542
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 543
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 544
    iput-object v14, v10, Landroid/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 547
    iget-object v12, v10, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 548
    .local v2, cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_34

    .line 549
    const/4 v8, 0x0

    .line 550
    .local v8, listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    .line 551
    .local v7, listener:Landroid/animation/Animator$AnimatorListener;
    instance-of v12, v7, Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v12, :cond_68

    .line 552
    if-nez v8, :cond_7f

    .line 553
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .restart local v8       #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_7f
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 558
    .end local v7           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_83
    if-eqz v8, :cond_34

    .line 559
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_89
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    .line 560
    .restart local v7       #listener:Landroid/animation/Animator$AnimatorListener;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_89

    .line 567
    .end local v2           #cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Landroid/animation/AnimatorSet$Node;
    :cond_99
    iget-object v12, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_da

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 568
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$Node;

    .line 569
    .restart local v10       #nodeClone:Landroid/animation/AnimatorSet$Node;
    iget-object v12, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v12, :cond_9f

    .line 570
    iget-object v12, v9, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Dependency;

    .line 571
    .local v4, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget-object v12, v4, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    .line 572
    .local v3, clonedDependencyNode:Landroid/animation/AnimatorSet$Node;
    new-instance v1, Landroid/animation/AnimatorSet$Dependency;

    iget v12, v4, Landroid/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v1, v3, v12}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 574
    .local v1, cloneDependency:Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    goto :goto_bb

    .line 579
    .end local v1           #cloneDependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v3           #clonedDependencyNode:Landroid/animation/AnimatorSet$Node;
    .end local v4           #dependency:Landroid/animation/AnimatorSet$Dependency;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Landroid/animation/AnimatorSet$Node;
    :cond_da
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 5

    .prologue
    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mCanceled:Z

    .line 311
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_39

    .line 313
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 314
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 315
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_31

    .line 316
    new-instance v2, Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 318
    :cond_31
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a

    .line 321
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_39
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_42

    .line 322
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    :cond_42
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_62

    .line 325
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 326
    .restart local v1       #node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_50

    .line 329
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_62
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 192
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 194
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_1d
    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 378
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 354
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    .line 338
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 339
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 340
    const/4 v2, 0x1

    .line 343
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .registers 3
    .parameter "anim"

    .prologue
    .line 258
    if-eqz p1, :cond_b

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 260
    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 262
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public playSequentially(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x1

    .line 169
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 170
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1c

    .line 172
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 179
    :cond_1b
    return-void

    .line 174
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1b

    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .registers 6
    .parameter "items"

    .prologue
    const/4 v3, 0x1

    .line 150
    if-eqz p1, :cond_e

    .line 151
    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 152
    array-length v1, p1

    if-ne v1, v3, :cond_f

    .line 153
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    :cond_e
    return-void

    .line 155
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v1, p1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_e

    .line 156
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public playTogether(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/animation/Animator;>;"
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_27

    .line 131
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, builder:Landroid/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 134
    .local v0, anim:Landroid/animation/Animator;
    if-nez v1, :cond_23

    .line 135
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_10

    .line 137
    :cond_23
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_10

    .line 141
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v1           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_27
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .registers 5
    .parameter "items"

    .prologue
    .line 115
    if-eqz p1, :cond_18

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mNeedsSort:Z

    .line 117
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 118
    .local v0, builder:Landroid/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 119
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 122
    .end local v0           #builder:Landroid/animation/AnimatorSet$Builder;
    .end local v1           #i:I
    :cond_18
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .registers 7
    .parameter "duration"

    .prologue
    .line 391
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_e

    .line 392
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "duration must be a value of zero or greater"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_e
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 397
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_14

    .line 399
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_26
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    .line 400
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 5
    .parameter "interpolator"

    .prologue
    .line 224
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 225
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 227
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_18
    return-void
.end method

.method public setStartDelay(J)V
    .registers 3
    .parameter "startDelay"

    .prologue
    .line 365
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    .line 366
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 206
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    .line 207
    .local v2, node:Landroid/animation/AnimatorSet$Node;
    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    .line 208
    .local v0, animation:Landroid/animation/Animator;
    instance-of v3, v0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1e

    .line 209
    check-cast v0, Landroid/animation/AnimatorSet;

    .end local v0           #animation:Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_6

    .line 210
    .restart local v0       #animation:Landroid/animation/Animator;
    :cond_1e
    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_6

    .line 211
    check-cast v0, Landroid/animation/ObjectAnimator;

    .end local v0           #animation:Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_6

    .line 214
    .end local v2           #node:Landroid/animation/AnimatorSet$Node;
    :cond_28
    return-void
.end method

.method public setupEndValues()V
    .registers 4

    .prologue
    .line 412
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 413
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupEndValues()V

    goto :goto_6

    .line 415
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_18
    return-void
.end method

.method public setupStartValues()V
    .registers 4

    .prologue
    .line 405
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 406
    .local v1, node:Landroid/animation/AnimatorSet$Node;
    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->setupStartValues()V

    goto :goto_6

    .line 408
    .end local v1           #node:Landroid/animation/AnimatorSet$Node;
    :cond_18
    return-void
.end method

.method public start()V
    .registers 21

    .prologue
    .line 427
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/animation/AnimatorSet;->mCanceled:Z

    .line 431
    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->sortNodes()V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 434
    .local v13, numSortedNodes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_16
    if-ge v5, v13, :cond_5e

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 437
    .local v9, node:Landroid/animation/AnimatorSet$Node;
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v14

    .line 438
    .local v14, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v14, :cond_5b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_5b

    .line 439
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    .line 440
    .local v8, listener:Landroid/animation/Animator$AnimatorListener;
    move-object v0, v8

    instance-of v0, v0, Landroid/animation/AnimatorSet$DependencyListener;

    move/from16 v16, v0

    if-eqz v16, :cond_3c

    .line 441
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3c

    .line 434
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 451
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v14           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_5e
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v10, nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    :goto_64
    if-ge v5, v13, :cond_fe

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 454
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v16, v0

    if-nez v16, :cond_8e

    .line 455
    new-instance v16, Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$AnimatorSetListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    .line 457
    :cond_8e
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a0

    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_b4

    .line 458
    :cond_a0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :goto_a3
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mSetListener:Landroid/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 460
    :cond_b4
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 461
    .local v11, numDependencies:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_be
    if-ge v7, v11, :cond_f0

    .line 462
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Dependency;

    .line 463
    .local v4, dependency:Landroid/animation/AnimatorSet$Dependency;
    move-object v0, v4

    iget-object v0, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    new-instance v17, Landroid/animation/AnimatorSet$DependencyListener;

    move-object v0, v4

    iget v0, v0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/animation/AnimatorSet$DependencyListener;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 461
    add-int/lit8 v7, v7, 0x1

    goto :goto_be

    .line 466
    .end local v4           #dependency:Landroid/animation/AnimatorSet$Dependency;
    :cond_f0
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v9, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_a3

    .line 471
    .end local v7           #j:I
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    .end local v11           #numDependencies:I
    :cond_fe
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_131

    .line 472
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_10e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_171

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    .line 473
    .restart local v9       #node:Landroid/animation/AnimatorSet$Node;
    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->start()V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v9

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10e

    .line 478
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Landroid/animation/AnimatorSet$Node;
    :cond_131
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1b4

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v17, Landroid/animation/AnimatorSet$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->start()V

    .line 498
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1b3

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 501
    .local v15, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 502
    .local v12, numListeners:I
    const/4 v5, 0x0

    :goto_18a
    if-ge v5, v12, :cond_1b3

    .line 503
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_1b0

    .line 507
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 502
    :cond_1b0
    add-int/lit8 v5, v5, 0x1

    goto :goto_18a

    .line 511
    .end local v12           #numListeners:I
    .end local v15           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_1b3
    return-void

    .line 478
    :array_1b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
