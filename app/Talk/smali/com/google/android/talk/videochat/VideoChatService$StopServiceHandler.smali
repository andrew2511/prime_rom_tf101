.class Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;
.super Landroid/os/Handler;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/talk/videochat/VideoChatService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 847
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$900(Lcom/google/android/talk/videochat/VideoChatService;)Z

    .line 850
    :cond_0
    return-void
.end method
