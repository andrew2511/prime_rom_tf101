.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressView:Landroid/view/View;

.field private final mUri:Landroid/net/Uri;

.field private final mVideoView:Lcom/android/gallery3d/app/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;)V
    .locals 8
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 77
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 78
    const v4, 0x7f07000e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/VideoView;

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    .line 79
    const v4, 0x7f07000f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressView:Landroid/view/View;

    .line 80
    new-instance v4, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v4, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 81
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 85
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "rtsp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 93
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/app/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 95
    new-instance v2, Lcom/android/gallery3d/app/MediaController;

    invoke-direct {v2, p2}, Lcom/android/gallery3d/app/MediaController;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, mediaController:Lcom/android/gallery3d/app/MediaController;
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/app/VideoView;->setMediaController(Lcom/android/gallery3d/app/MediaController;)V

    .line 97
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v4, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MovieActivity;)V

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/app/MediaController;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 110
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 113
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/VideoView;->requestFocus()Z

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p2, v1}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 120
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    .line 125
    :goto_1
    return-void

    .line 89
    .end local v0           #bookmark:Ljava/lang/Integer;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #mediaController:Lcom/android/gallery3d/app/MediaController;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 123
    .restart local v0       #bookmark:Ljava/lang/Integer;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #mediaController:Lcom/android/gallery3d/app/MediaController;
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/VideoView;->start()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v1, 0x7f080008

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/util/Utils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    const v1, 0x7f080009

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v1, 0x7f08000d

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 185
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/VideoView;->stopPlayback()V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 175
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/VideoView;->suspend()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 163
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/VideoView;->seekTo(I)V

    .line 169
    .end local v0           #bookmark:Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/VideoView;->resume()V

    .line 170
    return-void
.end method
