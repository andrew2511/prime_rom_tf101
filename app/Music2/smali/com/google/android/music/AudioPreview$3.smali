.class Lcom/google/android/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/google/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 322
    if-nez p3, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    invoke-static {v0}, Lcom/google/android/music/AudioPreview;->access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$902(Lcom/google/android/music/AudioPreview;Z)Z

    .line 320
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/music/AudioPreview$3;->this$0:Lcom/google/android/music/AudioPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/AudioPreview;->access$902(Lcom/google/android/music/AudioPreview;Z)Z

    .line 329
    return-void
.end method
