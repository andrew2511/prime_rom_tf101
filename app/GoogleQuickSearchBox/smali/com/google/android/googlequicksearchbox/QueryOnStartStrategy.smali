.class public Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;
.super Ljava/lang/Object;
.source "QueryOnStartStrategy.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;


# instance fields
.field private volatile mShouldQuery:Z

.field private volatile mSuggestionsBackup:Lcom/google/android/googlequicksearchbox/Suggestions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public backupSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkState(Z)V

    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mSuggestionsBackup:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 56
    return-void
.end method

.method public getAndReset()Z
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mShouldQuery:Z

    .line 64
    .local v0, oldValue:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mShouldQuery:Z

    .line 66
    return v0
.end method

.method public getSuggestionsBackup()Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mSuggestionsBackup:Lcom/google/android/googlequicksearchbox/Suggestions;

    return-object v0
.end method

.method public onSearchHistoryChanged()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->set()V

    .line 77
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 45
    const-string v0, "google_account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search_history"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "use_google_com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "use_psychic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->set()V

    .line 51
    :cond_1
    return-void
.end method

.method public set()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mShouldQuery:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QueryOnStartStrategy;->mSuggestionsBackup:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 72
    return-void
.end method
