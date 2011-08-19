.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$12;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "VideoRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->addVideoInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v3, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v3}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 384
    .local v2, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v3, "rel"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, rel:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->access$100()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const-string v3, "href"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.related"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 401
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 389
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    const-string v3, "edit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 391
    :cond_2
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.ratings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 393
    :cond_3
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.captionTracks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    const-string v3, "true"

    const-string v4, "yt:hasEntries"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 397
    :cond_4
    const-string v3, "http://gdata.youtube.com/schemas/2007#video.trailers"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
