.class public Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "PlaylistPageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 2
    .parameter "parser"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 21
    invoke-static {}, Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules()Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    .line 22
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/PlaylistRulesHelper;->addPlaylistPageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 24
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
