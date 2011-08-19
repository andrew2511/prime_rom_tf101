.class Lcom/google/android/gm/ConversationListFragment$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 122
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$000(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$000(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationListFragment$ActiveCommand;->onCommandCompleted()V

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->access$002(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/ConversationListFragment$ActiveCommand;)Lcom/google/android/gm/ConversationListFragment$ActiveCommand;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$200(Lcom/google/android/gm/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v1}, Lcom/google/android/gm/ConversationListFragment;->access$100(Lcom/google/android/gm/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment$1;->this$0:Lcom/google/android/gm/ConversationListFragment;

    iget-wide v2, v2, Lcom/google/android/gm/ConversationListFragment;->SHOW_UNDO_DELAY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 141
    return-void
.end method
