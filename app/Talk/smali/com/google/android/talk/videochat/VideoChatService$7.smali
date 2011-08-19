.class Lcom/google/android/talk/videochat/VideoChatService$7;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService;->handleIncomingMessageFromIntent(Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;

.field final synthetic val$accountId:J

.field final synthetic val$remoteJid:Ljava/lang/String;

.field final synthetic val$stanzaXml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$accountId:J

    iput-object p4, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$stanzaXml:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$remoteJid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 619
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/talk/videochat/VideoChatService;->getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v1

    .line 620
    .local v1, videoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$stanzaXml:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 621
    const-string v2, "Talk:videochat"

    const-string v3, "Intent must include message extra."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 627
    const-string v2, "Talk:videochat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIncomingCall, remoteJid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$remoteJid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_1
    new-instance v0, Lcom/google/android/talk/util/SessionStanzaParser;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$stanzaXml:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/talk/util/SessionStanzaParser;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, stanza:Lcom/google/android/talk/util/SessionStanzaParser;
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->val$remoteJid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/talk/videochat/VideoChatSession;->handleIncomingMessage(Ljava/lang/String;Lcom/google/android/talk/util/SessionStanzaParser;)V

    .line 633
    const-string v2, "initiate"

    iget-object v3, v0, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$7;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatService;->access$800(Lcom/google/android/talk/videochat/VideoChatService;)V

    goto :goto_0

    .line 629
    .end local v0           #stanza:Lcom/google/android/talk/util/SessionStanzaParser;
    :cond_2
    const-string v2, "Talk:videochat"

    const-string v3, "handleIncomingCall"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
