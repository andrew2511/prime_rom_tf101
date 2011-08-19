.class Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/phone/WatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/phone/WatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/phone/WatchActivity;Lcom/google/android/youtube/videos/phone/WatchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/videos/phone/WatchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 357
    const-string v0, "Audio becoming noisy. Pausing if needed"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->access$100(Lcom/google/android/youtube/videos/phone/WatchActivity;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-static {v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->access$100(Lcom/google/android/youtube/videos/phone/WatchActivity;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 361
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    return-void
.end method
