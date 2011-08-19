.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$11;
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
    .line 403
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    .line 406
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v2, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 407
    .local v1, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v2, "http://gdata.youtube.com/schemas/2007/categories.cat"

    const-string v3, "scheme"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const-string v2, "label"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, category:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->category(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 411
    .end local v0           #category:Ljava/lang/String;
    :cond_0
    return-void
.end method
