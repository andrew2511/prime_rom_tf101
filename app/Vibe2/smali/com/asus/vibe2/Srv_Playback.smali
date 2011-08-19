.class public Lcom/asus/vibe2/Srv_Playback;
.super Landroid/app/Service;
.source "Srv_Playback.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;
    }
.end annotation


# static fields
.field private static mExecuting:Ljava/lang/Boolean;


# instance fields
.field private final mBinder:Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;

.field private mCurrentBufferPercentage:I

.field private mParam:Lcom/asus/vibe/item/VibeParam;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerState:I

.field private mPlayingUri:Lcom/asus/vibe/item/VibeUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/asus/vibe2/Srv_Playback;->mExecuting:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;-><init>(Lcom/asus/vibe2/Srv_Playback;)V

    iput-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mBinder:Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;

    .line 42
    iput-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 45
    iput-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    .line 46
    iput-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/asus/vibe2/Srv_Playback;->mExecuting:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-object p0, Lcom/asus/vibe2/Srv_Playback;->mExecuting:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Srv_Playback;Lcom/asus/vibe/item/VibeParam;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Srv_Playback;->playInternal(Lcom/asus/vibe/item/VibeParam;)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Srv_Playback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/asus/vibe2/Srv_Playback;->stopInternal()V

    return-void
.end method

.method private playInternal(Lcom/asus/vibe/item/VibeParam;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x440

    const/4 v5, 0x0

    .line 115
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/asus/vibe2/Srv_Playback;->stopInternal()V

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/asus/vibe2/Srv_Playback;->stopInternal()V

    .line 216
    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance v0, Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v0, p1}, Lcom/asus/vibe/item/VibeParam;-><init>(Lcom/asus/vibe/item/VibeParam;)V

    iput-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 125
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/item/VibeUri;

    .line 128
    iget-object v3, v0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "local"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/asus/vibe2/Srv_Playback;->stopInternal()V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v3, v0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "free"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "premium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 134
    iget-object v3, v0, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_3
    move-object v2, v0

    .line 135
    goto :goto_1

    .line 142
    :cond_5
    iput-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    .line 144
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "MEDIAPLAYER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7

    .line 148
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 152
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 153
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 154
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 155
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 156
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v1, :cond_9

    .line 158
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Srv_Playback: playing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_8
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Srv_Playback: ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_9
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Srv_Playback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/vibe2/Srv_Playback;->mCurrentBufferPercentage:I

    .line 164
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    :cond_b
    :goto_4
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 187
    const v1, 0x7f08001e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    const v1, 0x7f08001f

    iget-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 191
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 192
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 193
    const v0, 0x7f020042

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 195
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "BROWSER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.PLAY_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/asus/vibe2/Act_WebViewPlayer;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 212
    :cond_d
    :goto_5
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 213
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.PLAYER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_4

    .line 167
    :catch_1
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4

    .line 169
    :catch_2
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 172
    :cond_e
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v1, "BROWSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v1, "application/x-shockwave-flash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.PLAY_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/vibe2/Act_WebViewPlayer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const-string v1, "com.asus.vibe.PARAM"

    new-instance v2, Lcom/asus/vibe/item/VibeItemParcelable;

    iget-object v3, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v2, v3}, Lcom/asus/vibe/item/VibeItemParcelable;-><init>(Lcom/asus/vibe/item/VibeItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 203
    :cond_10
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "MEDIAPLAYER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 205
    :cond_11
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/asus/vibe2/Act_VibeMain;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_5

    :cond_12
    move-object v0, v2

    goto/16 :goto_3

    :cond_13
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private stopInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 219
    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 223
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 225
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 226
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 227
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 228
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 229
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 230
    iput-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    .line 232
    :cond_1
    iput-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    .line 233
    iput-object v2, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 236
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Srv_Playback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 237
    .local v0, nManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 239
    iput v3, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.PLAYER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Srv_Playback;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public doPausePlay()V
    .locals 3

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 269
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ASUS@Vibe"

    const-string v2, "Srv_Playback: doPausePlay fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 325
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mCurrentBufferPercentage:I

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 284
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ASUS@Vibe"

    const-string v2, "Srv_Playback: Can not get position"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 285
    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v1, v3

    .line 288
    goto :goto_0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 248
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 250
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ASUS@Vibe"

    const-string v2, "Srv_Playback: Can not get duration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 253
    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v1, v3

    .line 256
    goto :goto_0
.end method

.method public getIsLive()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    .line 306
    const/4 v1, 0x0

    .line 312
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ASUS@Vibe"

    const-string v2, "Srv_Playback: Can not isPlaying"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 310
    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v1, v3

    .line 312
    goto :goto_0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    return v0
.end method

.method public getPlayingContentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    .line 336
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Detail;->mContentName:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayingParam()Lcom/asus/vibe/item/VibeParam;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mParam:Lcom/asus/vibe/item/VibeParam;

    return-object v0
.end method

.method public getPlayingUri()Lcom/asus/vibe/item/VibeUri;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayingUri:Lcom/asus/vibe/item/VibeUri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 294
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ASUS@Vibe"

    const-string v2, "Srv_Playback: Can not isPlaying"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 297
    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v1, v3

    .line 300
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 71
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onBind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mBinder:Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 361
    iput p2, p0, Lcom/asus/vibe2/Srv_Playback;->mCurrentBufferPercentage:I

    .line 362
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->stop()V

    .line 347
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 51
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->stop()V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    .line 66
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 366
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Srv_Playback: MediaPlayer Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-ne v0, v3, :cond_1

    .line 368
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    :goto_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_Playback;->stop()V

    .line 374
    return v3

    .line 370
    :cond_1
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 350
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Srv_Playback: MediaPlayer Info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-ne v0, v3, :cond_2

    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_2

    .line 352
    iput v4, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 356
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.PLAYER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_2
    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    if-ne v0, v4, :cond_1

    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1

    .line 354
    iput v3, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 341
    const/4 v0, 0x2

    iput v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.vibe.action.PLAYER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Srv_Playback;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 77
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStartCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public play(Lcom/asus/vibe/item/VibeParam;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 82
    new-instance v0, Lcom/asus/vibe2/Srv_Playback$1;

    invoke-direct {v0, p0, p1}, Lcom/asus/vibe2/Srv_Playback$1;-><init>(Lcom/asus/vibe2/Srv_Playback;Lcom/asus/vibe/item/VibeParam;)V

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback$1;->start()V

    .line 95
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 277
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/asus/vibe2/Srv_Playback$2;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Srv_Playback$2;-><init>(Lcom/asus/vibe2/Srv_Playback;)V

    invoke-virtual {v0}, Lcom/asus/vibe2/Srv_Playback$2;->start()V

    .line 111
    return-void
.end method
