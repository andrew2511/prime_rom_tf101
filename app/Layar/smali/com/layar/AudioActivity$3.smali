.class Lcom/layar/AudioActivity$3;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/AudioActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/layar/AudioActivity$3;->this$0:Lcom/layar/AudioActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 66
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/layar/AudioActivity$3;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/layar/AudioActivity$3;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 70
    return-void
.end method
