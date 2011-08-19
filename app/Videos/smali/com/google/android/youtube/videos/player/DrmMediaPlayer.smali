.class public Lcom/google/android/youtube/videos/player/DrmMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "DrmMediaPlayer.java"

# interfaces
.implements Lcom/google/android/youtube/videos/DrmManager$Listener;


# static fields
.field private static final HEARTBEAT_CANNOT_ACTIVATE_RENTAL:I = 0x206

.field private static final HEARTBEAT_CANNOT_AUTHENTICATE:I = 0x201

.field private static final HEARTBEAT_CONCURRENT_PLAYBACK:I = 0x203

.field private static final HEARTBEAT_NO_ACTIVE_PURCHASE_AGREEMENT:I = 0x202

.field private static final HEARTBEAT_STREAMING_UNAVAILABLE:I = 0x205

.field private static final HEARTBEAT_UNUSUAL_ACTIVITY:I = 0x204


# instance fields
.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field protected errorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/DrmManager;)V
    .locals 0
    .parameter "drmManager"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/videos/DrmManager;->setListener(Lcom/google/android/youtube/videos/DrmManager$Listener;)V

    .line 33
    return-void
.end method

.method private toMediaPlayerErrorCode(I)I
    .locals 1
    .parameter "cgiError"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 74
    const/16 v0, -0xbbe

    :goto_0
    return v0

    .line 62
    :pswitch_0
    const/16 v0, -0xbb8

    goto :goto_0

    .line 64
    :pswitch_1
    const/16 v0, -0xbb9

    goto :goto_0

    .line 66
    :pswitch_2
    const/16 v0, -0xbba

    goto :goto_0

    .line 68
    :pswitch_3
    const/16 v0, -0xbbb

    goto :goto_0

    .line 70
    :pswitch_4
    const/16 v0, -0xbbc

    goto :goto_0

    .line 72
    :pswitch_5
    const/16 v0, -0xbbd

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final onHeartbeatError(Ljava/lang/String;I)V
    .locals 3
    .parameter "assetPath"
    .parameter "cgiError"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->toMediaPlayerErrorCode(I)I

    move-result v0

    .line 56
    .local v0, mediaPlayerError:I
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 57
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v1, p2}, Lcom/google/android/youtube/videos/DrmManager;->getPlayableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    .local v0, playableUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t obtain playable stream for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    invoke-super {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 45
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "errorListener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 50
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 51
    return-void
.end method
