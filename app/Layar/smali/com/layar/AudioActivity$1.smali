.class Lcom/layar/AudioActivity$1;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/AudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/AudioActivity;


# direct methods
.method constructor <init>(Lcom/layar/AudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 193
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8

    .line 196
    .local v0, seconds:I
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$1(Lcom/layar/AudioActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v2}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$2(Lcom/layar/AudioActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v2}, Lcom/layar/AudioActivity;->access$3(Lcom/layar/AudioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 200
    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/AudioActivity$1;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$4(Lcom/layar/AudioActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    .end local v0           #seconds:I
    :cond_0
    return-void
.end method
