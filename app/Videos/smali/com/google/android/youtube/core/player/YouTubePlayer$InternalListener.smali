.class Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mediaPlayer"
    .parameter "newPercent"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$2000(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 584
    .local v0, percent:I
    const/16 v1, 0x5a

    if-le p2, v1, :cond_1

    if-eq v0, p2, :cond_0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 585
    :cond_0
    const/16 p2, 0x64

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$2000(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 588
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mediaPlayer"

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 598
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    .line 599
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 600
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 601
    .local v0, duration:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/16 v2, 0x64

    invoke-static {v1, v0, v2, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V

    .line 602
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2302(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 603
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1600(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    .line 604
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, ", extra="

    const-string v5, "]"

    .line 607
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1300(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 609
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer error during prepare [what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 617
    :goto_0
    if-ne p2, v4, :cond_1

    invoke-static {}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2400()Ljava/util/Set;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    .line 620
    .local v0, fatal:Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2508(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying MediaPlayer error [retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2500(Lcom/google/android/youtube/core/player/YouTubePlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2600(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 631
    :goto_2
    return v4

    .line 612
    .end local v0           #fatal:Z
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 613
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer error during playback [what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 617
    goto/16 :goto_1

    .line 624
    .restart local v0       #fatal:Z
    :cond_2
    const-string v1, "Reporting MediaPlayer error"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 626
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 627
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 628
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2502(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 629
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1, p2, p3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;II)V

    goto :goto_2
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mediaPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media player info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 636
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffering data from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2600(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 642
    :cond_0
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 647
    :cond_1
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mediaPlayer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 559
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1302(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 561
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1400(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1500(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1600(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 567
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mediaPlayer"

    .prologue
    .line 593
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5
    .parameter "mediaPlayer"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 570
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 571
    if-lez p2, :cond_1

    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video width must be positive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 572
    if-lez p3, :cond_2

    move v0, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video height must be positive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$802(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 574
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, p3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$902(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 575
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1802(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 577
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 579
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 571
    goto :goto_0

    :cond_2
    move v0, v4

    .line 572
    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 547
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 548
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 538
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1002(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1200(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)V

    .line 542
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1102(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;

    .line 544
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 553
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 554
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$1002(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z

    .line 556
    return-void
.end method
