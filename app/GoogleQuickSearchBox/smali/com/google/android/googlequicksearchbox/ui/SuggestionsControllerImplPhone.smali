.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;
.super Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;
.source "SuggestionsControllerImplPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

.field private mMinimumSuggestionsAboveSummons:I

.field private mNumVisibleSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;",
            ">;"
        }
    .end annotation
.end field

.field private mNumWebSuggestions:I

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mShowingResultsForEmptyQuery:Z

.field private mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private mShownWebSuggestonsCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V
    .locals 2
    .parameter "uiThread"
    .parameter "config"
    .parameter "settings"
    .parameter "observer"

    .prologue
    .line 71
    invoke-direct {p0, p1, p4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    .line 72
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 73
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    .line 78
    return-void
.end method

.method private adjustWebSuggestionsCount()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    .line 174
    .local v1, numSummons:I
    if-nez v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 181
    :goto_0
    sget-object v2, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    .line 182
    .local v0, numSuggestions:I
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 189
    .end local v0           #numSuggestions:I
    .end local v1           #numSummons:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    .line 192
    return-void

    .line 177
    .restart local v1       #numSummons:I
    :cond_0
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_0

    .line 186
    .end local v1           #numSummons:I
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getNumberOfWebSuggestionsToShow()I

    move-result v2

    iput v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_1
.end method

.method private getNumberOfWebSuggestionsToShow()I
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, toShow:I
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    if-nez v1, :cond_3

    .line 229
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areSourcesDone()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->areShortcutsDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    :cond_1
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    .line 237
    :cond_2
    return v0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->canQueryNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSource;->isLikelyToReturnZeroQueryResults()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1

    .line 213
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShowingResultsForEmptyQuery:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->isEmptyQuery()Z

    move-result v1

    if-nez v1, :cond_6

    .line 217
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 219
    :cond_6
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 222
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 226
    :cond_7
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    goto :goto_0
.end method

.method private updateMinSuggestionsAboveSummons()Z
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->get()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumVisibleSummons()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMinimumSuggestionsAboveSummons()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->getMaximumSuggestionsAboveSummons()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/util/Util;->clip(III)I

    move-result v0

    .line 145
    .local v0, min:I
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    if-eq v0, v1, :cond_0

    .line 148
    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mMinimumSuggestionsAboveSummons:I

    .line 149
    const/4 v1, 0x1

    .line 152
    .end local v0           #min:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateWebSuggestions()V
    .locals 5

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->adjustWebSuggestionsCount()V

    .line 104
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getPromoted(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    .line 105
    .local v0, webSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 110
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    iget v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->showSuggestionsDisabled(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;II)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 114
    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    .line 117
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->getAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mShownWebSuggestonsCount:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSeparatorFirst(Z)V

    .line 119
    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUGGESTIONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumWebSuggestions:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->showSuggestions(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;Lcom/google/android/googlequicksearchbox/SuggestionList;I)V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public setNumVisibleSuggestions(II)V
    .locals 3
    .parameter "orientation"
    .parameter "numVisibleSuggestions"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;ILcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    .line 130
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mNumVisibleSlots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mCurrentNumVisibleSlots:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone$NumVisibleSlots;->set(I)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateMinSuggestionsAboveSummons()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 137
    :cond_1
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter "suggestions"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 87
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateMinSuggestionsAboveSummons()Z

    .line 92
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 93
    return-void
.end method

.method protected updateViews()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateWebSuggestions()V

    .line 98
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;->SUMMONS:Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateView(Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl$ViewType;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;->updateObserver()V

    .line 100
    return-void
.end method
