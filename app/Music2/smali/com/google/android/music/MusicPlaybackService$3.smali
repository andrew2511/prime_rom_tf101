.class Lcom/google/android/music/MusicPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
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
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, cmd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver.onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 608
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 611
    :cond_3
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_0

    .line 612
    :cond_4
    const-string v3, "togglepause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 613
    :cond_5
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 614
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 615
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_0

    .line 617
    :cond_6
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_0

    .line 619
    :cond_7
    const-string v3, "pause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 620
    :cond_8
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 621
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_0

    .line 622
    :cond_9
    const-string v3, "play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 623
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_0

    .line 624
    :cond_a
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 625
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 626
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3, v5}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 627
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 628
    :cond_b
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 632
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MediaAppWidgetProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$3;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V

    goto/16 :goto_0
.end method
