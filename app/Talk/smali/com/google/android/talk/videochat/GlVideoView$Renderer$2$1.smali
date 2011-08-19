.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$2$1;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2$1;->this$2:Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoAvailable()V

    .line 298
    return-void
.end method
