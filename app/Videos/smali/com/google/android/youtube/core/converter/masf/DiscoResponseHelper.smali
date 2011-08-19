.class Lcom/google/android/youtube/core/converter/masf/DiscoResponseHelper;
.super Ljava/lang/Object;
.source "DiscoResponseHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static fromMusicVideoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, musicVideoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .local v0, artistTape:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 25
    .local v2, track:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    invoke-static {v2}, Lcom/google/android/youtube/core/converter/masf/DiscoResponseHelper;->fromTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/MusicVideo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    .end local v2           #track:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_0
    return-object v0
.end method

.method public static fromTrack(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/MusicVideo;
    .locals 7
    .parameter "track"

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/youtube/core/model/MusicVideo;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getEncryptedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVideoLengthInSeconds()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/MusicVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
