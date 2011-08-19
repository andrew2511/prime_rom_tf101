.class public Lcom/google/android/googlequicksearchbox/RankAwarePromoter;
.super Lcom/google/android/googlequicksearchbox/AbstractPromoter;
.source "RankAwarePromoter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;)V
    .locals 0
    .parameter "sources"
    .parameter "config"
    .parameter "filter"
    .parameter "next"

    .prologue
    .line 44
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/google/android/googlequicksearchbox/AbstractPromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 45
    return-void
.end method

.method private getSlotsAboveKeyboard()I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getNumSuggestionsAboveKeyboard()I

    move-result v0

    return v0
.end method

.method private getSlotsLeft(Lcom/google/android/googlequicksearchbox/SuggestionList;I)I
    .locals 2
    .parameter "promoted"
    .parameter "maxPromoted"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSource(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/Source;
    .locals 2
    .parameter "result"

    .prologue
    .line 162
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, sourceName:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v1

    goto :goto_0
.end method

.method private isSourceHighlyRanked(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 169
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v0

    return v0
.end method

.method private partitionResultsByRank(Ljava/lang/Iterable;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    .local p2, highRankingResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    .local p3, lowRankingResults:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 144
    .local v2, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 145
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSource(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v3

    .line 147
    .local v3, source:Lcom/google/android/googlequicksearchbox/Source;
    if-nez v3, :cond_1

    .line 148
    const-string v4, "QSB.RankAwarePromoter"

    const-string v5, "RankAwarePromoter : unexpected suggestion list with null source"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;

    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->shouldGroupSourceResults(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionList;Z)V

    .line 152
    .local v0, cursor:Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->isSourceHighlyRanked(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0           #cursor:Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
    .end local v2           #result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    .end local v3           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_3
    return-void
.end method

.method private promote(Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;)I
    .locals 4
    .parameter "cursor"
    .parameter "count"
    .parameter "promoted"

    .prologue
    .line 236
    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 237
    :cond_0
    const/4 v2, 0x0

    .line 249
    :goto_0
    return v2

    .line 239
    :cond_1
    const/4 v0, 0x0

    .line 241
    .local v0, addedCount:I
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->current()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 242
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->accept(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-interface {p3, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 248
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    if-lt v0, p2, :cond_2

    :cond_4
    move v2, v0

    .line 249
    goto :goto_0
.end method

.method private promoteEquallyFromEachSource(Ljava/util/LinkedList;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V
    .locals 12
    .parameter
    .parameter "promoted"
    .parameter "maxPromoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, suggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    const/4 v5, 0x1

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/google/android/googlequicksearchbox/SuggestionList;I)I

    move-result v2

    .line 110
    .local v2, slotsLeft:I
    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, stripeSize:I
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/google/android/googlequicksearchbox/MutableSuggestionList;Z)I

    .line 123
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/google/android/googlequicksearchbox/SuggestionList;I)I

    move-result v2

    move-object v6, p0

    move-object v7, p1

    move v8, v2

    move v9, v2

    move-object v10, p2

    move v11, v5

    .line 124
    invoke-direct/range {v6 .. v11}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/google/android/googlequicksearchbox/MutableSuggestionList;Z)I

    goto :goto_0
.end method

.method private promoteTopSuggestions(Ljava/util/LinkedList;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V
    .locals 7
    .parameter
    .parameter "promoted"
    .parameter "maxPromoted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, highRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSlotsLeft(Lcom/google/android/googlequicksearchbox/SuggestionList;I)I

    move-result v6

    .line 90
    .local v6, slotsLeft:I
    if-lez v6, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->getSlotsAboveKeyboard()I

    move-result v0

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    .local v2, slotsToFill:I
    if-lez v2, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    div-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 95
    .local v3, stripeSize:I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->roundRobin(Ljava/util/LinkedList;IILcom/google/android/googlequicksearchbox/MutableSuggestionList;Z)I

    .line 98
    .end local v2           #slotsToFill:I
    .end local v3           #stripeSize:I
    :cond_0
    return-void
.end method

.method private roundRobin(Ljava/util/LinkedList;IILcom/google/android/googlequicksearchbox/MutableSuggestionList;Z)I
    .locals 5
    .parameter
    .parameter "maxPromoted"
    .parameter "stripeSize"
    .parameter "promoted"
    .parameter "truncateGroups"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;",
            ">;II",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, results:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, count:I
    if-lez p2, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;

    .line 205
    .local v2, result:Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->shouldGroupResults()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    if-nez p5, :cond_1

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getCount()I

    move-result v3

    if-gt v3, p3, :cond_0

    .line 211
    :cond_1
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promote(Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;)I

    move-result v3

    add-int/2addr v0, v3

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-direct {p0, v2, p3, p4}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promote(Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;)I

    move-result v3

    add-int/2addr v0, v3

    .line 218
    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 224
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    .end local v2           #result:Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;
    :cond_3
    return v0
.end method

.method private shouldGroupSourceResults(Lcom/google/android/googlequicksearchbox/Source;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->shouldGroupResults()Z

    move-result v0

    return v0
.end method


# virtual methods
.method clusterAndRankSources(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 8
    .parameter "userQuery"
    .parameter "shortcuts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, sourceResults:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 270
    .local v5, sourceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    .local v0, combinedResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    if-eqz p2, :cond_2

    .line 275
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 278
    .local v4, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 281
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, name:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 285
    new-instance v2, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-direct {v2, v3, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v2, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-interface {v2, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 288
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v2           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;

    invoke-interface {p0, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    goto :goto_0

    .line 300
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_2
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 301
    .local v6, sourceResult:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-interface {v6}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3       #name:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 303
    new-instance v2, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-direct {v2, v3, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .restart local v2       #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-interface {v2, v6}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->addAll(Ljava/lang/Iterable;)I

    .line 306
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    .end local v2           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;

    .line 310
    .restart local v2       #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-interface {v2, v6}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->addAll(Ljava/lang/Iterable;)I

    goto :goto_1

    .line 314
    .end local v2           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #sourceResult:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_4
    return-object v0
.end method

.method public doPickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 4
    .parameter "suggestions"
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getSourceResults()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->clusterAndRankSources(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, clustered:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promoteSuggestions(Ljava/lang/Iterable;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 53
    return-void
.end method

.method promoteSuggestions(Ljava/lang/Iterable;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter
    .parameter "maxPromoted"
    .parameter "promoted"
    .parameter "currentlyDisplayed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;I",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, suggestions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v0, highRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 67
    .local v1, lowRankingSuggestions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/googlequicksearchbox/RankAwarePromoter$Cursor;>;"
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->partitionResultsByRank(Ljava/lang/Iterable;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 70
    invoke-direct {p0, v0, p3, p2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promoteTopSuggestions(Ljava/util/LinkedList;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V

    .line 74
    invoke-direct {p0, v0, p3, p2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promoteEquallyFromEachSource(Ljava/util/LinkedList;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V

    .line 75
    invoke-direct {p0, v1, p3, p2}, Lcom/google/android/googlequicksearchbox/RankAwarePromoter;->promoteEquallyFromEachSource(Ljava/util/LinkedList;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;I)V

    .line 78
    return-void
.end method
