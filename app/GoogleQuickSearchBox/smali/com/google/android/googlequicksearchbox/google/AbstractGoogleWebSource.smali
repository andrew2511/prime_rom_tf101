.class public abstract Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;
.source "AbstractGoogleWebSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 39
    return-void
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected doQueryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
    .parameter "query"

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 46
    return-object v0
.end method

.method protected doQueryInternal(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 61
    invoke-interface {p2, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "query"

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    .line 52
    .local v0, latency:Lcom/google/android/googlequicksearchbox/LatencyTracker;
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->doQueryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    .line 53
    .local v1, webSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->setLatency(I)V

    .line 54
    return-object v1
.end method
