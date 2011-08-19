.class Lcom/google/android/music/MusicPlaybackService$8;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 892
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 893
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->val$intent:Landroid/content/Intent;

    const-string v3, "command"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, cmd:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 897
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 898
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 930
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 899
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_2
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_0

    .line 901
    :cond_4
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 902
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 903
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 904
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_0

    .line 906
    :cond_6
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 907
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_0

    .line 909
    :cond_7
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 910
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v3, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    goto :goto_0

    .line 914
    :cond_8
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 915
    :cond_9
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 916
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    goto :goto_0

    .line 917
    :cond_a
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 918
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_0

    .line 919
    :cond_b
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 920
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 921
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z

    .line 922
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 923
    :cond_c
    const-string v2, "com.android.music.musicservicecommand.veto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 926
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, v5}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 927
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean v4, v2, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_0
.end method

.method public taskCompleted()V
    .locals 4

    .prologue
    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2100(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 937
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2100(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 938
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2100(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 942
    return-void

    .line 940
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$8;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
