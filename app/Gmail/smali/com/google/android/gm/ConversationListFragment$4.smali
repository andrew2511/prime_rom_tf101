.class Lcom/google/android/gm/ConversationListFragment$4;
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
    .line 306
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 310
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    iget-object v0, v0, Lcom/google/android/gm/ConversationListFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->hide()V

    .line 315
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->access$602(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 316
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0, v1}, Lcom/google/android/gm/ConversationListFragment;->access$502(Lcom/google/android/gm/ConversationListFragment;Lcom/google/android/gm/UndoOperation;)Lcom/google/android/gm/UndoOperation;

    .line 317
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$700(Lcom/google/android/gm/ConversationListFragment;)V

    .line 318
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 323
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 328
    return-void
.end method
