.class Lcom/google/android/music/MusicPlaybackService$2;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 513
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/high16 v6, 0x3f80

    const v5, 0x3e4ccccd

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 519
    :pswitch_0
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3d4ccccd

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    .line 520
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 523
    :cond_0
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    goto :goto_1

    .line 528
    :pswitch_1
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    .line 529
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 534
    :goto_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 532
    :cond_1
    iput v6, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    goto :goto_2

    .line 537
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v4}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v2, v2}, Lcom/google/android/music/MusicPlaybackService;->access$900(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    goto :goto_0

    .line 548
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 549
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;Z)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto :goto_0

    .line 555
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 558
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 590
    :pswitch_6
    const-string v0, "MediaPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    :pswitch_7
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 564
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto/16 :goto_0

    .line 567
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 571
    :pswitch_9
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 575
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    goto/16 :goto_0

    .line 578
    :pswitch_a
    const-string v0, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1500(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    .line 582
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->setVolume(F)V

    .line 583
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_0

    .line 585
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 594
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    goto/16 :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_b
    .end packed-switch

    .line 558
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
