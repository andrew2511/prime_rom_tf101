.class Lcom/google/android/gm/TwoPaneActivity$4$1;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TwoPaneActivity$4;->onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/TwoPaneActivity$4;

.field final synthetic val$undoOperation:Lcom/google/android/gm/UndoOperation;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivity$4;Lcom/google/android/gm/UndoOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iput-object p2, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$900(Lcom/google/android/gm/TwoPaneActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 926
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gm/HtmlConversationFragment;->hideUndoView(Z)V

    .line 931
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->val$undoOperation:Lcom/google/android/gm/UndoOperation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 929
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$4$1;->this$1:Lcom/google/android/gm/TwoPaneActivity$4;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ConversationListFragment;->hideUndoView(Z)V

    goto :goto_0
.end method
