.class Lcom/google/android/talk/videochat/VideoChatActivity$9;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 904
    check-cast p2, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;->getService()Lcom/google/android/talk/videochat/VideoChatService;

    move-result-object v0

    .line 905
    .local v0, vcService:Lcom/google/android/talk/videochat/VideoChatService;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2100(Lcom/google/android/talk/videochat/VideoChatActivity;)J

    move-result-wide v1

    new-instance v3, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$9;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatService;->requestLocalVideoChatSession(JLcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;)V

    .line 906
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 910
    return-void
.end method
