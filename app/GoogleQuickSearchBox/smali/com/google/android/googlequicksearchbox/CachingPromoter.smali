.class public Lcom/google/android/googlequicksearchbox/CachingPromoter;
.super Ljava/lang/Object;
.source "CachingPromoter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;
    }
.end annotation


# static fields
.field static final PROMOTED_SOURCE:Ljava/lang/String; = "promoted"


# instance fields
.field private mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

.field private final mChain:Lcom/google/android/googlequicksearchbox/Promoter;

.field private final mMaxPromoted:I


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Promoter;I)V
    .locals 2
    .parameter "chain"
    .parameter "maxPromoted"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mChain:Lcom/google/android/googlequicksearchbox/Promoter;

    .line 53
    iput p2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mMaxPromoted:I

    .line 54
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;-><init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->buildPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->refreshShortcuts(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method private buildPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "suggestions"
    .parameter "currentlyDisplayed"

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;

    const-string v1, "promoted"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, promoted:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mChain:Lcom/google/android/googlequicksearchbox/Promoter;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mChain:Lcom/google/android/googlequicksearchbox/Promoter;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mMaxPromoted:I

    invoke-interface {v1, p1, v2, v0, p2}, Lcom/google/android/googlequicksearchbox/Promoter;->pickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    goto :goto_0
.end method

.method private refreshShortcuts(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 4
    .parameter "suggestions"
    .parameter "promoted"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v2

    .line 74
    .local v2, shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 75
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/ShortcutList;->refresh(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    goto :goto_0

    .line 79
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    return-void
.end method


# virtual methods
.method public getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "currentlyDisplayed"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;-><init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    .line 59
    return-void
.end method
