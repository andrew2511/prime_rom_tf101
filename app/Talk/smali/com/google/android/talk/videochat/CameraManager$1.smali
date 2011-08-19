.class Lcom/google/android/talk/videochat/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/CameraManager;->createLastFramePusher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager$1;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$1;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$100(Lcom/google/android/talk/videochat/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager$1;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CameraManager;->access$900(Lcom/google/android/talk/videochat/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager$1;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CameraManager;->access$1000(Lcom/google/android/talk/videochat/CameraManager;)V

    .line 767
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager$1;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CameraManager;->access$900(Lcom/google/android/talk/videochat/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 769
    :cond_0
    monitor-exit v0

    .line 770
    const/4 v0, 0x1

    return v0

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
