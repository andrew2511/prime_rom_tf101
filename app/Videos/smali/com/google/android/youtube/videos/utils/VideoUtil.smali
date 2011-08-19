.class public Lcom/google/android/youtube/videos/utils/VideoUtil;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasStreams(Lcom/google/android/youtube/core/model/Video;)Z
    .locals 1
    .parameter "video"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->streamUri240p:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->streamUri405p:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->streamUri480p:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
