.class public Lcom/google/android/music/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/MediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;,
        Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;,
        Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;,
        Lcom/google/android/music/MusicPlaybackService$StopWatch;,
        Lcom/google/android/music/MusicPlaybackService$Shuffler;,
        Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;,
        Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
    }
.end annotation


# static fields
.field private static final BOOKMARKCOLIDX:I = 0x8

.field private static final DURATIONCOLIDX:I = 0x9

.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FOCUSCHANGE:I = 0x4

.field private static final HASLOCALCOLIDX:I = 0xb

.field private static final HASREMOTECOLIDX:I = 0xa

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0x1770

.field private static final LOCAL_PLAYBACK_EVENTCODE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "MediaPlaybackService"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_FAILURES_TO_SKIP:I = 0xa

.field private static final MEDIAPLAYER_BUFFER_AMOUNT:J = 0x1388L

.field private static final NO_ACTIVE_NETWORK:I = 0x2710

.field private static final PODCASTCOLIDX:I = 0x7

.field private static final PREF_CURRENT_POSITION:Ljava/lang/String; = "curpos"

.field private static final PREF_PLAYLIST:Ljava/lang/String; = "medialist"

.field private static final PREF_REPEAT_MODE:Ljava/lang/String; = "repeatMode"

.field private static final PREF_SEEK_POS:Ljava/lang/String; = "seekpos"

.field private static final PREF_SHUFFLE_MODE:Ljava/lang/String; = "shufflemode"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final RESUME_FROM_BUFFERING_EVENTCODE:I = 0x3

.field private static final SEEK_VS_PREVIOUS_DURATION:J = 0x7d0L

.field private static final SERVER_DIED:I = 0x3

.field private static final SHUFFLE_WINDOW_SIZE:I = 0xc8

.field private static final SONG_COMPLETION_TO_MARK_PLAYED:F = 0.65f

.field private static final TRACK_ENDED:I = 0x1

.field private static final TRYNEXT:I = 0x7

.field private static final WAIT_FOR_BUFFERING_EVENTCODE:I = 0x67


# instance fields
.field private mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

.field private mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioId:J

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCursor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mDownloadManagerConnection:Landroid/content/ServiceConnection;

.field private mFuture:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsNotificationShowing:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field mNotification:Landroid/app/Notification;

.field mNotificationHasButtons:Z

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

.field private mPlayPos:I

.field private mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

.field private mQueueIsSaveable:Z

.field private final mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

.field private mReloadedQueueSeekPos:J

.field private mRepeatMode:I

