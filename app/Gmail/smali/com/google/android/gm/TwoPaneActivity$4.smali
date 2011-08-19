.class Lcom/google/android/gm/TwoPaneActivity$4;
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
    .line 855
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandAccepted(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 858
    sparse-switch p1, :sswitch_data_0

    .line 884
    :goto_0
    return-void

    .line 860
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->access$600(Lcom/google/android/gm/TwoPaneActivity;Z)V

    goto :goto_0

    .line 863
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->access$600(Lcom/google/android/gm/TwoPaneActivity;Z)V

    goto :goto_0

    .line 867
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/HtmlConversationFragment;->onMarkUnread()V

    .line 868
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/HtmlConversationFragment;->fadeOnDestructiveCommand()V

    .line 871
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->onDestructiveCommand(Z)V

    goto :goto_0

    .line 877
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v1}, Lcom/google/android/gm/TwoPaneActivity;->access$700(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/HtmlConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/HtmlConversationFragment;->fadeOnDestructiveCommand()V

    .line 880
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->getNextConversationOnDestructiveCommand(Z)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 881
    .local v0, info:Lcom/google/android/gm/ConversationInfo;
    iget-object v1, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    new-instance v2, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    iget-object v3, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;-><init>(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/ConversationInfo;)V

    invoke-static {v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->access$802(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    goto :goto_0

    .line 858
    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_3
        0x7f0e0044 -> :sswitch_1
        0x7f0e0045 -> :sswitch_0
        0x7f0e005d -> :sswitch_2
        0x7f0e00a5 -> :sswitch_3
        0x7f0e00a6 -> :sswitch_3
        0x7f0e00aa -> :sswitch_3
        0x7f0e00b0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCommandCompleted(ILcom/google/android/gm/UndoOperation;)V
    .locals 4
    .parameter "commandId"
    .parameter "undoOp"

    .prologue
    .line 888
    sparse-switch p1, :sswitch_data_0

    .line 910
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 934
    :goto_1
    return-void

    .line 893
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v2}, Lcom/google/android/gm/TwoPaneActivity;->access$800(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 896
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v2}, Lcom/google/android/gm/TwoPaneActivity;->access$800(Lcom/google/android/gm/TwoPaneActivity;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;->applyState()V

    .line 897
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gm/TwoPaneActivity;->access$802(Lcom/google/android/gm/TwoPaneActivity;Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;)Lcom/google/android/gm/TwoPaneActivity$PostCommandConversationState;

    goto :goto_0

    .line 901
    :sswitch_1
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v2, v2, Lcom/google/android/gm/TwoPaneActivity;->mConversationListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->isMagicInboxView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gm/TwoPaneActivity;->onDestructiveCommand(Z)V

    goto :goto_0

    .line 918
    :cond_1
    move-object v1, p2

    .line 919
    .local v1, undoOperation:Lcom/google/android/gm/UndoOperation;
    new-instance v0, Lcom/google/android/gm/TwoPaneActivity$4$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/TwoPaneActivity$4$1;-><init>(Lcom/google/android/gm/TwoPaneActivity$4;Lcom/google/android/gm/UndoOperation;)V

    .line 933
    .local v0, task:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/android/gm/TwoPaneActivity$4;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    iget-object v2, v2, Lcom/google/android/gm/TwoPaneActivity;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/MenuHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0043 -> :sswitch_0
        0x7f0e00a5 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_0
        0x7f0e00aa -> :sswitch_0
        0x7f0e00c7 -> :sswitch_1
    .end sparse-switch
.end method
