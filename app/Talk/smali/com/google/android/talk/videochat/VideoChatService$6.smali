.class Lcom/google/android/talk/videochat/VideoChatService$6;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatService;->requestLocalVideoChatSession(JLcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;

.field final synthetic val$accountId:J

.field final synthetic val$callback:Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;JLcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->val$accountId:J

    iput-object p4, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->val$callback:Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 587
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatService;->getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v0

    .line 588
    .local v0, session:Lcom/google/android/talk/videochat/VideoChatSession;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$6;->val$callback:Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;

    invoke-interface {v1, v0}, Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;->onSessionReady(Lcom/google/android/talk/videochat/VideoChatSession;)V

    .line 589
    return-void
.end method
