.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$27;
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
    .line 486
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "attrs"
    .parameter "chars"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v3, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v3}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 490
    .local v2, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v3, "scheme"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "http://gdata.youtube.com/schemas/2007/mediatypes.cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->access$200()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v2, p0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 493
    .restart local p0
    :cond_1
    const-string v3, "http://gdata.youtube.com/schemas/2007/releasemediums.cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->access$300()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/google/android/youtube/core/model/Video$Builder;->addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 495
    .restart local p0
    :cond_2
    const-string v3, "http://gdata.youtube.com/schemas/2007/moviegenres.cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 496
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->access$400()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 497
    .local v0, genre:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/Video$Genre;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 500
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown movie genre code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    .end local v0           #genre:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    :cond_4
    const-string v3, "http://gdata.youtube.com/schemas/2007/showgenres.cat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->access$500()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 504
    .local v0, genre:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    if-eqz v0, :cond_5

    .line 505
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/Video$Genre;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 507
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown show genre code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
