.class Lcom/google/android/music/MediaPlaybackActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x1

    .line 1545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1549
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1550
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1551
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V

    .line 1552
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1577
    :cond_0
    :goto_0
    const-string v3, "com.android.music.playbackfailed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1578
    const-string v3, "errorType"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1581
    .local v2, failureType:I
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3, v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1400(Lcom/google/android/music/MediaPlaybackActivity;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1583
    .local v1, errorMessage:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    sget-object v4, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-static {v3, v4, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1500(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 1585
    .end local v1           #errorMessage:Ljava/lang/CharSequence;
    .end local v2           #failureType:I
    :cond_1
    return-void

    .line 1553
    :cond_2
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1554
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1555
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1557
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 1558
    :cond_3
    const-string v3, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.music.playbackfailed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1562
    :cond_4
    const-string v3, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1563
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1300(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1571
    :goto_1
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$002(Lcom/google/android/music/MediaPlaybackActivity;J)J

    .line 1572
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1573
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1574
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1564
    :cond_5
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1565
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V

    goto :goto_1

    .line 1568
    :cond_6
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity$10;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;)J

    goto :goto_1
.end method
