.class Lcom/layar/ui/AudioView$1;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/AudioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AudioView;


# direct methods
.method constructor <init>(Lcom/layar/ui/AudioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 211
    iget-object v0, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$1(Lcom/layar/ui/AudioView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$2(Lcom/layar/ui/AudioView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 213
    iget-object v0, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/layar/ui/AudioView$1;->this$0:Lcom/layar/ui/AudioView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lcom/layar/ui/AudioView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    return-void
.end method
