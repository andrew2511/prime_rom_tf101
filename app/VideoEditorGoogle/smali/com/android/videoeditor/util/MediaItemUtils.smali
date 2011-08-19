.class public Lcom/android/videoeditor/util/MediaItemUtils;
.super Ljava/lang/Object;
.source "MediaItemUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getDefaultImageDuration()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public static getMinimumImageItemDuration()J
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static getMinimumMediaItemDuration(Lcom/android/videoeditor/service/MovieMediaItem;)J
    .locals 2
    .parameter "mediaItem"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/videoeditor/service/MovieMediaItem;->isVideoClip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/videoeditor/util/MediaItemUtils;->getMinimumVideoItemDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getMinimumVideoItemDuration()J
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
