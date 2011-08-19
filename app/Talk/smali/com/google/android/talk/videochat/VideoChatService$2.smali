.class Lcom/google/android/talk/videochat/VideoChatService$2;
.super Ljava/lang/Object;
.source "VideoChatService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 139
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$2;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 141
    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 142
    .local v0, s:Lcom/google/android/gtalkservice/IGTalkService;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService$2;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-static {v1, v0}, Lcom/google/android/talk/videochat/VideoChatService;->access$200(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/gtalkservice/IGTalkService;)V

    .line 143
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$2;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatService;->access$302(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 147
    return-void
.end method
