.class Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

.field final synthetic val$groupChatRoom:Ljava/lang/String;

.field final synthetic val$oldJid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$oldJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$groupChatRoom:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1718
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-wide v3, v3, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 1719
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$oldJid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 1720
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v0, :cond_0

    .line 1721
    invoke-interface {v0}, Lcom/google/android/gtalkservice/IChatSession;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1727
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatSwitcher;->resumeRequery()V

    .line 1728
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->val$groupChatRoom:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;

    iget-wide v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    .line 1729
    return-void

    .line 1723
    :catch_0
    move-exception v2

    goto :goto_0
.end method
