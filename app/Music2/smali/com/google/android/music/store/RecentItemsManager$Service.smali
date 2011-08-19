.class public Lcom/google/android/music/store/RecentItemsManager$Service;
.super Landroid/app/IntentService;
.source "RecentItemsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/RecentItemsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field public static final ACTION_RECORD:Ljava/lang/String; = "RecentItemsManagerService.recordCurrentlyPlayed"


# instance fields
.field private mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

.field private mPlaybackServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 356
    const-string v0, "RecentItemsManagerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 353
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    .line 357
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, action:Ljava/lang/String;
    const-string v8, "RecentItemsManagerService.recordCurrentlyPlayed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 363
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v6, serviceIntent:Landroid/content/Intent;
    const-class v8, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v6, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    const-wide/16 v4, -0x1

    .line 366
    .local v4, playlistId:J
    const-wide/16 v1, -0x1

    .line 367
    .local v1, albumId:J
    iget-object v8, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 368
    :try_start_0
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v9, :cond_0

    .line 371
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Should not be connected to the service."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 399
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 373
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v6, p0, v9}, Lcom/google/android/music/store/RecentItemsManager$Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 374
    const-string v9, "RecentItemsManager"

    const-string v10, "Failed to bind to playback service"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_2

    .line 404
    invoke-static {p0, v4, v5}, Lcom/google/android/music/store/RecentItemsManager;->access$000(Landroid/content/Context;J)V

    .line 406
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-eqz v8, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_3

    .line 407
    invoke-static {p0, v1, v2}, Lcom/google/android/music/store/RecentItemsManager;->access$100(Landroid/content/Context;J)V

    .line 410
    .end local v1           #albumId:J
    .end local v4           #playlistId:J
    .end local v6           #serviceIntent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 379
    .restart local v1       #albumId:J
    .restart local v4       #playlistId:J
    .restart local v6       #serviceIntent:Landroid/content/Intent;
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    const-wide/16 v10, 0x7530

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 380
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v9, :cond_5

    .line 381
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v9}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 382
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v9}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v7

    .line 383
    .local v7, songList:Lcom/google/android/music/medialist/SongList;
    instance-of v9, v7, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v9, :cond_6

    .line 384
    check-cast v7, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v7           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {v7}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v4

    .line 393
    :cond_5
    :goto_1
    :try_start_3
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v9, :cond_1

    .line 394
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 395
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 386
    .restart local v7       #songList:Lcom/google/android/music/medialist/SongList;
    :cond_6
    :try_start_4
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v9}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v1

    goto :goto_1

    .line 390
    .end local v7           #songList:Lcom/google/android/music/medialist/SongList;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 391
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v9, "RecentItemsManager"

    const-string v10, "Interrupted while waiting for playback service."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 393
    :try_start_6
    iget-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v9, :cond_1

    .line 394
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 395
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    goto :goto_0

    .line 393
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v10, :cond_7

    .line 394
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 395
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    :cond_7
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    check-cast p2, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .end local p2
    iput-object p2, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 417
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 418
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 424
    const-string v0, "RecentItemsManager"

    const-string v1, "Playback service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
