.class Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;
.super Ljava/lang/Object;
.source "RemoteVideoChatStateAccessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 80
    invoke-static {p2}, Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    move-result-object v0

    .line 81
    .local v0, s:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-static {v1, v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->access$000(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)V

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->onDisconnected()V

    .line 89
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->unregisterCallStateListener()V

    .line 90
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->access$102(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;)Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder;

    .line 91
    iget-object v0, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-static {v1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->access$200(Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;)Lcom/google/android/talk/videochat/ICallStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->registerCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 92
    return-void
.end method
