.class Lcom/google/android/talk/videochat/VideoChatService$4;
.super Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 2
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatService$4$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService$4$1;-><init>(Lcom/google/android/talk/videochat/VideoChatService$4;JLcom/google/android/talk/videochat/ICallStateListener;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$700(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public removeRemoteCallStateListener(JLcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 2
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatService$4$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService$4$2;-><init>(Lcom/google/android/talk/videochat/VideoChatService$4;JLcom/google/android/talk/videochat/ICallStateListener;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$700(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public requestCallStateUpdate(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$4;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatService$4$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatService$4$3;-><init>(Lcom/google/android/talk/videochat/VideoChatService$4;J)V

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$700(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/Runnable;)V

    .line 558
    return-void
.end method
