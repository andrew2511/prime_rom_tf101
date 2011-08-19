.class Lcom/google/android/gm/TwoPaneActivity$5;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"

# interfaces
.implements Lcom/google/android/gm/CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandAccepted(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 940
    sparse-switch p1, :sswitch_data_0

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 949
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivity;->access$1000(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 950
    .local v0, conversation:Lcom/google/android/gm/ConversationInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v1, v1, Lcom/google/android/gm/TwoPaneActivity;->mBatchConversations:Lcom/google/android/gm/ConversationSelectionSet;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->onDestructiveCommand(Z)V

    .line 957
    :cond_1
    const v1, 0x7f0e005d

    if-eq p1, v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivity;->access$1100(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/SelectedConversationsActionMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/SelectedConversationsActionMenu;->fadeOnDestructiveCommand()V

    goto :goto_0

    .line 940
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_0
        0x7f0e005d -> :sswitch_0
        0x7f0e00a5 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00aa -> :sswitch_0
        0x7f0e00c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    const/4 v1, 0x1

    .line 966
    if-eqz p2, :cond_1

    .line 967
    const v0, 0x7f0e005d

    if-eq p1, v0, :cond_0

    const v0, 0x7f0e00b0

    if-ne p1, v0, :cond_2

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gm/ConversationListFragment;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->hideUndoView(Z)V

    .line 975
    :cond_1
    return-void

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$5;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v0, v0, Lcom/google/android/gm/TwoPaneActivity;->mConversationListFragment:Lcom/google/android/gm/ConversationListFragment;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ConversationListFragment;->postUndo(Lcom/google/android/gm/UndoOperation;)V

    goto :goto_0
.end method
