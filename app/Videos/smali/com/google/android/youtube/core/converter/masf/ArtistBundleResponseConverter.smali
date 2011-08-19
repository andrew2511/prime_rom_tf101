.class public final Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;
.super Ljava/lang/Object;
.source "ArtistBundleResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
        "Lcom/google/android/youtube/core/model/ArtistBundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/Artist;
    .locals 4
    .parameter "artist"

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/youtube/core/model/Artist;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;->getBiography()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static fromGetArtistOneCallResponse(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/ArtistBundle;
    .locals 5
    .parameter "responseProto"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMainArtist()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;->fromArtist(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$Artist;)Lcom/google/android/youtube/core/model/Artist;

    move-result-object v0

    .line 41
    .local v0, artist:Lcom/google/android/youtube/core/model/Artist;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getArtistTrackList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/converter/masf/DiscoResponseHelper;->fromMusicVideoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, artistTape:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getMixTrackList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/converter/masf/DiscoResponseHelper;->fromMusicVideoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, mixTape:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->getRelatedArtistList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;->fromRelatedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, related:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/ArtistBundle$Related;>;"
    new-instance v4, Lcom/google/android/youtube/core/model/ArtistBundle;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/google/android/youtube/core/model/ArtistBundle;-><init>(Lcom/google/android/youtube/core/model/Artist;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method private static fromRelatedList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/ArtistBundle$Related;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, relatedArtists:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v1, related:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/ArtistBundle$Related;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 57
    .local v2, relatedArtist:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    new-instance v3, Lcom/google/android/youtube/core/model/ArtistBundle$Related;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/model/ArtistBundle$Related;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v2           #relatedArtist:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Lcom/google/android/youtube/core/model/ArtistBundle;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 31
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;->parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;

    move-result-object v2

    .line 32
    .local v2, responseProto:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    invoke-static {v2}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;->fromGetArtistOneCallResponse(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;)Lcom/google/android/youtube/core/model/ArtistBundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 33
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #responseProto:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 34
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v4, "IO error converting artist one call response"

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;->convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Lcom/google/android/youtube/core/model/ArtistBundle;

    move-result-object v0

    return-object v0
.end method
