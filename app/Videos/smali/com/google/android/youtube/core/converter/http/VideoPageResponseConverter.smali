.class public Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "VideoPageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V
    .locals 3
    .parameter "parser"
    .parameter "useHqThumbnails"

    .prologue
    const-string v2, "/feed"

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 25
    const-string v1, "/feed"

    invoke-static {v2}, Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    .line 26
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    const-string v1, "/feed"

    invoke-static {v0, v2, p2}, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->addVideoPageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 28
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
