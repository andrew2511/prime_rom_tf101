.class Lcom/google/android/talk/videochat/CameraManager$1Latch;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Latch"
.end annotation


# instance fields
.field mState:Z

.field final synthetic this$0:Lcom/google/android/talk/videochat/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager$1Latch;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized awaitSet()V
    .locals 1

    .prologue
    .line 974
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager$1Latch;->mState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 976
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    goto :goto_0

    .line 980
    :cond_0
    monitor-exit p0

    return-void

    .line 974
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized set()V
    .locals 1

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager$1Latch;->mState:Z

    if-nez v0, :cond_0

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager$1Latch;->mState:Z

    .line 970
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :cond_0
    monitor-exit p0

    return-void

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
