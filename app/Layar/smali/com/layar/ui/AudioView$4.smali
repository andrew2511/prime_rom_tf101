.class Lcom/layar/ui/AudioView$4;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lcom/layar/ui/AudioView$4;->this$0:Lcom/layar/ui/AudioView;

    .line 74
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
    .line 77
    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/layar/ui/AudioView$4;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/layar/ui/AudioView$4;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 84
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 87
    return-void
.end method
