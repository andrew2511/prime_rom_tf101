.class Lcom/google/android/music/MusicPlaybackService$14;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->play()V
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
    .line 1432
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    .line 1436
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1441
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1465
    :goto_0
    return-void

    .line 1444
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1447
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$900(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    .line 1449
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2900(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 1450
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$2900(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->seek(J)J

    .line 1451
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$2902(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1456
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 1457
    .local v0, duration:J
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-eq v2, v5, :cond_2

    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->position()J

    move-result-wide v2

    sub-long v4, v0, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1459
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 1461
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v0           #duration:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$14;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
