.class public Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "EventPageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final SCHEME_VALUE_FOR_ACTION:Ljava/lang/String; = "http://gdata.youtube.com/schemas/2007/userevents.cat"


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 3
    .parameter "parser"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 30
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$6;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$6;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry/author/name"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$5;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$5;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry/category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$4;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry/updated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$3;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry/yt:videoid"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$2;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/feed/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$1;-><init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 78
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
