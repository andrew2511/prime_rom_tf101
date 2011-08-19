.class Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CameraManager;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/CameraManager;Lcom/google/android/talk/videochat/CameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;-><init>(Lcom/google/android/talk/videochat/CameraManager;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$100(Lcom/google/android/talk/videochat/CameraManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$200(Lcom/google/android/talk/videochat/CameraManager;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 540
    .local v3, timeNow:J
    const/4 v6, 0x0

    .line 541
    .local v6, dropFrame:Z
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$300(Lcom/google/android/talk/videochat/CameraManager;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$300(Lcom/google/android/talk/videochat/CameraManager;)J

    move-result-wide v0

    sub-long v0, v3, v0

    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v2}, Lcom/google/android/talk/videochat/CameraManager;->access$400(Lcom/google/android/talk/videochat/CameraManager;)J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 543
    const/4 v6, 0x1

    .line 546
    :cond_0
    if-nez v6, :cond_1

    .line 547
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CameraManager;->access$200(Lcom/google/android/talk/videochat/CameraManager;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v2}, Lcom/google/android/talk/videochat/CameraManager;->access$500(Lcom/google/android/talk/videochat/CameraManager;)I

    move-result v5

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/CameraManager;->access$600(Lcom/google/android/talk/videochat/CameraManager;I[BJI)V

    .line 549
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0, v3, v4}, Lcom/google/android/talk/videochat/CameraManager;->access$302(Lcom/google/android/talk/videochat/CameraManager;J)J

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$700(Lcom/google/android/talk/videochat/CameraManager;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->access$700(Lcom/google/android/talk/videochat/CameraManager;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v0, p1}, Lcom/google/android/talk/videochat/CameraManager;->access$702(Lcom/google/android/talk/videochat/CameraManager;[B)[B

    .line 563
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;->this$0:Lcom/google/android/talk/videochat/CameraManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CameraManager;->access$500(Lcom/google/android/talk/videochat/CameraManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/CameraManager;->access$802(Lcom/google/android/talk/videochat/CameraManager;I)I

    .line 565
    .end local v3           #timeNow:J
    .end local v6           #dropFrame:Z
    :cond_3
    monitor-exit v7

    .line 566
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
