.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer;-><init>(Lcom/google/android/talk/videochat/GlVideoView;Lcom/google/android/talk/videochat/GlVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

.field final synthetic val$this$0:Lcom/google/android/talk/videochat/GlVideoView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;Lcom/google/android/talk/videochat/GlVideoView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iput-object p2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->val$this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraParametersChanged(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureParametersChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v1, v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1, v4}, Lcom/google/android/talk/videochat/GlVideoView;->access$102(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 235
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v1, v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1, v4}, Lcom/google/android/talk/videochat/GlVideoView;->access$202(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 236
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1, p1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$300(Lcom/google/android/talk/videochat/GlVideoView$Renderer;Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V

    .line 237
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$500(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v1

    if-lez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v2}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$500(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 239
    .local v0, ar:F
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$600(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 240
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v1, v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setCameraFrameAspectRatio(F)V

    .line 244
    .end local v0           #ar:F
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$1000(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/GlVideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method
