.class Lcom/google/android/talk/videochat/VideoChatService$4$1;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService$4;->addRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatService$4;

.field final synthetic val$accountId:J

.field final synthetic val$listener:Lcom/google/android/talk/videochat/ICallStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService$4;JLcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->this$1:Lcom/google/android/talk/videochat/VideoChatService$4;

    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->val$accountId:J

    iput-object p4, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->val$listener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->this$1:Lcom/google/android/talk/videochat/VideoChatService$4;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$600(Lcom/google/android/talk/videochat/VideoChatService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->this$1:Lcom/google/android/talk/videochat/VideoChatService$4;

    iget-object v1, v1, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatService;->getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v0

    .line 515
    .local v0, session:Lcom/google/android/talk/videochat/VideoChatSession;
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$4$1;->val$listener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->addRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    goto :goto_0
.end method
