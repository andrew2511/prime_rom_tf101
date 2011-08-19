.class Lcom/google/android/talk/videochat/VideoChatService$5;
.super Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;
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
    .line 562
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$5;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestVideoChatSession(JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V
    .locals 2
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$5;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatService$5$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService$5$1;-><init>(Lcom/google/android/talk/videochat/VideoChatService$5;JLcom/google/android/talk/videochat/IVideoChatSessionReadyCallback;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$700(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method
