.class Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;
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
    name = "MediaPlayerThread"
.end annotation


# static fields
.field private static final PAUSE:I = 0x3

.field private static final PLAY:I = 0x2

.field private static final PREPARE:I = 0x1

.field private static final QUIT:I = 0x6

.field private static final SEEK:I = 0x4

.field private static final STOP:I = 0x5


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 466
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v2, v5

    .line 489
    .end local p0
    :goto_0
    return v2

    .line 468
    .restart local p0
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 469
    .local v1, args:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    aget-object p0, v1, v5

    .end local p0
    check-cast p0, Landroid/media/MediaPlayer;

    aget-object v2, v1, v4

    check-cast v2, Landroid/net/Uri;

    invoke-static {v3, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    move v2, v4

    .line 470
    goto :goto_0

    .line 472
    .end local v1           #args:[Ljava/lang/Object;
    .restart local p0
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$400(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 473
    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$500(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 476
    goto :goto_0

    .line 478
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$600(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    move v2, v4

    .line 479
    goto :goto_0

    .line 481
    :pswitch_4
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move v2, v4

    .line 482
    goto :goto_0

    .line 484
    :pswitch_5
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    .line 485
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 486
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v2, v4

    .line 487
    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    return-void
.end method

.method public playVideo()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void
.end method

.method public prepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .locals 4
    .parameter "mediaPlayer"
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 441
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    .line 442
    .local v0, args:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 436
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    .line 437
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 438
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    return-void
.end method

.method public stopVideo()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    return-void
.end method
