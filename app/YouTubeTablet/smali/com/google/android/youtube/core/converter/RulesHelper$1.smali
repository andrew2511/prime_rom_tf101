.class final Lcom/google/android/youtube/core/converter/RulesHelper$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "RulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter
    .parameter
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
    .line 84
    const-string v0, "rel"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/google/android/youtube/core/converter/RulesHelper;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-class v1, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 87
    const-string v1, "href"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    const-string v2, "next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v2, "previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    goto :goto_0
.end method
