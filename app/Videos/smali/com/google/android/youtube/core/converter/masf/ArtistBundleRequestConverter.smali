.class public Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;
.super Ljava/lang/Object;
.source "ArtistBundleRequestConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;",
        ">;"
    }
.end annotation


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "serviceString"
    .parameter "serviceVersion"
    .parameter "countryCode"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->countryCode:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    .line 25
    return-void
.end method

.method static stubbyRequestFromArtistId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "artistId"
    .parameter "countryCode"

    .prologue
    .line 40
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setArtistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertRequest(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;
    .locals 2
    .parameter "request"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->stubbyConverter:Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->countryCode:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->stubbyRequestFromArtistId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/masf/StubbyRequestConverter;->convertRequest(Lcom/google/protobuf/MessageLite;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;->convertRequest(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    move-result-object v0

    return-object v0
.end method
