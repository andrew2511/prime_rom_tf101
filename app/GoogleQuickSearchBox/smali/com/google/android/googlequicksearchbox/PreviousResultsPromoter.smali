.class public Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "PreviousResultsPromoter.java"


# instance fields
.field private final mDisplayedSuggestionSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewSuggestionListsBySource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewSuggestionsByKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;)V
    .locals 1
    .parameter "sources"
    .parameter "config"
    .parameter "filter"
    .parameter "next"

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionListsBySource:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 5
    .parameter "list"

    .prologue
    .line 126
    if-eqz p1, :cond_2

    .line 127
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 128
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
    return-void
.end method

.method private promoteIfNotAlready(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "promoted"
    .parameter "s"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 99
    .restart local p2
    if-eqz p2, :cond_0

    .line 100
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 102
    :cond_0
    return-void
.end method

.method private promoteRestOfGroup(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 4
    .parameter "promoted"
    .parameter "groupedSource"
    .parameter "shortcuts"

    .prologue
    .line 107
    if-eqz p3, :cond_1

    .line 108
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 109
    .local v2, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 110
    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->promoteIfNotAlready(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    goto :goto_0

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionListsBySource:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 118
    .local v0, groupedSourceList:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 120
    .restart local v2       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-direct {p0, p1, v2}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->promoteIfNotAlready(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    goto :goto_1

    .line 123
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 9
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 48
    monitor-enter p0

    if-nez p4, :cond_1

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionListsBySource:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 54
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 58
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 59
    .local v4, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mDisplayedSuggestionSources:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 48
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 65
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getSourceResults()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 66
    .local v3, list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 67
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionListsBySource:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    goto :goto_1

    .line 71
    .end local v3           #list:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->addSuggestionKeys(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, lastGroupedSource:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 77
    .local v0, current:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v6

    if-ge v6, p2, :cond_0

    .line 81
    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->mNewSuggestionsByKey:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 82
    .restart local v4       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v5

    .line 84
    .local v5, source:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v2, :cond_6

    if-eq v5, v2, :cond_6

    .line 88
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v6

    invoke-direct {p0, p3, v2, v6}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->promoteRestOfGroup(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Source;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 90
    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/Source;->shouldGroupResults()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v2, v5

    .line 92
    :goto_3
    invoke-direct {p0, p3, v4}, Lcom/google/android/googlequicksearchbox/PreviousResultsPromoter;->promoteIfNotAlready(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 90
    :cond_7
    const/4 v6, 0x0

    move-object v2, v6

    goto :goto_3
.end method
