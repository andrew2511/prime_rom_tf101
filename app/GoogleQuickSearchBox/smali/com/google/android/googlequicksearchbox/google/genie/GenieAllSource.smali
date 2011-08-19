.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;
.source "GenieAllSource.java"


# instance fields
.field private final mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

.field private final mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Lcom/google/android/googlequicksearchbox/google/Maps;)V
    .locals 6
    .parameter "context"
    .parameter "config"
    .parameter "settings"
    .parameter "searchUrlHelper"
    .parameter "httpHelper"
    .parameter "maps"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 52
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 53
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 54
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    .line 55
    iput-object p6, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    .line 56
    return-void
.end method

.method private getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "forceDefaultDomain"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v1, p2}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, domain:Ljava/lang/String;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->haveNetwork()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->close()V

    .line 138
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;->close()V

    .line 139
    return-void
.end method

.method protected createGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V

    return-object v0
.end method

.method protected createGenieSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mMaps:Lcom/google/android/googlequicksearchbox/google/Maps;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;-><init>(Lcom/google/android/googlequicksearchbox/google/Maps;)V

    return-object v0
.end method

.method public declared-synchronized getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->createGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mLogger:Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGenieLoggingServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const-string v0, "http://%1$s/m/gne/suggestlog"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeniePSuggestServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "https://%1$s/m/gne/suggest/v2"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenieSuggestServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "http://%1$s/m/gne/suggest/v2"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "genie"

    return-object v0
.end method

.method public declared-synchronized getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->createGenieSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mSuggestionFactory:Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->isLikelyToReturnZeroQueryResults()Z

    move-result v0

    return v0
.end method

.method public isPsychicSource()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->logClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 1
    .parameter "query"
    .parameter "internal"
    .parameter "list"

    .prologue
    .line 105
    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->queryEnhancedFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->queryBasicFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    goto :goto_0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->mGenieClient:Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
