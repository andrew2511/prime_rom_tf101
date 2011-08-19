.class Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
.super Ljava/lang/Thread;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressNotifier"
.end annotation


# static fields
.field private static final QUIT:I = 0x2

.field private static final UPDATE:I = 0x1


# instance fields
.field private final bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final duration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 668
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 669
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 670
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 671
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 693
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 724
    :goto_0
    return v4

    .line 695
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 696
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_2

    .line 698
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 699
    .local v3, p:I
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 700
    .local v0, d:I
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->duration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 701
    if-lez v3, :cond_1

    .line 702
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2502(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I

    .line 706
    :cond_0
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 707
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->bufferedPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-static {v4, v3, v5, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V

    .line 709
    :cond_1
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #d:I
    .end local v3           #p:I
    :goto_1
    move v4, v8

    .line 717
    goto :goto_0

    .line 710
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 712
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "Error calling mediaPlayer"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 715
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    goto :goto_1

    .line 720
    .end local v2           #mediaPlayer:Landroid/media/MediaPlayer;
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 721
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    move v4, v8

    .line 722
    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 690
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 675
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 676
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    .line 677
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 678
    return-void
.end method

.method public startNotifying()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    return-void
.end method

.method public stopNotifying()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 686
    return-void
.end method
