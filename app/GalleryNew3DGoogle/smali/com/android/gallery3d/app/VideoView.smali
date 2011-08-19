.class public Lcom/android/gallery3d/app/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Lcom/android/gallery3d/app/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->TAG:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 263
    new-instance v0, Lcom/android/gallery3d/app/VideoView$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$1;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 274
    new-instance v0, Lcom/android/gallery3d/app/VideoView$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$2;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 336
    new-instance v0, Lcom/android/gallery3d/app/VideoView$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$3;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 350
    new-instance v0, Lcom/android/gallery3d/app/VideoView$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$4;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lcom/android/gallery3d/app/VideoView$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$5;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 445
    new-instance v0, Lcom/android/gallery3d/app/VideoView$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$6;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 92
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->initVideoView()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/app/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->initVideoView()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->TAG:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 74
    iput-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    iput-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 263
    new-instance v0, Lcom/android/gallery3d/app/VideoView$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$1;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 274
    new-instance v0, Lcom/android/gallery3d/app/VideoView$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$2;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 336
    new-instance v0, Lcom/android/gallery3d/app/VideoView$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$3;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 350
    new-instance v0, Lcom/android/gallery3d/app/VideoView$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$4;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lcom/android/gallery3d/app/VideoView$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$5;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 445
    new-instance v0, Lcom/android/gallery3d/app/VideoView$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoView$6;-><init>(Lcom/android/gallery3d/app/VideoView;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->initVideoView()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/gallery3d/app/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/gallery3d/app/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/gallery3d/app/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/gallery3d/app/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/MediaController;->setMediaPlayer(Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 258
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/MediaController;->setEnabled(Z)V

    .line 261
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 256
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    .line 158
    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/VideoView;->setFocusable(Z)V

    .line 162
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/VideoView;->setFocusableInTouchMode(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->requestFocus()Z

    .line 164
    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 165
    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 166
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    if-eq v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 199
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/VideoView;->release(Z)V

    .line 213
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 214
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 215
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 216
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    .line 217
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 218
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 219
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 220
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentBufferPercentage:I

    .line 221
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/gallery3d/app/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 222
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 223
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 224
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 228
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 229
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 231
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    iput v6, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 233
    iput v6, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 234
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 236
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 237
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    iput v6, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 239
    iput v6, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 240
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 492
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 493
    if-eqz p1, :cond_0

    .line 494
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 497
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MediaController;->hide()V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 626
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentBufferPercentage:I

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 595
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    .line 601
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    .line 598
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    goto :goto_0

    .line 600
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    .line 601
    iget v0, p0, Lcom/android/gallery3d/app/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 518
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    move v0, v2

    .line 525
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    if-eqz v1, :cond_9

    .line 526
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_3

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->pause()V

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MediaController;->show()V

    :goto_1
    move v1, v2

    .line 554
    :goto_2
    return v1

    .line 518
    .end local v0           #isKeyCodeSupported:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 532
    .restart local v0       #isKeyCodeSupported:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->start()V

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MediaController;->hide()V

    goto :goto_1

    .line 536
    :cond_3
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_5

    .line 537
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->start()V

    .line 539
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MediaController;->hide()V

    :cond_4
    move v1, v2

    .line 541
    goto :goto_2

    .line 542
    :cond_5
    const/16 v1, 0x56

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_8

    .line 544
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 545
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->pause()V

    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MediaController;->show()V

    :cond_7
    move v1, v2

    .line 548
    goto :goto_2

    .line 550
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->toggleMediaControlsVisiblity()V

    .line 554
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 108
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/android/gallery3d/app/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 109
    .local v1, width:I
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/android/gallery3d/app/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 110
    .local v0, height:I
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 111
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 113
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/VideoView;->setMeasuredDimension(II)V

    .line 125
    return-void

    .line 114
    :cond_1
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 116
    iget v2, p0, Lcom/android/gallery3d/app/VideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/app/VideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->toggleMediaControlsVisiblity()V

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->toggleMediaControlsVisiblity()V

    .line 512
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 574
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 577
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 580
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 581
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->openVideo()V

    .line 589
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/VideoView;->mSeekWhenPrepared:I

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/android/gallery3d/app/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MediaController;->hide()V

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView;->mMediaController:Lcom/android/gallery3d/app/MediaController;

    .line 250
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->attachMediaController()V

    .line 251
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 430
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 443
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/app/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView;->mUri:Landroid/net/Uri;

    .line 181
    iput-object p2, p0, Lcom/android/gallery3d/app/VideoView;->mHeaders:Ljava/util/Map;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/VideoView;->mSeekWhenPrepared:I

    .line 183
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->openVideo()V

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->requestLayout()V

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/app/VideoView;->invalidate()V

    .line 186
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 566
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 568
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 570
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 571
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 193
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mCurrentState:I

    .line 194
    iput v1, p0, Lcom/android/gallery3d/app/VideoView;->mTargetState:I

    .line 196
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/VideoView;->release(Z)V

    .line 585
    return-void
.end method
