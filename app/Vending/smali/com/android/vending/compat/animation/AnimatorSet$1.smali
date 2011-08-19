.class Lcom/android/vending/compat/animation/AnimatorSet$1;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/compat/animation/AnimatorSet;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/compat/animation/AnimatorSet;

.field final synthetic val$nodesToStart:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vending/compat/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/vending/compat/animation/AnimatorSet$1;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    iput-object p2, p0, Lcom/android/vending/compat/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$1;->val$nodesToStart:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;

    .line 380
    .local v1, node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2}, Lcom/android/vending/compat/animation/Animator;->start()V

    .line 381
    iget-object v2, p0, Lcom/android/vending/compat/animation/AnimatorSet$1;->this$0:Lcom/android/vending/compat/animation/AnimatorSet;

    invoke-static {v2}, Lcom/android/vending/compat/animation/AnimatorSet;->access$000(Lcom/android/vending/compat/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Lcom/android/vending/compat/animation/AnimatorSet$Node;->animation:Lcom/android/vending/compat/animation/Animator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    .end local v1           #node:Lcom/android/vending/compat/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method
