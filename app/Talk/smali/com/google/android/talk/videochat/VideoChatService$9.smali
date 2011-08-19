.class Lcom/google/android/talk/videochat/VideoChatService$9;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService;->handleJingleInfoFromIntent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;

.field final synthetic val$payload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->val$payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/JingleInfoManager;->parseStanza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const-string v0, "Talk:videochat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleJingleInfoFromIntent: invalid jingle info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->val$payload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_1
    const-string v0, "Talk:videochat"

    const-string v1, "handleJingleInfoFromIntent: stopServiceIfSafe"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$9;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$900(Lcom/google/android/talk/videochat/VideoChatService;)Z

    goto :goto_0
.end method
