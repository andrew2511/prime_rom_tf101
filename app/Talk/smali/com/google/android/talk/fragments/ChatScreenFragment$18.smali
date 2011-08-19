.class Lcom/google/android/talk/fragments/ChatScreenFragment$18;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$accountId:J

.field final synthetic val$contact:Ljava/lang/String;

.field final synthetic val$invitee:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$contact:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$accountId:J

    iput-object p5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$invitee:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1776
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$contact:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$accountId:J

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v1

    .line 1778
    .local v1, session:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v1, :cond_1

    .line 1783
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3502(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 1785
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-wide v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$accountId:J

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/gtalkservice/IChatSession;J)V

    .line 1786
    .local v0, listener:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
    invoke-interface {v1, v0}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1794
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatSwitcher;->suspendRequery()V

    .line 1796
    .end local v0           #listener:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;->val$invitee:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IChatSession;->inviteContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :cond_1
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v2

    goto :goto_0
.end method
