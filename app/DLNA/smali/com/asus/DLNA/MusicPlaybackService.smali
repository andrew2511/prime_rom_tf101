.class public Lcom/asus/DLNA/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;
    }
.end annotation


# static fields
.field private static final MUSIC_PLAYBACK_COMPLETED:Ljava/lang/String; = "music.playback.complete"

.field private static final MUSIC_PLAYBACK_ERROR:Ljava/lang/String; = "music.playback.error"

.field private static final MUSIC_PLAYBACK_PREPARED:Ljava/lang/String; = "music.playback.prepared"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicPlaybackService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCurrentMusicPath:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPrepared:Z

.field private mTrackName:Ljava/lang/String;

.field playbackCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field playbackErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field playbackprepareListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    new-instance v0, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/MusicPlaybackService$ServiceStub;-><init>(Lcom/asus/DLNA/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 137
    iput-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mCurrentMusicPath:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mTrackName:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mPrepared:Z

    .line 191
    new-instance v0, Lcom/asus/DLNA/MusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/MusicPlaybackService$1;-><init>(Lcom/asus/DLNA/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 220
    new-instance v0, Lcom/asus/DLNA/MusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/MusicPlaybackService$2;-><init>(Lcom/asus/DLNA/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 236
    new-instance v0, Lcom/asus/DLNA/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/asus/DLNA/MusicPlaybackService$3;-><init>(Lcom/asus/DLNA/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackprepareListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/DLNA/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/DLNA/MusicPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->dobroadcastErrorMSG()V

    return-void
.end method

.method private doCleanMeidaPlayer()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mPrepared:Z

    .line 186
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 189
    :cond_0
    return-void
.end method

.method private dobroadcastErrorMSG()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "music.playback.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private dobroadcastPreparedMSG()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "music.playback.prepared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mPrepared:Z

    .line 247
    return-void
.end method

.method private showNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 279
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/asus/DLNA/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 280
    .local v1, views:Landroid/widget/RemoteViews;
    const v2, 0x7f080036

    const/high16 v3, 0x7f02

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 281
    const v2, 0x7f080037

    iget-object v3, p0, Lcom/asus/DLNA/MusicPlaybackService;->mTrackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 284
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 285
    .local v0, status:Landroid/app/Notification;
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 286
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 287
    const v2, 0x7f02007b

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 288
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.asus.DLNA"

    const-string v4, "com.asus.DLNA.DLNA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 293
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/asus/DLNA/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 294
    return-void
.end method


# virtual methods
.method public duration()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 303
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mPrepared:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 322
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public next()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 64
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 65
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    .line 67
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mCurrentMusicPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mTrackName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/DLNA/MusicPlaybackService;->setDataSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 274
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->showNotification()V

    goto :goto_0
.end method

.method public position()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 309
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mPrepared:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public prev()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public seek(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 317
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    move v0, p1

    .line 317
    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "trackname"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    if-nez p1, :cond_0

    move v1, v3

    .line 180
    :goto_0
    return v1

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mCurrentMusicPath:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/asus/DLNA/MusicPlaybackService;->mTrackName:Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    .line 148
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 154
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 160
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 161
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 162
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->dobroadcastPreparedMSG()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 178
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 179
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/asus/DLNA/MusicPlaybackService;->playbackprepareListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    move v1, v4

    .line 180
    goto :goto_0

    .line 157
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    .line 166
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->dobroadcastErrorMSG()V

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v3

    .line 168
    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    .line 172
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->dobroadcastErrorMSG()V

    .line 173
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v1, v3

    .line 174
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 259
    invoke-direct {p0}, Lcom/asus/DLNA/MusicPlaybackService;->doCleanMeidaPlayer()V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/DLNA/MusicPlaybackService;->stopForeground(Z)V

    goto :goto_0
.end method
