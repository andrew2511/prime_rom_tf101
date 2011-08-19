.class public final Lcom/google/android/youtube/core/model/MusicVideo;
.super Ljava/lang/Object;
.source "MusicVideo.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Optional;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Optional",
        "<",
        "Lcom/google/android/youtube/core/model/MusicVideo;",
        ">;"
    }
.end annotation


# instance fields
.field public final artistId:Ljava/lang/String;

.field public final artistName:Ljava/lang/String;

.field public final duration:I

.field public final trackId:Ljava/lang/String;

.field public final trackName:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "videoId"
    .parameter "artistId"
    .parameter "artistName"
    .parameter "trackId"
    .parameter "trackName"
    .parameter "duration"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "videoId may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    .line 47
    const-string v0, "artistId may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/MusicVideo;->artistId:Ljava/lang/String;

    .line 48
    const-string v0, "artistName may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/MusicVideo;->artistName:Ljava/lang/String;

    .line 49
    const-string v0, "trackId may not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/MusicVideo;->trackId:Ljava/lang/String;

    .line 50
    const-string v0, "trackName may not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/MusicVideo;->trackName:Ljava/lang/String;

    .line 51
    iput p6, p0, Lcom/google/android/youtube/core/model/MusicVideo;->duration:I

    .line 52
    return-void
.end method
