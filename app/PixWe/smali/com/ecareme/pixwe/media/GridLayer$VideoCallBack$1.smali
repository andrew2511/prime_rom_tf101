.class Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1669
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->access$1(Lcom/ecareme/pixwe/media/GridLayer;Z)V

    .line 1671
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/GridLayer;->access$0(Lcom/ecareme/pixwe/media/GridLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack$1;->this$1:Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;->access$0(Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/ecareme/pixwe/media/GridLayer;->access$2(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/RenderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1672
    return-void
.end method
