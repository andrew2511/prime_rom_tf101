.class public Lcom/google/android/music/MediaPlaybackActivity;
.super Landroid/app/Activity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$Defs;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;
.implements Lcom/google/android/music/CreatePlaylist$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaPlaybackActivity$12;,
        Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xc8L

.field private static final ANIMATION_PROGRESS_BAR_MOVEMENT_DIP:F = -22.0f

.field private static final GSERVICES_DEBUG_STREAMING_KEY:Ljava/lang/String; = "music_streaming_debug"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final QUIT:I = 0x2

.field private static final REFRESH_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlaybackActivity"

.field private static final UPDATE_TRACK:I = 0x5

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final keyboard:[[I

.field private lastX:I

.field private lastY:I

.field private mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

.field private mAlbumBg:Landroid/widget/ImageView;

.field private mAlbumName:Landroid/widget/TextView;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mArtistName:Landroid/widget/TextView;

.field private mBufferingProgress:Landroid/widget/ProgressBar;

.field private mContextMenu:Landroid/widget/ImageView;

.field private mCurrentAlbumId:J

.field private mCurrentFailureDialogsMusicId:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDebugStreamingView:Landroid/widget/TextView;

.field private mDeviceHasDpad:Z

.field mDraggingLabel:Z

.field private mDuration:J

.field private mErrorText:Landroid/widget/TextView;

.field private mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

.field private mHadValidPlaylistBefore:Z

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field private mIsLandscape:Z

.field mLabelScroller:Landroid/os/Handler;

.field mLastX:I

.field private mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

.field private mMusicMenuCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNextButton:Lcom/google/android/music/RepeatingImageButton;

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPlayedColor:Landroid/content/res/ColorStateList;

.field private mPosOverride:J

.field private mPrevButton:Lcom/google/android/music/RepeatingImageButton;

.field private mProgress:Lcom/google/android/music/SizableTrackSeekBar;

.field private mProgressBarMovement:F

.field private mProgressOverlay:Landroid/view/View;

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSelectedId:J

.field private mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

.field private mShuffleButton:Landroid/widget/ImageView;

.field private mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field mTextWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTrackName:Landroid/widget/TextView;

.field private mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field mViewWidth:I

.field private osc:Landroid/content/ServiceConnection;

.field private paused:Z

.field private seekmethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "MediaPlaybackActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    .line 90
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0xa

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 106
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 143
    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 282
    iput v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 283
    iput v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    .line 284
    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 285
    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 286
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 369
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$1;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 506
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$2;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 610
    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:J

    .line 666
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$3;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenuCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    .line 704
    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentFailureDialogsMusicId:J

    .line 1184
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1413
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$8;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    .line 1507
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$9;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1542
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$10;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1588
    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    return-void

    .line 1184
    nop

    :array_0
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/google/android/music/MediaPlaybackActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/google/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/MediaPlaybackActivity;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->getErrorMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->handleMenuCommand(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    return-void
.end method

.method private addCurrentSongToPlaylist(JLjava/lang/String;)V
    .locals 1
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 1140
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackActivity$6;-><init>(Lcom/google/android/music/MediaPlaybackActivity;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1154
    return-void
.end method

.method private addToPlaylist(JLjava/lang/String;J)V
    .locals 7
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "selectedId"

    .prologue
    .line 675
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/MediaPlaybackActivity$4;-><init>(Lcom/google/android/music/MediaPlaybackActivity;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 689
    return-void
.end method

.method private alertFailureIfNecessary(JI)V
    .locals 5
    .parameter "musicId"
    .parameter "errorType"

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentFailureDialogsMusicId:J

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 713
    iput-wide p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentFailureDialogsMusicId:J

    .line 715
    const/4 v2, -0x1

    .line 716
    .local v2, titleResId:I
    const/4 v1, -0x1

    .line 717
    .local v1, messageResId:I
    packed-switch p3, :pswitch_data_0

    .line 732
    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 733
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 735
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 737
    const v3, 0x7f0c007f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 719
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_0
    const v2, 0x7f0c00da

    .line 720
    const v1, 0x7f0c00d7

    .line 721
    goto :goto_1

    .line 723
    :pswitch_1
    const v2, 0x7f0c00dc

    .line 724
    const v1, 0x7f0c00d9

    .line 725
    goto :goto_1

    .line 727
    :pswitch_2
    const v2, 0x7f0c00db

    .line 728
    const v1, 0x7f0c00d8

    goto :goto_1

    .line 717
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private animateErrorTextAnimation(ZLjava/lang/CharSequence;)V
    .locals 11
    .parameter "show"
    .parameter "errorText"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 862
    .local v3, color:I
    if-eqz p1, :cond_0

    move v5, v9

    .line 863
    .local v5, from:F
    :goto_0
    if-eqz p1, :cond_1

    move v6, v10

    .line 865
    .local v6, to:F
    :goto_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 866
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "When switching to error state, errorText is required"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v5           #from:F
    .end local v6           #to:F
    :cond_0
    move v5, v10

    .line 862
    goto :goto_0

    .restart local v5       #from:F
    :cond_1
    move v6, v9

    .line 863
    goto :goto_1

    .line 870
    .restart local v6       #to:F
    :cond_2
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    monitor-enter v7

    .line 871
    :try_start_0
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    .line 873
    .local v4, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v4, :cond_3

    instance-of v8, v4, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    if-eqz v8, :cond_3

    .line 874
    move-object v0, v4

    check-cast v0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    move-object v1, v0

    .line 875
    .local v1, alphaAnim:Lcom/google/android/music/utils/RetrievableAlphaAnimation;
    invoke-virtual {v1}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->getToAlpha()F

    move-result v8

    cmpl-float v8, v8, v6

    if-nez v8, :cond_3

    .line 877
    monitor-exit v7

    .line 909
    .end local v1           #alphaAnim:Lcom/google/android/music/utils/RetrievableAlphaAnimation;
    :goto_2
    return-void

    .line 881
    :cond_3
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAnimation()V

    .line 883
    new-instance v2, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    invoke-direct {v2, v5, v6}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;-><init>(FF)V

    .line 884
    .local v2, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 885
    new-instance v8, Lcom/google/android/music/MediaPlaybackActivity$5;

    invoke-direct {v8, p0, p1, v2}, Lcom/google/android/music/MediaPlaybackActivity$5;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 907
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 908
    monitor-exit v7

    goto :goto_2

    .end local v2           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v4           #currentAnimation:Landroid/view/animation/Animation;
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private animateProgressBarMove(Z)V
    .locals 12
    .parameter "up"

    .prologue
    .line 912
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    :goto_0
    return-void

    .line 915
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    if-eqz p1, :cond_2

    iget v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    :goto_2
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 918
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 919
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 920
    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 921
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v3, v0}, Lcom/google/android/music/SizableTrackSeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 923
    const v3, 0x7f0f001d

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 924
    .local v11, extendableBg:Landroid/view/View;
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    add-float v10, v3, v4

    .line 925
    .local v10, dy:F
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    if-eqz p1, :cond_3

    const/high16 v4, 0x3f80

    :goto_3
    if-eqz p1, :cond_4

    move v5, v10

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 927
    .local v1, bgAnim:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v1, p1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 928
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 929
    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 930
    invoke-virtual {v11, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 932
    new-instance v2, Lcom/google/android/music/animator/PropertyAnimator;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const-string v5, "thumbAlpha"

    if-eqz p1, :cond_5

    const/4 v6, 0x0

    :goto_5
    if-eqz p1, :cond_6

    const/16 v7, 0xff

    :goto_6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    .line 934
    .local v2, fader:Lcom/google/android/music/animator/Animator;
    invoke-virtual {v2}, Lcom/google/android/music/animator/Animator;->start()V

    goto :goto_0

    .line 915
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v1           #bgAnim:Landroid/view/animation/ScaleAnimation;
    .end local v2           #fader:Lcom/google/android/music/animator/Animator;
    .end local v10           #dy:F
    .end local v11           #extendableBg:Landroid/view/View;
    :cond_1
    iget v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .restart local v0       #anim:Landroid/view/animation/TranslateAnimation;
    .restart local v10       #dy:F
    .restart local v11       #extendableBg:Landroid/view/View;
    :cond_3
    move v4, v10

    .line 925
    goto :goto_3

    :cond_4
    const/high16 v5, 0x3f80

    goto :goto_4

    .line 932
    .restart local v1       #bgAnim:Landroid/view/animation/ScaleAnimation;
    :cond_5
    const/16 v6, 0xff

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_6
.end method

.method private animateScaleArtwork(Z)V
    .locals 4
    .parameter "shrink"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    const-wide/16 v1, 0xc8

    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/music/MediaPlaybackLayout;->animate(ZJLandroid/view/animation/Interpolator;)V

    .line 858
    :cond_0
    return-void
.end method

.method private animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13
    .parameter "increase"
    .parameter "fadeIn"

    .prologue
    .line 938
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    :goto_0
    return-void

    .line 941
    :cond_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 942
    .local v9, currentTimeAnimation:Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 944
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 945
    .local v12, totalTimeAnimation:Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 947
    if-eqz p1, :cond_2

    .line 948
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f80

    move v10, v2

    .line 949
    .local v10, fromSize:F
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x3fc0

    move v11, v2

    .line 951
    .local v11, toSize:F
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-nez v2, :cond_1

    .line 952
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    :goto_4
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 956
    .local v0, movementAnim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 957
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 958
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 961
    .end local v0           #movementAnim:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move v7, v2

    :goto_5
    move v2, v10

    move v3, v11

    move v4, v10

    move v5, v11

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 963
    .local v1, anim:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 964
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 966
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .end local v1           #anim:Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move v7, v2

    :goto_6
    move v2, v10

    move v3, v11

    move v4, v10

    move v5, v11

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 968
    .restart local v1       #anim:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 969
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 972
    .end local v1           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v10           #fromSize:F
    .end local v11           #toSize:F
    :cond_2
    if-eqz p2, :cond_3

    .line 973
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x3f80

    :goto_8
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 974
    .local v1, anim:Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 975
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 976
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 979
    .end local v1           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_3
    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 980
    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 981
    const-wide/16 v2, 0xc8

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 982
    const-wide/16 v2, 0xc8

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 984
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 985
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 948
    :cond_4
    const/high16 v2, 0x3fc0

    move v10, v2

    goto/16 :goto_1

    .line 949
    .restart local v10       #fromSize:F
    :cond_5
    const/high16 v2, 0x3f80

    move v11, v2

    goto/16 :goto_2

    .line 952
    .restart local v11       #toSize:F
    :cond_6
    iget v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    goto/16 :goto_3

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 961
    :cond_8
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v7, v2

    goto/16 :goto_5

    .line 966
    :cond_9
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move v7, v2

    goto :goto_6

    .line 973
    .end local v10           #fromSize:F
    .end local v11           #toSize:F
    :cond_a
    const/high16 v2, 0x3f80

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private cycleRepeat()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1383
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v1, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1387
    .local v0, mode:I
    if-nez v0, :cond_1

    .line 1388
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setRepeatMode(I)V

    .line 1389
    const v1, 0x7f0c006f

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1401
    :goto_1
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    goto :goto_0

    .line 1390
    :cond_1
    if-ne v0, v2, :cond_3

    .line 1391
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setRepeatMode(I)V

    .line 1392
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getShuffleMode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1393
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1, v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 1394
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1396
    :cond_2
    const v1, 0x7f0c006e

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1398
    :cond_3
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1, v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setRepeatMode(I)V

    .line 1399
    const v1, 0x7f0c006d

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1
.end method

.method private doExternalSearch(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 404
    sget-boolean v11, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v11, :cond_0

    const-string v11, "MediaPlaybackActivity"

    const-string v12, "doExternalSearch()..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 407
    const-string v11, "MediaPlaybackActivity"

    const-string v12, "Do external search does not work pre-GB"

    invoke-static {v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v11, :cond_1

    .line 413
    const/4 v9, 0x0

    .line 415
    .local v9, query:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v5, i:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 430
    .local v8, media_focus:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, artist:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, album:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 433
    .local v10, song:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v11}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 441
    .local v2, audioid:J
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    const-string v11, "recording"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 446
    sget-boolean v11, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v11, :cond_1

    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doExternalSearch: not music! song = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #audioid:J
    .end local v10           #song:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 436
    .local v4, ex:Ljava/lang/NullPointerException;
    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doExternalSearch: null mService: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v4           #ex:Ljava/lang/NullPointerException;
    .restart local v0       #album:Ljava/lang/String;
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v2       #audioid:J
    .restart local v10       #song:Ljava/lang/String;
    :cond_3
    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-gez v11, :cond_4

    .line 453
    sget-boolean v11, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v11, :cond_1

    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doExternalSearch: audioid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; bailing out..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    :cond_4
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    move v7, v11

    .line 459
    .local v7, knownartist:Z
    :goto_1
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    move v6, v11

    .line 461
    .local v6, knownalbum:Z
    :goto_2
    if-eqz v7, :cond_a

    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 462
    move-object v9, v1

    .line 463
    const-string v8, "vnd.android.cursor.item/artist"

    .line 488
    :goto_3
    const-string v11, "query"

    invoke-virtual {v5, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    if-eqz v7, :cond_5

    .line 490
    const-string v11, "android.intent.extra.artist"

    invoke-virtual {v5, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :cond_5
    if-eqz v6, :cond_6

    .line 493
    const-string v11, "android.intent.extra.album"

    invoke-virtual {v5, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :cond_6
    const-string v11, "android.intent.extra.title"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v11, "android.intent.extra.focus"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    sget-boolean v11, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v11, :cond_7

    .line 499
    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doExternalSearch(): launching query \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  - intent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  - extras: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_7
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v11, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 457
    .end local v6           #knownalbum:Z
    .end local v7           #knownartist:Z
    :cond_8
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_1

    .line 459
    .restart local v7       #knownartist:Z
    :cond_9
    const/4 v11, 0x0

    move v6, v11

    goto/16 :goto_2

    .line 464
    .restart local v6       #knownalbum:Z
    :cond_a
    if-eqz v6, :cond_c

    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 465
    if-eqz v7, :cond_b

    .line 466
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 470
    :goto_4
    const-string v8, "vnd.android.cursor.item/album"

    goto/16 :goto_3

    .line 468
    :cond_b
    move-object v9, v0

    goto :goto_4

    .line 471
    :cond_c
    iget-object v11, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    if-eqz v7, :cond_d

    if-nez v6, :cond_10

    .line 472
    :cond_d
    invoke-static {v10}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 473
    sget-boolean v11, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v11, :cond_1

    const-string v11, "MediaPlaybackActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doExternalSearch: unknown song \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'; bailing out..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 478
    :cond_e
    if-eqz v7, :cond_f

    .line 479
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 483
    :goto_5
    const-string v8, "audio/*"

    goto/16 :goto_3

    .line 481
    :cond_f
    move-object v9, v10

    goto :goto_5

    .line 485
    :cond_10
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "shouldn\'t be here"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->stop()V

    .line 1356
    :goto_0
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1357
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1359
    :cond_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->pause()V

    goto :goto_0

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->play()V

    goto :goto_0
.end method

.method private getErrorMessage(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "errorType"

    .prologue
    .line 1704
    packed-switch p1, :pswitch_data_0

    .line 1730
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1731
    const v1, 0x7f0c0095

    .line 1736
    .local v1, resId:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1706
    .end local v1           #resId:I
    :pswitch_0
    const v1, 0x7f0c00d2

    .line 1707
    .restart local v1       #resId:I
    goto :goto_0

    .line 1709
    .end local v1           #resId:I
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    .line 1710
    .local v0, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/music/dl/NetworkMonitor;->hasWifiConnection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1711
    const v1, 0x7f0c00d4

    .restart local v1       #resId:I
    goto :goto_0

    .line 1713
    .end local v1           #resId:I
    :cond_0
    const v1, 0x7f0c00d5

    .line 1715
    .restart local v1       #resId:I
    goto :goto_0

    .line 1717
    .end local v0           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    .end local v1           #resId:I
    :pswitch_2
    const v1, 0x7f0c00d6

    .line 1718
    .restart local v1       #resId:I
    goto :goto_0

    .line 1720
    .end local v1           #resId:I
    :pswitch_3
    const v1, 0x7f0c00da

    .line 1721
    .restart local v1       #resId:I
    goto :goto_0

    .line 1723
    .end local v1           #resId:I
    :pswitch_4
    const v1, 0x7f0c00dc

    .line 1724
    .restart local v1       #resId:I
    goto :goto_0

    .line 1726
    .end local v1           #resId:I
    :pswitch_5
    const v1, 0x7f0c00db

    .line 1727
    .restart local v1       #resId:I
    goto :goto_0

    .line 1733
    .end local v1           #resId:I
    :cond_1
    const v1, 0x7f0c0086

    .restart local v1       #resId:I
    goto :goto_0

    .line 1704
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private handleMenuCommand(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1058
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1133
    const-string v4, "MediaPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v4, v7

    .line 1136
    :goto_1
    return v4

    .line 1062
    :sswitch_0
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {p0, v4}, Lcom/google/android/music/MusicUtils;->doInternalSearch(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    move v4, v7

    .line 1063
    goto :goto_1

    .line 1067
    :sswitch_1
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->showDialog(I)V

    move v4, v7

    .line 1068
    goto :goto_1

    .line 1072
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playlist"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1073
    .local v1, playlistId:J
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playlist_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1074
    .local v3, playlistName:Ljava/lang/String;
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/music/MediaPlaybackActivity;->addCurrentSongToPlaylist(JLjava/lang/String;)V

    move v4, v7

    .line 1075
    goto :goto_1

    .line 1079
    .end local v1           #playlistId:J
    .end local v3           #playlistName:Ljava/lang/String;
    :sswitch_3
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v4, :cond_0

    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v0, i:Landroid/content/Intent;
    const-string v4, "android.media.extra.AUDIO_SESSION"

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioSessionId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    const/16 v4, 0x1a

    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    move v4, v7

    .line 1084
    goto :goto_1

    .line 1088
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist()V

    move v4, v7

    .line 1089
    goto :goto_1

    .line 1093
    :sswitch_5
    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    .line 1097
    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:J

    invoke-static {p0, v4, v5}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    :cond_1
    move v4, v7

    .line 1100
    goto :goto_1

    .line 1104
    :sswitch_6
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v5, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v4, v5, :cond_2

    .line 1105
    sget-object v4, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    :cond_2
    move v4, v7

    .line 1107
    goto :goto_1

    .line 1111
    :sswitch_7
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    move v4, v7

    .line 1112
    goto :goto_1

    .line 1115
    :sswitch_8
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v5, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v4, v5, :cond_3

    .line 1116
    sget-object v4, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    :cond_3
    move v4, v7

    .line 1118
    goto :goto_1

    .line 1124
    :sswitch_9
    const-string v4, "MediaPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected search menu item:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1129
    :sswitch_a
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist()V

    goto/16 :goto_0

    .line 1058
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x11 -> :sswitch_0
        0x1a -> :sswitch_3
        0x1b -> :sswitch_5
        0xcb -> :sswitch_a
        0xcc -> :sswitch_9
        0x12c -> :sswitch_9
        0x12e -> :sswitch_a
        0x1f4 -> :sswitch_4
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_6
        0x258 -> :sswitch_7
    .end sparse-switch
.end method

.method private queueNextRefresh(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1472
    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1477
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshNow()J
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x3e8

    .line 1480
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v4, :cond_0

    .line 1481
    const-wide/16 v4, 0x1f4

    .line 1504
    :goto_0
    return-wide v4

    .line 1483
    :cond_0
    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    cmp-long v4, v4, v9

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->position()J

    move-result-wide v4

    move-wide v0, v4

    .line 1484
    .local v0, pos:J
    :goto_1
    rem-long v4, v0, v7

    sub-long v2, v7, v4

    .line 1485
    .local v2, remaining:J
    cmp-long v4, v0, v9

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_4

    .line 1486
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    div-long v5, v0, v7

    invoke-static {p0, v5, v6}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1489
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1490
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1497
    :goto_2
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    mul-long v5, v7, v0

    iget-wide v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V

    :goto_3
    move-wide v4, v2

    .line 1504
    goto :goto_0

    .line 1483
    .end local v0           #pos:J
    .end local v2           #remaining:J
    :cond_1
    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    move-wide v0, v4

    goto :goto_1

    .line 1493
    .restart local v0       #pos:J
    .restart local v2       #remaining:J
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1495
    const-wide/16 v2, 0x1f4

    goto :goto_2

    .line 1493
    :cond_3
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 1499
    :cond_4
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v5, "--:--"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v4, v11}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V

    goto :goto_3
.end method

.method private searchMoreByArtist()V
    .locals 7

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 697
    :cond_0
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistId()J

    move-result-wide v1

    .line 698
    .local v1, artistId:J
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, artistName:Ljava/lang/String;
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, sortableAlbumArtistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private seekMethod1(I)Z
    .locals 9
    .parameter "keyCode"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x2

    .line 1229
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v3, :cond_0

    move v3, v6

    .line 1257
    :goto_0
    return v3

    .line 1230
    :cond_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_c

    .line 1231
    const/4 v2, 0x0

    .local v2, y:I
    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    .line 1232
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    if-ne v3, p1, :cond_a

    .line 1233
    const/4 v0, 0x0

    .line 1235
    .local v0, dir:I
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    .line 1247
    :cond_1
    :goto_3
    iput v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    .line 1248
    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    .line 1249
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->position()J

    move-result-wide v4

    mul-int/lit8 v6, v0, 0x5

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->seek(J)J

    .line 1250
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1251
    const/4 v3, 0x1

    goto :goto_0

    .line 1236
    :cond_2
    if-nez v2, :cond_3

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 1237
    :cond_3
    if-nez v2, :cond_4

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    .line 1239
    :cond_4
    if-ne v2, v4, :cond_5

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    if-le v1, v3, :cond_5

    const/4 v0, -0x1

    goto :goto_3

    .line 1240
    :cond_5
    if-ne v2, v4, :cond_6

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    if-ge v1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    .line 1242
    :cond_6
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_7

    if-gt v1, v7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    .line 1243
    :cond_7
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-ge v2, v3, :cond_8

    if-lt v1, v8, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    .line 1245
    :cond_8
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_9

    if-gt v1, v7, :cond_9

    const/4 v0, -0x1

    goto :goto_3

    .line 1246
    :cond_9
    iget v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    if-le v2, v3, :cond_1

    if-lt v1, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    .line 1231
    .end local v0           #dir:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1230
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1255
    .end local v2           #y:I
    :cond_c
    iput v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastX:I

    .line 1256
    iput v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->lastY:I

    move v3, v6

    .line 1257
    goto/16 :goto_0
.end method

.method private seekMethod2(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 1262
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v2, :cond_0

    move v2, v3

    .line 1271
    :goto_0
    return v2

    .line 1263
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 1264
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->keyboard:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 1265
    mul-int/lit8 v2, v0, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 1266
    .local v1, seekpercentage:I
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->duration()J

    move-result-wide v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->seek(J)J

    .line 1267
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1268
    const/4 v2, 0x1

    goto :goto_0

    .line 1263
    .end local v1           #seekpercentage:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1271
    goto :goto_0
.end method

.method private setPauseButtonImage()V
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    goto :goto_0
.end method

.method private setRepeatButtonImage()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1442
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1436
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1439
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1454
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1451
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showContextMusicMenu(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 613
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->closeMusicMenu()V

    .line 615
    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v6, :cond_0

    .line 657
    :goto_0
    return-void

    .line 619
    :cond_0
    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v6}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:J

    .line 621
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 622
    new-instance v2, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenuCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {v2, p0, v7, v6}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 624
    .local v2, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    invoke-virtual {v2, p1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 625
    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    .line 638
    .end local v2           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :goto_1
    sget-object v6, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v6}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasRemote()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-static {p0, v6, v8}, Lcom/google/android/music/MusicUtils;->addInstantMixMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;I)Z

    .line 643
    :cond_1
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    const/16 v7, 0x258

    const/4 v8, 0x4

    const v9, 0x7f0c0017

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 644
    .local v3, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 645
    const v6, 0x7f020159

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 649
    :cond_2
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f02013c

    :goto_2
    invoke-static {v6, v7, v10}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 652
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    const/16 v7, 0x12e

    const/4 v8, 0x5

    const v9, 0x7f0c00c6

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 655
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    sget-object v7, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v7}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v6}, Lcom/google/android/music/menu/MusicMenu;->show()V

    goto :goto_0

    .line 627
    .end local v0           #item:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v3           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_3
    new-instance v2, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenuCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {v2, p0, v7, v6}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 629
    .local v2, menu:Lcom/google/android/music/menu/MusicPopupMenu;
    new-array v1, v10, [I

    .line 630
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 631
    aget v4, v1, v11

    .line 632
    .local v4, x:I
    aget v6, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 633
    .local v5, y:I
    invoke-virtual {v2, v4, v5, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 634
    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    goto :goto_1

    .end local v1           #location:[I
    .end local v2           #menu:Lcom/google/android/music/menu/MusicPopupMenu;
    .end local v4           #x:I
    .end local v5           #y:I
    .restart local v3       #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    move v7, v11

    .line 649
    goto :goto_2
.end method

.method private showToast(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1407
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1410
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1411
    return-void
.end method

.method private toggleShuffle()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1362
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v1, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1366
    .local v0, shuffle:I
    if-nez v0, :cond_2

    .line 1367
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 1368
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getRepeatMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setRepeatMode(I)V

    .line 1370
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1372
    :cond_1
    const v1, 0x7f0c006b

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1379
    :goto_1
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    goto :goto_0

    .line 1373
    :cond_2
    if-ne v0, v2, :cond_3

    .line 1374
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->setShuffleMode(I)V

    .line 1375
    const v1, 0x7f0c006c

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1

    .line 1377
    :cond_3
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 744
    return-void
.end method

.method private transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "newState"
    .parameter "errorMessage"

    .prologue
    const/high16 v7, 0x7f02

    const v6, 0x7f020001

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, p1, :cond_0

    .line 852
    :goto_0
    return-void

    .line 750
    :cond_0
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 751
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When transitioning to error, an error message must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_1
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v0, :cond_2

    .line 754
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 756
    :cond_2
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v0, :cond_3

    .line 757
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getErrorType()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->alertFailureIfNecessary(JI)V

    .line 760
    :cond_3
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$12;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-virtual {v1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 851
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    goto :goto_0

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 765
    :cond_5
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$12;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 767
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 768
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 769
    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V

    goto :goto_1

    .line 772
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 777
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 779
    invoke-direct {p0, v4, p2}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 780
    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 781
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 787
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_4

    .line 790
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V

    .line 791
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$12;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 800
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 802
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 803
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 804
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 805
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    .line 793
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 794
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 795
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_1

    .line 809
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 811
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 812
    invoke-direct {p0, v4, p2}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 819
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 822
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$12;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_a
    goto/16 :goto_1

    .line 835
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 836
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 837
    invoke-direct {p0, v3, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 838
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 839
    invoke-direct {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V

    goto/16 :goto_1

    .line 825
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 826
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 827
    invoke-direct {p0, v3, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 829
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 831
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 832
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 842
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 843
    invoke-direct {p0, v3, v5}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 844
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateScaleArtwork(Z)V

    .line 845
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalePlayingTimes(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 765
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 791
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 823
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private updateDebugStreamingInfo()V
    .locals 5

    .prologue
    .line 1676
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    .line 1680
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Streaming Status\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v2, status:Ljava/lang/StringBuilder;
    if-nez v1, :cond_3

    .line 1682
    const-string v3, "Not streaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1683
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v4, :cond_4

    .line 1684
    const-string v3, "Waiting for download to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1686
    :cond_4
    const-string v3, "Req bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    :goto_2
    const-string v3, "kbps\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v4, :cond_5

    .line 1694
    const-string v3, "Download complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1689
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1690
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "TBD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1695
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v4, :cond_2

    .line 1696
    const-string v3, "Download failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private updateStreaming()V
    .locals 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_0

    .line 1673
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getErrorType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->getErrorMessage(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 1672
    :goto_1
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateDebugStreamingInfo()V

    goto :goto_0

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_1

    .line 1670
    :cond_2
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_1
.end method

.method private updateTrackInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1591
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1592
    .local v0, numsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1593
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1594
    return-void
.end method

.method private updateTrackInfoImpl()V
    .locals 14

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_1

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1604
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 1612
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    .line 1615
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v10

    .line 1616
    .local v10, songid:J
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    .line 1617
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 1619
    .local v9, artistName:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1622
    :cond_3
    move-object v2, v9

    .line 1624
    .local v2, finalArtistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J

    move-result-wide v7

    .line 1626
    .local v7, albumid:J
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_5

    .line 1627
    iput-wide v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    .line 1628
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    .line 1629
    .local v6, albumName:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1630
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1631
    const-wide/16 v7, -0x1

    .line 1633
    :cond_4
    move-object v3, v6

    .line 1635
    .local v3, finalAlbumName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0, v7, v8, v6, v9}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    iget-wide v12, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/music/activitymanagement/AppState;->setRepresentativeAlbum(JZ)V

    .line 1640
    .end local v6           #albumName:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 1642
    .local v4, finalTrackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1643
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v0, v12

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1647
    .local v5, finalTotalTime:Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/MediaPlaybackActivity$11;-><init>(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1638
    .end local v3           #finalAlbumName:Ljava/lang/String;
    .end local v4           #finalTrackName:Ljava/lang/String;
    .end local v5           #finalTotalTime:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #finalAlbumName:Ljava/lang/String;
    goto :goto_1
.end method

.method private useDpadMusicControl()Z
    .locals 1

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/google/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/google/android/music/RepeatingImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v0}, Lcom/google/android/music/PlayPauseButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    :cond_0
    const/4 v0, 0x1

    .line 1280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeMusicMenu()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    .line 664
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1741
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020165

    :goto_0
    invoke-static {p1, v0, v2}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 1745
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    const/16 v0, 0x1f4

    const v1, 0x7f0c00c6

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1756
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1741
    goto :goto_0

    .line 1749
    :cond_1
    const/16 v0, 0x1f5

    const v1, 0x7f0c00df

    invoke-virtual {p1, v0, v3, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1751
    const/16 v0, 0x1f6

    const v1, 0x7f0c00e0

    invoke-virtual {p1, v0, v3, v1}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1753
    const/16 v0, 0x1b

    const/4 v1, 0x3

    const v2, 0x7f0c00f0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1175
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1178
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 549
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->toggleShuffle()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 551
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->cycleRepeat()V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-ne p1, v0, :cond_3

    .line 553
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->doPauseResume()V

    goto :goto_0

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_6

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v3, :cond_5

    .line 557
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_0

    .line 558
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v3, :cond_0

    .line 559
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_0

    .line 562
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 563
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->showContextMusicMenu(Landroid/view/View;)V

    goto :goto_0

    .line 564
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v0, :cond_8

    .line 565
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->prev()V

    goto :goto_0

    .line 567
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v0, :cond_9

    .line 568
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->next()V

    goto :goto_0

    .line 570
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 571
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist()V

    goto :goto_0

    .line 572
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    .line 573
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 575
    .local v1, albumId:J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getArtistId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListingForAlbum(JJJ)V

    goto/16 :goto_0

    .line 579
    .end local v1           #albumId:J
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 581
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getPlaylistCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 582
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 585
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 586
    new-instance v7, Lcom/google/android/music/menu/MusicDialogMenu;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v7, p0, p0, v0}, Lcom/google/android/music/menu/MusicDialogMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 588
    .local v7, dialogMenu:Lcom/google/android/music/menu/MusicDialogMenu;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 589
    .local v9, resources:Landroid/content/res/Resources;
    const v0, 0x7f0c0071

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, title:Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/google/android/music/menu/MusicDialogMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 591
    move-object v8, v7

    .line 598
    .end local v7           #dialogMenu:Lcom/google/android/music/menu/MusicDialogMenu;
    .end local v9           #resources:Landroid/content/res/Resources;
    .end local v10           #title:Ljava/lang/String;
    .local v8, menu:Lcom/google/android/music/menu/MusicListMenu;
    :goto_1
    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->populatePlaylistListMenuItems(Lcom/google/android/music/menu/MusicMenu;)V

    .line 599
    invoke-virtual {v8}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    goto/16 :goto_0

    .line 593
    .end local v8           #menu:Lcom/google/android/music/menu/MusicListMenu;
    :cond_d
    new-instance v8, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v8, p0, p0, v0}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 594
    .restart local v8       #menu:Lcom/google/android/music/menu/MusicListMenu;
    invoke-virtual {v8}, Lcom/google/android/music/menu/MusicPopupMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c0073

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 602
    .end local v8           #menu:Lcom/google/android/music/menu/MusicListMenu;
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown view clicked on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    sget-boolean v2, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "MediaPlaybackActivity"

    const-string v3, "onCreate()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    iput-boolean v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    .line 169
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 172
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 173
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2, v4}, Lcom/google/android/music/activitymanagement/AppState;->setNowPlayingBarEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/music/TopBar$ActionBarController;->setHomeIconReturnsToTop(Z)V

    .line 175
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 176
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V

    .line 177
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setVolumeControlStream(I)V

    .line 179
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 180
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setContentView(I)V

    .line 181
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_9

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    .line 184
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

    .line 185
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v3, 0x7f0c0052

    invoke-virtual {v2, p0, v3}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    .line 186
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 187
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->hideDisplayModes()V

    .line 188
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->showTrackListingIcon()V

    .line 190
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActionBarState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->hideSeperatorLine()V

    .line 193
    :cond_1
    const v2, 0x7f0f001b

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 194
    const v2, 0x7f0f001c

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 195
    const v2, 0x102000d

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/SizableTrackSeekBar;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    .line 196
    const v2, 0x7f0f0024

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/PassTouchEvents;

    .line 197
    .local v1, touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    if-eqz v1, :cond_2

    .line 198
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v1, v2}, Lcom/google/android/music/PassTouchEvents;->setSendEventsTo(Landroid/view/View;)V

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 201
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v2, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbAlpha(I)V

    .line 204
    :cond_3
    const v2, 0x7f0f0025

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    .line 205
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_4
    const v2, 0x7f0f0016

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 210
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 211
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v2, p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_5
    const v2, 0x7f0f0015

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/MediaPlaybackLayout;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    .line 214
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    if-eqz v2, :cond_6

    .line 215
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    invoke-virtual {v2, p0}, Lcom/google/android/music/MediaPlaybackLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_6
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v3, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLayerMode(Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;)V

    .line 220
    const v2, 0x7f0f000d

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    .line 221
    const v2, 0x7f0f0017

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    .line 222
    const v2, 0x7f0f001f

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 223
    const v2, 0x7f0f0020

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    .line 224
    const v2, 0x7f0f001e

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 225
    const v2, 0x7f0f001a

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    .line 227
    const v2, 0x7f0f0027

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    .line 228
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 229
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 237
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 242
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 245
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 247
    const v2, 0x7f0f0022

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    .line 248
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2, p0}, Lcom/google/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v2, 0x7f0f0021

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayPauseButton;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 250
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v2}, Lcom/google/android/music/PlayPauseButton;->requestFocus()Z

    .line 251
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v2, p0}, Lcom/google/android/music/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v2, 0x7f0f0023

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/RepeatingImageButton;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    .line 253
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2, p0}, Lcom/google/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iput v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 256
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    if-ne v2, v6, :cond_a

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 259
    const v2, 0x7f0f0018

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    .line 260
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v2, 0x7f0f0019

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    .line 262
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 265
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setMax(I)V

    .line 267
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 268
    new-instance v2, Lcom/google/android/music/BufferProgressListener;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    .line 270
    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    .line 271
    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    .line 273
    const v2, 0x7f0f0014

    invoke-virtual {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "music_streaming_debug"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, -0x3e50

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    .line 280
    return-void

    .end local v1           #touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    :cond_9
    move v2, v4

    .line 181
    goto/16 :goto_0

    .restart local v1       #touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    :cond_a
    move v2, v4

    .line 256
    goto/16 :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1159
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 1160
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/MediaPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/MediaPlaybackActivity$7;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1170
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1044
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1045
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1286
    const/4 v0, -0x1

    .line 1287
    .local v0, direction:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1289
    .local v1, repcnt:I
    iget v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->seekMethod1(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v3

    .line 1343
    :goto_0
    return v2

    .line 1289
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->seekMethod2(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1343
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1314
    :sswitch_0
    iget v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    move v2, v3

    .line 1315
    goto :goto_0

    .line 1318
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1321
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/google/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1322
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/google/android/music/RepeatingImageButton;->requestFocus()Z

    :cond_4
    move v2, v3

    .line 1324
    goto :goto_0

    .line 1326
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->useDpadMusicControl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1329
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/google/android/music/RepeatingImageButton;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1330
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-virtual {v2}, Lcom/google/android/music/RepeatingImageButton;->requestFocus()Z

    :cond_5
    move v2, v3

    .line 1332
    goto :goto_0

    .line 1335
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->toggleShuffle()V

    move v2, v3

    .line 1336
    goto :goto_0

    .line 1340
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->doPauseResume()V

    move v2, v3

    .line 1341
    goto :goto_0

    .line 1292
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x2f -> :sswitch_3
        0x3e -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_1

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->doExternalSearch(Landroid/view/View;)V

    .line 395
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->handleMenuCommand(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1049
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->handleMenuCommand(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 1029
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1021
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1022
    iput-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    .line 1023
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 0
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 1181
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackActivity;->addCurrentSongToPlaylist(JLjava/lang/String;)V

    .line 1182
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1033
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    .line 1037
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1038
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1039
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1040
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1000
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1002
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 1003
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1008
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1009
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1010
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1011
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1015
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1016
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    .line 1017
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 992
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    .line 993
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 995
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 996
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 300
    .local v0, action:I
    invoke-virtual {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    .line 301
    .local v5, tv:Landroid/widget/TextView;
    if-nez v5, :cond_0

    move v7, v10

    .line 366
    :goto_0
    return v7

    .line 304
    :cond_0
    if-nez v0, :cond_2

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    iput v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 306
    iput-boolean v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    :cond_1
    :goto_1
    move v7, v10

    .line 366
    goto :goto_0

    .line 307
    :cond_2
    if-eq v0, v9, :cond_3

    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    .line 309
    :cond_3
    iget-boolean v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v7, :cond_1

    .line 310
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 311
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 313
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 314
    iget-boolean v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v7, :cond_8

    .line 315
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    .line 316
    .local v4, scrollx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 317
    .local v6, x:I
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int v1, v7, v6

    .line 318
    .local v1, delta:I
    if-eqz v1, :cond_7

    .line 319
    iput v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    .line 320
    add-int/2addr v4, v1

    .line 321
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v4, v7, :cond_5

    .line 323
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v4, v7

    .line 324
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v4, v7

    .line 326
    :cond_5
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v7, v7

    if-ge v4, v7, :cond_6

    .line 328
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v4, v7

    .line 329
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v4, v7

    .line 331
    :cond_6
    invoke-virtual {v5, v4, v10}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_7
    move v7, v9

    .line 333
    goto :goto_0

    .line 335
    .end local v1           #delta:I
    .end local v4           #scrollx:I
    .end local v6           #x:I
    :cond_8
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    .line 336
    .restart local v1       #delta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v7, v8, :cond_1

    .line 338
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v7, v10, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 342
    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 343
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    :cond_9
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 348
    .local v2, ll:Landroid/text/Layout;
    if-nez v2, :cond_a

    move v7, v10

    .line 349
    goto/16 :goto_0

    .line 353
    :cond_a
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 354
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 355
    iget v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v7, v8, :cond_b

    .line 356
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v7, v10

    .line 358
    goto/16 :goto_0

    .line 360
    :cond_b
    iput-boolean v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 361
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v7, v9

    .line 363
    goto/16 :goto_0
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1760
    const/16 v4, 0x66

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1761
    .local v3, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1763
    :cond_0
    const/16 v4, 0x15

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1764
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1766
    :cond_1
    const/16 v4, 0x16

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1767
    if-eqz v3, :cond_2

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1769
    :cond_2
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1770
    if-eqz v3, :cond_3

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1772
    :cond_3
    const/16 v4, 0x13

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1773
    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1775
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1776
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1777
    const/16 v4, 0x1a

    const v5, 0x7f0c00ef

    invoke-virtual {p1, v4, v6, v5}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 1778
    .local v0, fx:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1779
    const v4, 0x7f020168

    invoke-virtual {v0, v4}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1783
    .end local v0           #fx:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v4, :cond_6

    .line 1784
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:J

    .line 1787
    :cond_6
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1788
    const/16 v4, 0x17

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1789
    if-eqz v3, :cond_7

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1791
    :cond_7
    const/16 v4, 0x12

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1792
    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1794
    :cond_8
    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1795
    if-eqz v3, :cond_9

    invoke-virtual {v3, v6}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1797
    :cond_9
    const/16 v4, 0x1f5

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1798
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v5, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v4, v5, :cond_e

    move v4, v7

    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1800
    :cond_a
    const/16 v4, 0x1f6

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1801
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v5, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v4, v5, :cond_f

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1803
    :cond_b
    const/4 v2, 0x0

    .line 1804
    .local v2, isRemote:Z
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v4, :cond_c

    .line 1805
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasRemote()Z

    move-result v2

    .line 1808
    :cond_c
    const/16 v4, 0x1b

    invoke-virtual {p1, v4}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 1809
    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 1811
    .end local v2           #isRemote:Z
    :cond_d
    return-void

    :cond_e
    move v4, v6

    .line 1798
    goto :goto_0

    :cond_f
    move v4, v6

    .line 1801
    goto :goto_1
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3
    .parameter "v"

    .prologue
    .line 289
    const v2, 0x7f0f001f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 290
    .local v1, vv:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 295
    :goto_0
    return-object v2

    .line 291
    :cond_0
    const v2, 0x7f0f0020

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 293
    :cond_1
    const v2, 0x7f0f001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 295
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public topRightClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    goto :goto_0
.end method
