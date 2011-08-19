.class Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;
.super Landroid/view/SurfaceView;
.source "YouTubePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 502
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 503
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 507
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    invoke-static {v2, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 508
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    invoke-static {v2, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 509
    .local v0, height:I
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    if-lez v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 511
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v3

    div-int v0, v2, v3

    .line 516
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->setMeasuredDimension(II)V

    .line 517
    return-void

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 513
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_0
.end method
