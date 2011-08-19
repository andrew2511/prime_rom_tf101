.class public Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "PlaylistResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 2
    .parameter "parser"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    .line 24
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    invoke-static {v0}, Lcom/google/android/youtube/core/converter/http/PlaylistRulesHelper;->addPlaylistRules(Lcom/google/android/youtube/core/converter/Rules$Builder;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 26
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
