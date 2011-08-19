.class public Lcom/google/android/youtube/core/converter/masf/MusicVideosResponseConverter;
.super Ljava/lang/Object;
.source "MusicVideosResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/MusicVideo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/MusicVideosResponseConverter;->convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)Ljava/util/List;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v2

    .line 29
    .local v2, responseProto:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideoList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/converter/masf/DiscoResponseHelper;->fromMusicVideoList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 30
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #responseProto:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 31
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v4, "IO error converting music video data response"

    invoke-direct {v3, v4, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
