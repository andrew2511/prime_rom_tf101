.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer;->handleSurfaceChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$100(Lcom/google/android/talk/videochat/GlVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$102(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 294
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2$1;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->post(Ljava/lang/Runnable;)Z

    .line 301
    :cond_0
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$1200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v1, v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/GlVideoView;->access$202(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
