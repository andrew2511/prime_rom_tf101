.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer;->setLibjingleTarget(Lcom/google/android/talk/videochat/Libjingle;)V
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
    .line 336
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$800(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->initializeRenderer()V

    .line 340
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->access$1400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V

    .line 341
    return-void
.end method
