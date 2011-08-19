.class public Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;
.super Lcom/google/android/music/AsyncAlbumArtImageView;
.source "NowPlayingAlbumArtImageView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsAttached:Z

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AsyncAlbumArtImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mIsAttached:Z

    .line 63
    new-instance v0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView$1;-><init>(Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;)V

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    iput-object p1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->updateNowPlayingAlbumArt()V

    return-void
.end method

.method private updateNowPlayingAlbumArt()V
    .locals 4

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onAttachedToWindow()V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->onAttachedToWindow()V

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mIsAttached:Z

    .line 41
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 39
    .end local v0           #f:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->onDetachedFromWindow()V

    .line 53
    iget-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mIsAttached:Z

    .line 55
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 57
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->updateNowPlayingAlbumArt()V

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 85
    return-void
.end method
