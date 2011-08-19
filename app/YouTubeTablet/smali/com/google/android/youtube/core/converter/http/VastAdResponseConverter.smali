.class public Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "VastAdResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/VastAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 3
    .parameter "parser"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    const-string v1, "/VAST"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$6;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$6;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Impression"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$5;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$5;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$4;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$3;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/VideoClicks/ClickThrough"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$2;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/VideoClicks/ClickTracking"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$1;-><init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 89
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
