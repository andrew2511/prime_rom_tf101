.class public Lcom/google/android/googlequicksearchbox/Suggestions;
.super Ljava/lang/Object;
.source "Suggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/Suggestions$1;,
        Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private final mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

.field private mDone:Z

.field private mExpectShortcuts:Z

.field private final mExpectedSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end field

.field private mGotShortcuts:Z

.field protected final mQuery:Ljava/lang/String;

.field private mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

.field private final mShortcutsObserver:Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;

.field private final mSourcePositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mTimedOut:Z

.field private mWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V
    .locals 4
    .parameter "query"
    .parameter
    .parameter "webSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, expectedSources:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    .line 46
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectShortcuts:Z

    .line 56
    new-instance v1, Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;-><init>(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/Suggestions$1;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcutsObserver:Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;

    .line 62
    new-instance v1, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    invoke-direct {v1}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    .line 78
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    .line 79
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mTimedOut:Z

    .line 84
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    .line 86
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    .line 87
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/googlequicksearchbox/SuggestionList;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourcePositions:Ljava/util/HashMap;

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourcePositions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private countSourceResults()I
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 220
    add-int/lit8 v0, v0, 0x1

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    return v0
.end method

.method private countWebResults()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExpectedSourceResultCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addSourceResults(Ljava/util/List;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 7
    .parameter
    .parameter "webResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, sourceResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isTimedOut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-eqz p2, :cond_3

    .line 244
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got result for wrong query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_2
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 250
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 251
    .local v3, sourceResult:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, sourceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 257
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got result for wrong query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :cond_4
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourcePositions:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 261
    .local v1, position:Ljava/lang/Integer;
    if-nez v1, :cond_5

    .line 262
    const-string v4, "QSB.Suggestions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unexpected result from source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v3, v4, v5

    goto :goto_1

    .line 267
    .end local v1           #position:Ljava/lang/Integer;
    .end local v2           #sourceName:Ljava/lang/String;
    .end local v3           #sourceResult:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public areShortcutsDone()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mGotShortcuts:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectShortcuts:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areSourcesDone()Z
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->countSourceResults()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedSourceResultCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areWebResultsDone()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->countWebResults()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->unregisterAll()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    goto :goto_0
.end method

.method public done()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    .line 171
    return-void
.end method

.method public expectShortcuts()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectShortcuts:Z

    .line 102
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->getObserverCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    const-string v0, "QSB.Suggestions"

    const-string v1, "***LEAK *** : Some observers have not been unregistered !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method public getExpectedResultCount()I
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedSourceResultCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getExpectedSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    return-object v0
.end method

.method public getIncludedSourceNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v4, sourceNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    .local v0, arr$:[Lcom/google/android/googlequicksearchbox/SuggestionList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 130
    .local v3, result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-eqz v3, :cond_0

    .line 131
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v3           #result:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :cond_1
    return-object v4
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCount()I
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->countSourceResults()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->countWebResults()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    return-object v0
.end method

.method public getSourceResults()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mSourceResults:[Lcom/google/android/googlequicksearchbox/SuggestionList;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return-object v1
.end method

.method public getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebResult:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method public getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDone:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimedOut()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mTimedOut:Z

    return v0
.end method

.method protected notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->notifyChanged()V

    .line 309
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mDataSetObservable:Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/util/SafeDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reopen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 336
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mClosed:Z

    .line 337
    return-void

    :cond_0
    move v0, v1

    .line 335
    goto :goto_0
.end method

.method public setShortcuts(Lcom/google/android/googlequicksearchbox/ShortcutList;)V
    .locals 3
    .parameter "shortcuts"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mGotShortcuts:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got duplicate shortcuts: old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mGotShortcuts:Z

    .line 150
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    .line 154
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ShortcutList;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got shortcuts for wrong query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/ShortcutList;->getUserQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mShortcutsObserver:Lcom/google/android/googlequicksearchbox/Suggestions$MySuggestionsObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ShortcutList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public timedOut()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->done()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mTimedOut:Z

    .line 182
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->notifyDataSetChanged()V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestions@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{expectedSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mExpectedSources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",webSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Suggestions;->mWebSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getResultCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getResultCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
