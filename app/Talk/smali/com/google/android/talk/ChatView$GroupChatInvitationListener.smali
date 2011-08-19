.class Lcom/google/android/talk/ChatView$GroupChatInvitationListener;
.super Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupChatInvitationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;-><init>()V

    .line 786
    return-void
.end method


# virtual methods
.method public onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 5
    .parameter "invitation"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2902(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 791
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$3002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$3102(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received MUC invitation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", room="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3200(Lcom/google/android/talk/ChatView;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 796
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, bareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3100(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/talk/ChatView;->access$3300(Lcom/google/android/talk/ChatView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v1, 0x1

    .line 812
    .end local v0           #bareJid:Ljava/lang/String;
    :goto_0
    return v1

    .line 808
    .restart local v0       #bareJid:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MUC invitation received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2900(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContact != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$GroupChatInvitationListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3000(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 812
    .end local v0           #bareJid:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