.field mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field mUIVisible:Z

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "MediaPlaybackService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v1, 0xc8

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 643
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 130
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 131
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 132
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    .line 133
    iput-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 134
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-direct {v0, p0, p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    .line 135
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    .line 142
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/google/android/music/MusicPlaybackService$Shuffler;-><init>(Lcom/google/android/music/MusicPlaybackService$1;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    .line 143
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    .line 144
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AlbumArtistId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CanonicalAlbumArtist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 164
    iput-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 168
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 169
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 171
    iput-boolean v6, p0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    .line 173
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 175
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->getInstance()Lcom/google/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    .line 183
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 184
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 185
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 187
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 202
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$1;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    .line 511
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$2;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 602
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$3;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$4;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 978
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$9;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2065
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$18;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$18;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    .line 2989
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 644
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/MusicPlaybackService;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->refreshCursor(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/MusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MediaAppWidgetProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/MusicPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/MusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$2502(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$2608(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$2802(Lcom/google/android/music/MusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$2808(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/music/MusicPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/google/android/music/MusicPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->dumpPastPresentAndFuture()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->tryNext()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$3800(Lcom/google/android/music/MusicPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MusicPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/android/music/MusicPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/google/android/music/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasLocal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/google/android/music/MusicPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasRemote()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/MusicPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$708(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$710(Lcom/google/android/music/MusicPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/MusicPlaybackService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V

    return-void
.end method

.method private clearCursor()V
    .locals 4

    .prologue
    .line 738
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 740
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 741
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 743
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/MusicPlaybackService$6;

    invoke-direct {v3, p0, v0}, Lcom/google/android/music/MusicPlaybackService$6;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/database/Cursor;)V

    invoke-static {v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 749
    :cond_0
    monitor-exit v1

    .line 750
    return-void

    .line 749
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private dumpPastPresentAndFuture()V
    .locals 0

    .prologue
    .line 1278
    return-void
.end method

.method private fillShuffleList(Ljava/util/Vector;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, shuffleList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/16 v7, 0xc8

    .line 1211
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int v4, v7, v5

    .line 1212
    .local v4, numToAdd:I
    if-gez v4, :cond_1

    .line 1213
    const-string v5, "MediaPlaybackService"

    const-string v6, "too much future!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {p1, v7}, Ljava/util/Vector;->setSize(I)V

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v1

    .line 1218
    .local v1, len:I
    if-nez v1, :cond_2

    .line 1220
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    goto :goto_0

    .line 1223
    :cond_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1225
    if-gt v1, v7, :cond_3

    .line 1227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1228
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/music/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1238
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_0

    .line 1241
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1243
    .local v2, lookback:I
    :goto_3
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-virtual {v5, v1}, Lcom/google/android/music/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v3

    .line 1244
    .local v3, newIdx:I
    invoke-direct {p0, v3, v2}, Lcom/google/android/music/MusicPlaybackService;->wasRecentlyUsed(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1248
    :cond_4
    div-int/lit8 v2, v2, 0x2

    .line 1249
    goto :goto_3
.end method

.method private getBookmark()J
    .locals 4

    .prologue
    .line 2018
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2020
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2021
    const-wide/16 v2, 0x0

    monitor-exit v1

    move-wide v1, v2

    .line 2023
    :goto_0
    return-wide v1

    :cond_0
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 2024
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 649
    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private gotoIdleState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1802
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1803
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1804
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1805
    iget-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 1807
    .local v1, remove:Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1808
    if-eqz v1, :cond_1

    .line 1809
    iput-boolean v5, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1811
    :cond_1
    return-void

    .end local v1           #remove:Z
    :cond_2
    move v1, v5

    .line 1805
    goto :goto_0
.end method

.method private hasLocal()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2008
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2010
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2011
    monitor-exit v1

    move v1, v3

    .line 2013
    :goto_0
    return v1

    :cond_0
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 2014
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private hasRemote()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1998
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2000
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2001
    monitor-exit v1

    move v1, v3

    .line 2003
    :goto_0
    return v1

    :cond_0
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 2004
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isPodcast()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1988
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1990
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1991
    monitor-exit v1

    move v1, v3

    .line 1993
    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v1

    move v1, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1994
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadCurrent()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1323
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 1333
    :goto_0
    return v2

    .line 1326
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1328
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget v3, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)J

    move-result-wide v0

    .line 1329
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    move v2, v4

    .line 1330
    goto :goto_0

    .line 1333
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->refreshCursor(J)Z

    move-result v2

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 7
    .parameter "what"

    .prologue
    .line 1062
    const/4 v3, 0x1

    .line 1063
    .local v3, saveQueue:Z
    const-string v4, "com.android.music.queuechanged"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1065
    .local v2, isQueueChanged:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v1, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 1067
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1068
    const-string v4, "artist"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v4, "album"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string v4, "track"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    :cond_0
    const-string v4, "com.android.music.asyncopenstart"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1074
    const/4 v3, 0x0

    .line 1088
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v4, :cond_2

    .line 1089
    const-string v4, "MediaPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending out broadcast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1094
    if-eqz v3, :cond_3

    .line 1095
    invoke-direct {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 1099
    :cond_3
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    invoke-virtual {v4, p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    .line 1101
    return-void

    .line 1075
    :cond_4
    const-string v4, "com.android.music.asyncopencomplete"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1076
    const/4 v3, 0x0

    goto :goto_0

    .line 1077
    :cond_5
    const-string v4, "com.android.music.playstatechanged"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1078
    const-string v4, "playstate"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1079
    :cond_6
    const-string v4, "com.android.music.playbackfailed"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1080
    const/4 v0, 0x1

    .line 1081
    .local v0, failureType:I
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    if-eqz v4, :cond_7

    .line 1082
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->getErrorType()I

    move-result v0

    .line 1084
    :cond_7
    const-string v4, "errorType"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    goto :goto_0
.end method

.method private open(JZZ)V
    .locals 2
    .parameter "musicId"
    .parameter "fromUserAction"
    .parameter "playOnSuccess"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->release()V

    .line 1388
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    .line 1389
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$13;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/google/android/music/MusicPlaybackService$13;-><init>(Lcom/google/android/music/MusicPlaybackService;JZ)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->setDataSource(JZLcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;)V

    .line 1412
    return-void
.end method

.method private openCurrent(ZZ)V
    .locals 4
    .parameter "fromUserAction"
    .parameter "playOnSuccess"

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1364
    const-string v2, "com.android.music.asyncopencomplete"

    invoke-direct {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1369
    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->open(JZZ)V

    .line 1372
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->isPodcast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1373
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1376
    .local v0, bookmark:J
    const-wide/16 v2, 0x1388

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto :goto_0
.end method

.method private openCurrentAndPlay(Z)V
    .locals 2
    .parameter "fromUserAction"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1188
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/MusicPlaybackService$12;-><init>(Lcom/google/android/music/MusicPlaybackService;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1208
    return-void
.end method

.method private refreshCursor(J)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1337
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1340
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queried ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1341
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1342
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1345
    :cond_0
    const/4 v7, 0x0

    .line 1346
    .local v7, success:Z
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1347
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1348
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1350
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1352
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    .line 1353
    const/4 v7, 0x1

    .line 1357
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1359
    return v7

    .line 1355
    :cond_1
    :try_start_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private reloadQueue()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 805
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 806
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 807
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v6, "medialist"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, embryo:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reloading queue from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 809
    if-eqz v0, :cond_1

    .line 810
    invoke-static {v0}, Lcom/google/android/music/medialist/MediaList;->thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;

    move-result-object v1

    .line 811
    .local v1, list:Lcom/google/android/music/medialist/MediaList;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/google/android/music/medialist/SongList;

    if-nez v6, :cond_3

    .line 812
    :cond_0
    const-string v6, "MediaPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved media list must be a SongList, but got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_2

    const-string v8, "<null>"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error thawing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 863
    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    :cond_1
    :goto_1
    return-void

    .line 812
    .restart local v1       #list:Lcom/google/android/music/medialist/MediaList;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 817
    :cond_3
    check-cast v1, Lcom/google/android/music/medialist/SongList;

    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 818
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v6, v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 820
    const-string v6, "curpos"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 821
    .local v2, pos:I
    if-ltz v2, :cond_4

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v6}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 823
    :cond_4
    iput-object v9, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 824
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v6, v9}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position out of range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto :goto_1

    .line 828
    :cond_5
    iput v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 829
    const-string v6, "seekpos"

    invoke-interface {v3, v6, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 831
    const-string v6, "repeatMode"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 832
    .local v4, repmode:I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    if-eq v4, v10, :cond_6

    .line 833
    const/4 v4, 0x0

    .line 835
    :cond_6
    iput v4, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 837
    const-string v6, "shufflemode"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 838
    .local v5, shufmode:I
    if-eq v5, v10, :cond_7

    .line 839
    const/4 v5, 0x0

    .line 841
    :cond_7
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 853
    const/16 v6, 0x14

    iput v6, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    .line 854
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    move-result v6

    if-nez v6, :cond_8

    .line 855
    iput-wide v11, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 858
    :cond_8
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue reloaded with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", shuffle mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", playpos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private saveBookmarkIfNeeded()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    .line 1815
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v4

    .line 1817
    .local v4, pos:J
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1818
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v2

    .line 1819
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_0

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    :cond_0
    cmp-long v8, v4, v0

    if-lez v8, :cond_2

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_2

    .line 1839
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_1
    :goto_0
    return-void

    .line 1825
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_2
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_4

    .line 1827
    :cond_3
    const-wide/16 v4, 0x0

    .line 1831
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1832
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1833
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1835
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1837
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 15
    .parameter "full"

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 760
    .local v3, mediaList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v5

    .line 761
    .local v5, curAlbumId:J
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    .line 762
    .local v7, curArtist:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    .line 763
    .local v8, curAlbum:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 764
    .local v9, curTitle:Ljava/lang/String;
    iget v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 765
    .local v4, playPos:I
    iget v12, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 766
    .local v12, repeatMode:I
    iget v13, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 770
    .local v13, shuffleMode:I
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    move-wide v10, v0

    .line 773
    .local v10, playerPosition:J
    :goto_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 774
    sget-object v14, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/MusicPlaybackService$7;

    move-object v1, p0

    move/from16 v2, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/music/MusicPlaybackService$7;-><init>(Lcom/google/android/music/MusicPlaybackService;ZLcom/google/android/music/medialist/SongList;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    invoke-static {v14, v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 770
    .end local v10           #playerPosition:J
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->position()J

    move-result-wide v0

    move-wide v10, v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    move-wide v10, v0

    goto :goto_1
.end method

.method private stop(Z)V
    .locals 4
    .parameter "remove_status_icon"

    .prologue
    const/4 v3, 0x0

    .line 1595
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->stop()V

    .line 1596
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1597
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1599
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1601
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    if-eqz p1, :cond_2

    .line 1603
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 1607
    :goto_0
    if-eqz p1, :cond_1

    .line 1608
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1610
    :cond_1
    return-void

    .line 1601
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1605
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private tryNext()V
    .locals 4

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1419
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 12

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v0, :cond_6

    .line 1511
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1523
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-eqz v0, :cond_5

    .line 1530
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f04002c

    invoke-direct {v11, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1534
    .local v11, notificationLayout:Landroid/widget/RemoteViews;
    const v0, 0x7f0f0022

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.previous"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1538
    const v0, 0x7f0f0034

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1542
    const v0, 0x7f0f0023

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.next"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1546
    const v0, 0x7f0f0080

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.musicservicecommand.veto"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1551
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 1552
    .local v9, artist:Ljava/lang/String;
    const v0, 0x7f0f001e

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1553
    invoke-static {v9}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1554
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    .line 1557
    .local v8, album:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1561
    :cond_2
    const v0, 0x7f0f007e

    const v3, 0x7f0c00fd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v8, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1565
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v0, :cond_3

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1567
    const v0, 0x7f0f0034

    const v3, 0x7f02007d

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1573
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 1574
    .local v1, aid:J
    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1575
    .local v10, bm:Landroid/graphics/Bitmap;
    const v0, 0x7f0f007f

    invoke-virtual {v11, v0, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1578
    .end local v1           #aid:J
    .end local v10           #bm:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 1579
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    .line 1580
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1581
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const v3, 0x7f0201d6

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 1582
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1588
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v11, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1590
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v3}, Lcom/google/android/music/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    .end local v8           #album:Ljava/lang/String;
    .end local v9           #artist:Ljava/lang/String;
    .end local v11           #notificationLayout:Landroid/widget/RemoteViews;
    :cond_5
    monitor-exit p0

    return-void

    .line 1516
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1519
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    goto/16 :goto_0

    .line 1570
    .restart local v8       #album:Ljava/lang/String;
    .restart local v9       #artist:Ljava/lang/String;
    .restart local v11       #notificationLayout:Landroid/widget/RemoteViews;
    :cond_8
    const v0, 0x7f0f0034

    const v3, 0x7f02007e

    invoke-virtual {v11, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private wasRecentlyUsed(II)Z
    .locals 10
    .parameter "idx"
    .parameter "lookbacksize"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1286
    if-nez p2, :cond_0

    move v5, v9

    .line 1314
    :goto_0
    return v5

    .line 1290
    :cond_0
    iget v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ne p1, v5, :cond_1

    move v5, v8

    .line 1291
    goto :goto_0

    .line 1294
    :cond_1
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    monitor-enter v6

    .line 1295
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1296
    .local v2, histsize:I
    if-ge v2, p2, :cond_2

    .line 1297
    const-string v5, "MediaPlaybackService"

    const-string v7, "lookback too big"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move p2, v2

    .line 1300
    :cond_2
    sub-int v4, v2, v8

    .line 1301
    .local v4, maxidx:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 1302
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1303
    .local v0, entry:I
    if-ne v0, p1, :cond_3

    .line 1304
    monitor-exit v6

    move v5, v8

    goto :goto_0

    .line 1301
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1307
    .end local v0           #entry:I
    :cond_4
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1308
    .local v1, futuresize:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    .line 1309
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1310
    .restart local v0       #entry:I
    if-ne v0, p1, :cond_5

    .line 1311
    monitor-exit v6

    move v5, v8

    goto :goto_0

    .line 1308
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1314
    .end local v0           #entry:I
    :cond_6
    monitor-exit v6

    move v5, v9

    goto :goto_0

    .line 1315
    .end local v1           #futuresize:I
    .end local v2           #histsize:I
    .end local v3           #i:I
    .end local v4           #maxidx:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    .line 1002
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1003
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1004
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 2976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items in queue, currently at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shuffle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    invoke-static {p2}, Lcom/google/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 2987
    return-void

    .line 2977
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/SongList;->freeze()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2983
    :cond_1
    const-string v1, "no player"

    goto :goto_1
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 2032
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2034
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2035
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    .line 2037
    :goto_0
    return-wide v1

    :cond_0
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 2038
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAlbumId()J
    .locals 4

    .prologue
    .line 1968
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1971
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    .line 1973
    :goto_0
    return-wide v1

    :cond_0
    const-string v2, "album_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1974
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1960
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1961
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 1963
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "album"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1964
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getArtistId()J
    .locals 4

    .prologue
    .line 1938
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1940
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1941
    const-wide/16 v2, -0x1

    monitor-exit v1

    move-wide v1, v2

    .line 1943
    :goto_0
    return-wide v1

    :cond_0
    const-string v2, "AlbumArtistId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v1

    move-wide v1, v2

    goto :goto_0

    .line 1944
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1928
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1930
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1931
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 1933
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "artist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1934
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 1894
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:J

    .line 1897
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2086
    monitor-enter p0

    .line 2087
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2088
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextSongs(I)[J
    .locals 9
    .parameter "songCount"

    .prologue
    .line 1104
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    monitor-enter v6

    .line 1105
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1106
    .local v2, length:I
    if-lez v2, :cond_1

    .line 1107
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v5, [J

    .line 1108
    .local v3, ret:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1109
    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)J

    move-result-wide v7

    aput-wide v7, v3, v1

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    monitor-exit v6

    move-object v4, v3

    .line 1129
    .end local v3           #ret:[J
    .local v4, ret:[J
    :goto_1
    return-object v4

    .line 1113
    .end local v1           #i:I
    .end local v4           #ret:[J
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v5

    if-ge v5, p1, :cond_4

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v5

    move v2, v5

    .line 1115
    :goto_2
    new-array v3, v2, [J

    .line 1116
    .restart local v3       #ret:[J
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 1117
    .local v0, currentPos:I
    if-gez v0, :cond_2

    .line 1120
    const/4 v0, 0x0

    .line 1122
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1123
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 1124
    const/4 v0, 0x0

    .line 1126
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v5, v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)J

    move-result-wide v7

    aput-wide v7, v3, v1

    .line 1127
    add-int/lit8 v0, v0, 0x1

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #currentPos:I
    .end local v1           #i:I
    .end local v3           #ret:[J
    :cond_4
    move v2, p1

    .line 1113
    goto :goto_2

    .line 1129
    .restart local v0       #currentPos:I
    .restart local v1       #i:I
    .restart local v3       #ret:[J
    :cond_5
    monitor-exit v6

    move-object v4, v3

    .end local v3           #ret:[J
    .restart local v4       #ret:[J
    goto :goto_1

    .line 1130
    .end local v0           #currentPos:I
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #ret:[J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 1905
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 1876
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1948
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1950
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1951
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 1953
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "CanonicalAlbumArtist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1954
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1978
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1980
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1981
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 1983
    :goto_0
    return-object v1

    :cond_0
    const-string v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1984
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasCursor()Z
    .locals 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1923
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1924
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1638
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public next(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1723
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$17;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/MusicPlaybackService$17;-><init>(Lcom/google/android/music/MusicPlaybackService;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1799
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 869
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 654
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 656
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 657
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/google/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->registerExternalStorageListener()V

    .line 663
    new-instance v5, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-direct {v5, p0, v6}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V

    iput-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    .line 665
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 666
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v5, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v5, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v5, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 673
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 674
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 675
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 676
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 680
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 681
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1770

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 683
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5, v6, v9}, Lcom/google/android/music/MusicPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 686
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 687
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 688
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 689
    iput-boolean v9, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 692
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 693
    sget-object v5, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v6, Lcom/google/android/music/MusicPlaybackService$5;

    invoke-direct {v6, p0}, Lcom/google/android/music/MusicPlaybackService$5;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v5, v6}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 714
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 717
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->release()V

    .line 719
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 722
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 723
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 725
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->clearCursor()V

    .line 727
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 728
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 730
    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 733
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 734
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 735
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 876
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "startIntent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 880
    iput p3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 881
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 883
    move-object v0, p1

    .line 888
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$8;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/MusicPlaybackService$8;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 945
    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 949
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 954
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 956
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 958
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 975
    :goto_0
    return v1

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 968
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 969
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 970
    goto :goto_0

    .line 974
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 975
    goto :goto_0
.end method

.method public openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
    .locals 2
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1147
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->clearCursor()V

    .line 1149
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1150
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$11;-><init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;I)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1616
    const v0, 0x12112

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1617
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event logging MUSIC_PAUSE_PLAYBACK_REQUESTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    monitor-enter p0

    .line 1620
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1621
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->pause()V

    .line 1624
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 1625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1626
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1627
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V

    .line 1629
    :cond_0
    monitor-exit p0

    .line 1630
    return-void

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1425
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1427
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1431
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1432
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$14;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$14;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1467
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1468
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1469
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    .line 1471
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_0

    .line 1472
    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1473
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1475
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->position()J

    move-result-wide v0

    .line 2048
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    goto :goto_0
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1673
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$16;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$16;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1716
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1016
    new-instance v1, Lcom/google/android/music/MusicPlaybackService$10;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$10;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1033
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1034
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1035
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1039
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2058
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->duration()J

    move-result-wide p1

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->seek(J)J

    move-result-wide v0

    .line 2062
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 1913
    monitor-enter p0

    .line 1914
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1915
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 1916
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V

    .line 1917
    monitor-exit p0

    .line 1918
    return-void

    .line 1917
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 1880
    monitor-enter p0

    .line 1881
    :try_start_0
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 1882
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 1883
    monitor-exit p0

    .line 1884
    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 3
    .parameter "shufflemode"

    .prologue
    .line 1858
    monitor-enter p0

    .line 1859
    :try_start_0
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1860
    monitor-exit p0

    .line 1874
    :goto_0
    return-void

    .line 1862
    :cond_0
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 1863
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1864
    :try_start_1
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1865
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "shuffle enabled"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1866
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V

    .line 1871
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1872
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 1873
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1868
    :cond_1
    :try_start_3
    const-string v1, "shuffle disabled"

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1869
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_1

    .line 1871
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method setUIVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1478
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 1479
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v0, :cond_1

    .line 1480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$15;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$15;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 1492
    const v1, 0x12111

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1493
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event logging MUSIC_STOP_PLAYBACK_REQUESTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1496
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->release()V

    .line 1497
    const-string v1, "com.android.music.playstatechanged"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1500
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v1}, Lcom/google/android/music/dl/IDownloadManager;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :goto_0
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    .line 1505
    return-void

    .line 1501
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1502
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
