.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$8;
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
    .line 428
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 7
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
    .line 431
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-string v5, "action"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, action:Ljava/lang/String;
    const-string v5, "monetize"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    const-class v5, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v5}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 434
    .local v4, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v5, "permission"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, permission:Ljava/lang/String;
    const-string v5, "type"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, type:Ljava/lang/String;
    const-string v5, "country"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 437
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 438
    .local v1, monetizedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 445
    .end local v1           #monetizedCountries:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #permission:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    :cond_0
    :goto_0
    return-void

    .line 442
    .restart local v2       #permission:Ljava/lang/String;
    .restart local v3       #type:Ljava/lang/String;
    .restart local v4       #videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    :cond_1
    const-string v5, "allowed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
