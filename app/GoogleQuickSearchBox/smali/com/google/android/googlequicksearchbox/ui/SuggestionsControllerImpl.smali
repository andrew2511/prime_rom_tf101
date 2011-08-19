.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.super Ljava/lang/Object;
.source "SuggestionsControllerImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    }
.end annotation


# instance fields
.field private final mAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayingNewSuggestions:Z

.field private mIsEmptyQuery:Z

.field private mMaxDisplayDelayMillis:J

.field private final mPromoters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/CachingPromoter;",
            ">;"
        }
    .end annotation
.end field

.field private final mShownSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final mSuggestionsObserver:Landroid/database/DataSetObserver;

.field private final mUiThread:Landroid/os/Handler;

.field private final mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

.field private mUpdatingShown:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V
    .locals 2
    .parameter "uiThread"
    .parameter "observer"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$MySuggestionsObserver;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestionsObserver:Landroid/database/DataSetObserver;

    .line 80
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    .line 81
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    .line 83
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    return p1
.end method

.method private shouldPublish(Lcom/google/android/googlequicksearchbox/Suggestions;ZLcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 1
    .parameter "suggestions"
    .parameter "done"
    .parameter "list"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

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

.method private startDelayTimer(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 4
    .parameter "suggestions"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method


# virtual methods
.method delayTimerExpired(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    .line 162
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    .line 164
    :cond_0
    return-void
.end method

.method protected getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
    .locals 1
    .parameter "type"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    return-object p0
.end method

.method protected getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 2
    .parameter "viewType"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-virtual {v0, p0}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getPromotedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    return-object v0
.end method

.method protected isEmptyQuery()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    return v0
.end method

.method public setMaxDisplayDelayMillis(J)V
    .locals 0
    .parameter "maxDisplayDelayMillis"

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    .line 111
    return-void
.end method

.method public setNumVisibleSuggestions(II)V
    .locals 0
    .parameter "orientation"
    .parameter "numVisibleSuggestions"

    .prologue
    .line 115
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 7
    .parameter "suggestions"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 121
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-ne p1, v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    .line 126
    .local v1, promoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    goto :goto_1

    .line 129
    .end local v1           #promoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;
    :cond_1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 130
    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    .line 132
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v6

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mIsEmptyQuery:Z

    .line 133
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestionsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mMaxDisplayDelayMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateViews()V

    .line 147
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateObserver()V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 132
    goto :goto_2

    .line 144
    :cond_6
    iput-boolean v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mDelayingNewSuggestions:Z

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->startDelayTimer(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    goto :goto_3
.end method

.method public setSuggestionsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V
    .locals 2
    .parameter "promoter"
    .parameter "adapter"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset suggestions view"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSummonsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V
    .locals 2
    .parameter "promoter"
    .parameter "adapter"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t reset summons view"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mAdapters:Ljava/util/Map;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 1
    .parameter "viewType"
    .parameter "suggestions"

    .prologue
    .line 220
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;I)V

    .line 221
    return-void
.end method

.method protected showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;I)V
    .locals 2
    .parameter "viewType"
    .parameter "suggestions"
    .parameter "numSlots"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    invoke-interface {v0, p2, v1, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->showSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V

    .line 228
    return-void
.end method

.method protected showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;II)V
    .locals 1
    .parameter "viewType"
    .parameter "suggestions"
    .parameter "numSuggestions"
    .parameter "numSlots"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mShownSuggestions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/SuggestionList;II)V

    .line 236
    return-void
.end method

.method protected updateObserver()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 188
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;->setSuggestionsUpdating(Z)V

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    if-nez v0, :cond_1

    .line 193
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingShown:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mUpdatingObserver:Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;->setSuggestionsUpdating(Z)V

    goto :goto_0
.end method

.method protected updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V
    .locals 3
    .parameter "viewType"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    .line 201
    .local v1, promoted:Lcom/google/android/googlequicksearchbox/SuggestionList;
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areWebResultsDone()Z

    move-result v2

    move v0, v2

    .line 203
    .local v0, done:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->shouldPublish(Lcom/google/android/googlequicksearchbox/Suggestions;ZLcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0, p1, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 206
    :cond_0
    return-void

    .line 201
    .end local v0           #done:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected updateViews()V
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->mPromoters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    .line 182
    .local v1, viewType:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V

    goto :goto_0

    .line 184
    .end local v1           #viewType:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->updateObserver()V

    .line 185
    return-void
.end method
