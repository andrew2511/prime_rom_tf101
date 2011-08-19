.class public interface abstract Lcom/google/android/youtube/videos/Requesters;
.super Ljava/lang/Object;
.source "Requesters.java"


# virtual methods
.method public abstract getFastMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFastOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreshMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFreshOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPingRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSequentialMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getVideoRequester()Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end method
