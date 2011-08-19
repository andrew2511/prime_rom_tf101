.class Lcom/google/android/gm/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationListFragment;->bindActivityInfo(Lcom/google/android/gm/ConversationListController;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationSelectionSet;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CanvasConversationHeaderView$StarHandler;Lcom/google/android/gm/ViewMode;Landroid/view/ViewGroup;)V
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
    .line 330
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$5;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 334
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 339
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 344
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$5;->this$0:Lcom/google/android/gm/ConversationListFragment;

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v1, p0, Lcom/google/android/gm/ConversationListFragment$5;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v1}, Lcom/google/android/gm/ConversationListFragment;->access$800(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationListFragment$5;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v2}, Lcom/google/android/gm/ConversationListFragment;->access$600(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/UndoOperation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$5;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$700(Lcom/google/android/gm/ConversationListFragment;)V

    .line 350
    return-void
.end method
