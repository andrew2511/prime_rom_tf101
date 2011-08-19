.class Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/GridLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCallBack"
.end annotation


# instance fields
.field path:Landroid/net/Uri;

.field final synthetic this$0:Lcom/ecareme/pixwe/media/GridLayer;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/GridLayer;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "path"

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    .line 1646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->path:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;
    .locals 1
    .parameter

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    return-object v0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1654
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 1659
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1661
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/GridLayer;->access$0(Lcom/ecareme/pixwe/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->path:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1662
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1663
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1664
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1665
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;-><init>(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1674
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1685
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1677
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1678
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1680
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1681
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1683
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1691
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->this$0:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1694
    :cond_0
    return-void
.end method
