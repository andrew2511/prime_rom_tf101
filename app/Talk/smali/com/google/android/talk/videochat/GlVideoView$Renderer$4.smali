.class Lcom/google/android/talk/videochat/GlVideoView$Renderer$4;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/GlVideoView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
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
    .line 439
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$4;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer$4;->this$1:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->setBackgroundColor(I)V

    .line 445
    return-void
.end method
