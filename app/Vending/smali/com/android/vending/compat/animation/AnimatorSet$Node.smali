.class Lcom/android/vending/compat/animation/AnimatorSet$Node;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public animation:Lcom/android/vending/compat/animation/Animator;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/AnimatorSet$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/vending/compat/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 713
    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 719
    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 726
    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->done:Z

    .line 743
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    .line 744
    return-void
.end method


# virtual methods
.method public addDependency(Lcom/android/vending/compat/animation/AnimatorSet$Dependency;)V
    .locals 3
    .parameter "dependency"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_1
    iget-object v0, p1, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;->node:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 761
    .local v0, dependencyNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v1, v0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 764
    :cond_2
    iget-object v1, v0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    return-void
.end method

.method public clone()Lcom/android/vending/compat/animation/AnimatorSet$Node;
    .locals 3

    .prologue
    .line 770
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 771
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/Animator;->clone()Lcom/android/vending/compat/animation/Animator;

    move-result-object v2

    iput-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    return-object v1

    .line 773
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 774
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/AnimatorSet$Node;->clone()Lcom/android/vending/compat/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method
