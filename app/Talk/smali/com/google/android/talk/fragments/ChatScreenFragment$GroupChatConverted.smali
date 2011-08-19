.class Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupChatConverted"
.end annotation


# instance fields
.field mAccountId:J

.field mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/gtalkservice/IChatSession;J)V
    .locals 0
    .parameter
    .parameter "session"
    .parameter "accountId"

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 1695
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1696
    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    .line 1697
    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 1749
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 1744
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 1745
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertedToGroupChat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1731
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3502(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0, p0}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 1748
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "from"
    .parameter "body"
    .parameter "notify"

    .prologue
    .line 1746
    return-void
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 1747
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 1750
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 1751
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 1741
    const/4 v0, 0x0

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 1703
    return-void
.end method
