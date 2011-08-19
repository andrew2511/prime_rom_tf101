.class public Lcom/google/android/youtube/videos/DrmControllerOverlay;
.super Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.source "DrmControllerOverlay.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/Analytics;)V
    .locals 0
    .parameter "context"
    .parameter "player"
    .parameter "analytics"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/Analytics;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected handlePlayerError(II)V
    .locals 6
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x1

    .line 25
    if-eq p1, v3, :cond_0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handlePlayerError(II)V

    .line 76
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getStream()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/DrmControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    const v2, 0x7f0c009a

    invoke-virtual {p0, v2, v3}, Lcom/google/android/youtube/videos/DrmControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    .local v0, canRetry:Z
    const v1, 0x7f0c0047

    .line 32
    .local v1, messageId:I
    sparse-switch p2, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handlePlayerError(II)V

    goto :goto_0

    .line 34
    :sswitch_0
    const v1, 0x7f0c0072

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/DrmControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/videos/DrmControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 37
    :sswitch_1
    const v1, 0x7f0c007b

    .line 38
    goto :goto_1

    .line 40
    :sswitch_2
    const v1, 0x7f0c007a

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_1

    .line 44
    :sswitch_3
    const v1, 0x7f0c0049

    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 48
    :sswitch_4
    const v1, 0x7f0c007e

    .line 49
    goto :goto_1

    .line 51
    :sswitch_5
    const v1, 0x7f0c007d

    .line 52
    goto :goto_1

    .line 54
    :sswitch_6
    const v1, 0x7f0c0079

    .line 55
    goto :goto_1

    .line 57
    :sswitch_7
    const v1, 0x7f0c0079

    .line 58
    goto :goto_1

    .line 60
    :sswitch_8
    const v1, 0x7f0c007f

    .line 61
    goto :goto_1

    .line 63
    :sswitch_9
    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmControllerOverlay;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getStream()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v2, :cond_2

    .line 64
    const v1, 0x7f0c0049

    goto :goto_1

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        -0xbbe -> :sswitch_3
        -0xbbd -> :sswitch_4
        -0xbbc -> :sswitch_1
        -0xbbb -> :sswitch_5
        -0xbba -> :sswitch_2
        -0xbb9 -> :sswitch_6
        -0xbb8 -> :sswitch_0
        -0x7d1 -> :sswitch_7
        -0x3f6 -> :sswitch_8
        -0x3ec -> :sswitch_9
    .end sparse-switch
.end method
