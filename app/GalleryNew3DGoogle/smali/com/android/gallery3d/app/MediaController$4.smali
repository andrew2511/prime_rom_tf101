.class Lcom/android/gallery3d/app/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MediaController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 525
    if-nez p3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v4}, Lcom/android/gallery3d/app/MediaController;->access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 532
    .local v0, duration:J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 533
    .local v2, newposition:J
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v4}, Lcom/android/gallery3d/app/MediaController;->access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 534
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v4}, Lcom/android/gallery3d/app/MediaController;->access$600(Lcom/android/gallery3d/app/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v4}, Lcom/android/gallery3d/app/MediaController;->access$600(Lcom/android/gallery3d/app/MediaController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    long-to-int v6, v2

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/MediaController;->access$700(Lcom/android/gallery3d/app/MediaController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MediaController;->access$202(Lcom/android/gallery3d/app/MediaController;Z)Z

    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v0}, Lcom/android/gallery3d/app/MediaController;->access$500(Lcom/android/gallery3d/app/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MediaController;->access$202(Lcom/android/gallery3d/app/MediaController;Z)Z

    .line 540
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v0}, Lcom/android/gallery3d/app/MediaController;->access$100(Lcom/android/gallery3d/app/MediaController;)I

    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v0}, Lcom/android/gallery3d/app/MediaController;->access$800(Lcom/android/gallery3d/app/MediaController;)V

    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/app/MediaController$4;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v0}, Lcom/android/gallery3d/app/MediaController;->access$500(Lcom/android/gallery3d/app/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    return-void
.end method
