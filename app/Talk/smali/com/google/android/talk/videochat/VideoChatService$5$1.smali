.class Lcom/google/android/talk/videochat/VideoChatService$5$1;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService$5;->requestVideoChatSession(JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatService$5;

.field final synthetic val$accountId:J

.field final synthetic val$callback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService$5;JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->this$1:Lcom/google/android/talk/videochat/VideoChatService$5;

    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->val$accountId:J

    iput-object p4, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->val$callback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 567
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->this$1:Lcom/google/android/talk/videochat/VideoChatService$5;

    iget-object v2, v2, Lcom/google/android/talk/videochat/VideoChatService$5;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/talk/videochat/VideoChatService;->getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v1

    .line 569
    .local v1, session:Lcom/google/android/talk/videochat/IVideoChatSession;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService$5$1;->val$callback:Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;

    invoke-interface {v2, v1}, Lcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;->onSessionReady(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Talk:videochat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[requestVideoChatSession] RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
