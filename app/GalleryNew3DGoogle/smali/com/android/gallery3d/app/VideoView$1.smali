.class Lcom/android/gallery3d/app/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoView;->access$002(Lcom/android/gallery3d/app/VideoView;I)I

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoView;->access$102(Lcom/android/gallery3d/app/VideoView;I)I

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v1}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$1;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 271
    :cond_0
    return-void
.end method
