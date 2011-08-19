.class Lcom/google/android/talk/videochat/VideoChatService$8;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService;->handleMessageResponseFromIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;

.field final synthetic val$accountId:J

.field final synthetic val$original:Ljava/lang/String;

.field final synthetic val$remoteJid:Ljava/lang/String;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$response:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$accountId:J

    iput-object p5, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$remoteJid:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$original:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 653
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$response:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/JingleInfoManager;->parseStanza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v1, "Talk:videochat"

    const-string v2, "handleMessageResponseFromIntent: stopServiceIfSafe"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$900(Lcom/google/android/talk/videochat/VideoChatService;)Z

    goto :goto_0

    .line 664
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatService;->getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v0

    .line 665
    .local v0, videoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 666
    const-string v1, "Talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessageResponseFromIntent, remoteJid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$remoteJid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$remoteJid:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$accountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$original:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService$8;->val$response:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatSession;->handleMessageResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    const-string v1, "Talk:videochat"

    const-string v2, "handleMessageResponseFromIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
