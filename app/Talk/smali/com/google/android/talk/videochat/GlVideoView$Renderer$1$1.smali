.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->onCameraParametersChanged(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureParametersChanged.run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v2, v2, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v2}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$800(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v2, v2, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v2}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v2, v2, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v2}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$500(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$800(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$800(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v1, v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$900(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v2, v2, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v2}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v3, v3, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v3}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$500(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    iget-object v4, v4, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v4}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$600(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/videochat/Libjingle;->setSelfViewFrameParameters(ZIII)V

    .line 255
    :cond_0
    return-void
.end method
