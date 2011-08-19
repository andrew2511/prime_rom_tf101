.class Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;
.super Ljava/lang/Object;
.source "RemoteVideoChatAccessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 81
    invoke-static {p2}, Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/talk/videochat/IVideoChatServiceBinder;

    move-result-object v0

    .line 82
    .local v0, s:Lcom/google/android/talk/videochat/IVideoChatServiceBinder;
    iget-object v1, p0, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$1;->this$0:Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    invoke-static {v1, v0}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->access$100(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;Lcom/google/android/talk/videochat/IVideoChatServiceBinder;)V

    .line 83
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 85
    return-void
.end method
