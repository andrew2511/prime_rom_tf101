.class public Lcom/google/android/music/NowPlayingBar;
.super Landroid/widget/RelativeLayout;
.source "NowPlayingBar.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NowPlayingBar"


# instance fields
.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

.field private mContext:Landroid/app/Activity;

.field private mFullRefresh:Z

.field private mGotService:Z

.field private mIsAttached:Z

.field private mIsVisible:Z

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mProgress:Landroid/widget/ProgressBar;

.field private final mRefreshHandler:Landroid/os/Handler;

.field private mTmpVisibilityDuringAnimation:I

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "NowPlayingBar"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/NowPlayingBar;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 259
    new-instance v0, Lcom/google/android/music/NowPlayingBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/NowPlayingBar$3;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/google/android/music/NowPlayingBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/NowPlayingBar$4;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/NowPlayingBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/music/NowPlayingBar;->superSetVisibility(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/NowPlayingBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/NowPlayingBar;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/NowPlayingBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->refresh()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/music/NowPlayingBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/NowPlayingBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    return-void
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 247
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private refresh()I
    .locals 15

    .prologue
    .line 278
    iget-boolean v11, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-nez v11, :cond_0

    .line 279
    const/4 v11, -0x1

    .line 340
    :goto_0
    return v11

    .line 281
    :cond_0
    iget-boolean v11, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    if-eqz v11, :cond_6

    .line 282
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v11, :cond_7

    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 283
    const/high16 v11, 0x7f0f

    invoke-virtual {p0, v11}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 284
    .local v10, title:Landroid/widget/TextView;
    const v11, 0x7f0f0004

    invoke-virtual {p0, v11}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 285
    .local v2, artist:Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 286
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_1
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 290
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, artistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 292
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    const v12, 0x7f0c0068

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    :cond_2
    if-eqz v2, :cond_3

    .line 295
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_3
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, albumName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 299
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    const v12, 0x7f0c0069

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_4
    const v11, 0x7f0f0016

    invoke-virtual {p0, v11}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 304
    .local v0, albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    if-eqz v0, :cond_5

    .line 305
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12, v1, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v0           #albumArt:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v1           #albumName:Ljava/lang/String;
    .end local v3           #artistName:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->updatePlayPause()V

    .line 312
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    sget-object v12, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v12}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    .line 313
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/music/NowPlayingBar;->mFullRefresh:Z

    .line 320
    .end local v2           #artist:Landroid/widget/TextView;
    .end local v10           #title:Landroid/widget/TextView;
    :cond_6
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->position()J

    move-result-wide v8

    .line 321
    .local v8, pos:J
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->duration()J

    move-result-wide v4

    .line 322
    .local v4, duration:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    .line 323
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 316
    .end local v4           #duration:J
    .end local v8           #pos:J
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 317
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 325
    .restart local v4       #duration:J
    .restart local v8       #pos:J
    :cond_8
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v11, :cond_9

    .line 326
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 327
    iget-object v11, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v8

    div-long/2addr v12, v4

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 329
    :cond_9
    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0x3e8

    rem-long v13, v8, v13

    sub-long v6, v11, v13

    .line 330
    .local v6, msecToNextSecond:J
    const-wide/16 v11, 0x14

    cmp-long v11, v6, v11

    if-gez v11, :cond_a

    .line 335
    const-wide/16 v6, 0x3e8

    .line 337
    :cond_a
    sget-object v11, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 338
    long-to-int v11, v6

    goto/16 :goto_0

    .line 340
    :cond_b
    const/16 v11, 0x3e8

    goto/16 :goto_0
.end method

.method private scheduleRefresh()V
    .locals 2

    .prologue
    .line 243
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/NowPlayingBar;->queueNextRefresh(J)V

    .line 244
    return-void
.end method

.method private superSetVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    return-void
.end method

.method private updatePlayPause()V
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    goto :goto_0
.end method


# virtual methods
.method public getVisibility()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    iget v0, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    .line 67
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 68
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 69
    const v2, 0x7f0f0078

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    .line 70
    new-instance v2, Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/NowPlayingBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-direct {v2, v3, v4}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v2, "com.android.music.playbackfailed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v2, "com.android.music.asyncopenstart"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v2, "com.android.music.asyncopencomplete"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 85
    const v2, 0x7f0f0021

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayPauseButton;

    iput-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 86
    iget-object v2, p0, Lcom/google/android/music/NowPlayingBar;->mPlayPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v2, p0}, Lcom/google/android/music/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/high16 v2, 0x7f0f

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v2, 0x7f0f0004

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v2, 0x7f0f0016

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v2, 0x7f0f0023

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, b:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f0f0022

    invoke-virtual {p0, v2}, Lcom/google/android/music/NowPlayingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 164
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 169
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 191
    const-string v1, "NowPlayingBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected view id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :sswitch_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->next()V

    goto :goto_0

    .line 174
    :sswitch_1
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->prev()V

    goto :goto_0

    .line 177
    :sswitch_2
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->stop()V

    goto :goto_0

    .line 179
    :cond_1
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->pause()V

    goto :goto_0

    .line 182
    :cond_2
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->play()V

    goto :goto_0

    .line 188
    :sswitch_3
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startNowPlayingScreen()V

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0000 -> :sswitch_3
        0x7f0f0004 -> :sswitch_3
        0x7f0f0016 -> :sswitch_3
        0x7f0f0021 -> :sswitch_2
        0x7f0f0022 -> :sswitch_1
        0x7f0f0023 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsAttached:Z

    .line 203
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mBufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 206
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 207
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 210
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 234
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 235
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mGotService:Z

    .line 239
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    .line 240
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 214
    sparse-switch p2, :sswitch_data_0

    .line 226
    const-string v0, "NowPlayingBar"

    const-string v1, "unknown visibility value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 230
    return-void

    .line 217
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 218
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    goto :goto_0

    .line 222
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/NowPlayingBar;->mIsVisible:Z

    .line 223
    invoke-direct {p0}, Lcom/google/android/music/NowPlayingBar;->scheduleRefresh()V

    goto :goto_0

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setVisibility(I)V
    .locals 10
    .parameter "newVisibility"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/music/NowPlayingBar;->getVisibility()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only GONE and VISIBLE are valid visibilites for the NowPlayingBar"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_1
    iput p1, p0, Lcom/google/android/music/NowPlayingBar;->mTmpVisibilityDuringAnimation:I

    .line 126
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 127
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 130
    .local v0, animOut:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 131
    new-instance v2, Lcom/google/android/music/NowPlayingBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/NowPlayingBar$1;-><init>(Lcom/google/android/music/NowPlayingBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 144
    .end local v0           #animOut:Landroid/view/animation/TranslateAnimation;
    :cond_2
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 147
    .local v1, animIn:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 148
    new-instance v2, Lcom/google/android/music/NowPlayingBar$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/NowPlayingBar$2;-><init>(Lcom/google/android/music/NowPlayingBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/google/android/music/NowPlayingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
