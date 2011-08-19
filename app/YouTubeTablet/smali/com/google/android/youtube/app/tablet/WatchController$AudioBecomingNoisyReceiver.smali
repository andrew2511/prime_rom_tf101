.class Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WatchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/WatchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/WatchController;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/tablet/WatchController;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/tablet/WatchController;Lcom/google/android/youtube/app/tablet/WatchController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/app/tablet/WatchController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 571
    const-string v0, "Audio becoming noisy. Pausing if needed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/WatchController;->access$300(Lcom/google/android/youtube/app/tablet/WatchController;)Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/WatchController;->access$300(Lcom/google/android/youtube/app/tablet/WatchController;)Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 575
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/WatchController;->access$100(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/WatchController;->access$200(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 567
    return-void
.end method
