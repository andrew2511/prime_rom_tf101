.class public Lcom/android/vending/compat/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/compat/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

.field final synthetic this$0:Lcom/android/vending/compat/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/animation/AnimatorSet;Lcom/android/vending/compat/animation/Animator;)V
    .locals 2
    .parameter
    .parameter "anim"

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    invoke-static {p1}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 848
    iget-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lcom/android/vending/compat/animation/AnimatorSet$Node;-><init>(Lcom/android/vending/compat/animation/Animator;)V

    iput-object v0, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 850
    invoke-static {p1}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-static {p1}, Lcom/android/vending/compat/animation/AnimatorSet;->access$300(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_0
    return-void
.end method


# virtual methods
.method public before(Lcom/android/vending/compat/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 882
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 883
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 884
    new-instance v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/android/vending/compat/animation/AnimatorSet$Node;-><init>(Lcom/android/vending/compat/animation/Animator;)V

    .line 885
    .restart local v1       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$300(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_0
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;-><init>(Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V

    .line 889
    .local v0, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/android/vending/compat/animation/AnimatorSet$Node;->addDependency(Lcom/android/vending/compat/animation/AnimatorSet$Dependency;)V

    .line 890
    return-void
.end method

.method public with(Lcom/android/vending/compat/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 863
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 864
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 865
    new-instance v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/android/vending/compat/animation/AnimatorSet$Node;-><init>(Lcom/android/vending/compat/animation/Animator;)V

    .line 866
    .restart local v1       #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$100(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$300(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    new-instance v0, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/android/vending/compat/animation/AnimatorSet$Node;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/vending/compat/animation/AnimatorSet$Dependency;-><init>(Lcom/android/vending/compat/animation/AnimatorSet$Node;I)V

    .line 870
    .local v0, dependency:Lcom/android/vending/compat/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/android/vending/compat/animation/AnimatorSet$Node;->addDependency(Lcom/android/vending/compat/animation/AnimatorSet$Dependency;)V

    .line 871
    return-void
.end method
