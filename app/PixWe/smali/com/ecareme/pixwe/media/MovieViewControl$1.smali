.class Lcom/ecareme/pixwe/media/MovieViewControl$1;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/MovieViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MovieViewControl;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MovieViewControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MovieViewControl$1;->this$0:Lcom/ecareme/pixwe/media/MovieViewControl;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieViewControl$1;->this$0:Lcom/ecareme/pixwe/media/MovieViewControl;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MovieViewControl;->access$0(Lcom/ecareme/pixwe/media/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieViewControl$1;->this$0:Lcom/ecareme/pixwe/media/MovieViewControl;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MovieViewControl;->access$1(Lcom/ecareme/pixwe/media/MovieViewControl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieViewControl$1;->this$0:Lcom/ecareme/pixwe/media/MovieViewControl;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MovieViewControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MovieViewControl$1;->this$0:Lcom/ecareme/pixwe/media/MovieViewControl;

    iget-object v1, v1, Lcom/ecareme/pixwe/media/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
