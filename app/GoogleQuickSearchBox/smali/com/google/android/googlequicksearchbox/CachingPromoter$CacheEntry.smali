.class final Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;
.super Landroid/database/DataSetObserver;
.source "CachingPromoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/CachingPromoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CacheEntry"
.end annotation


# instance fields
.field mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field final mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter
    .parameter "suggestions"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 103
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p2, p0}, Lcom/google/android/googlequicksearchbox/Suggestions;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "currentlyDisplayed"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-static {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->access$000(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->this$0:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-static {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->access$100(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 119
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->mPromoted:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 124
    return-void
.end method
