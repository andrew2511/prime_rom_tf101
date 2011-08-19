.class public Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;
.super Ljava/lang/Object;
.source "ZeroQueryCachingWebSuggestSource.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;


# instance fields
.field final mAccountsObserver:Landroid/database/DataSetObserver;

.field private final mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field private final mHistoryObserver:Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mSearchHistoryWasEnabled:Z

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field final mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

.field private mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;)V
    .locals 3
    .parameter "wrappedSource"
    .parameter "settings"
    .parameter "loginHelper"
    .parameter "historyObserver"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 90
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 91
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z

    .line 94
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$1;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    .line 101
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$2;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 110
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 111
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->loadSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 117
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObserver:Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->validateCache(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->cacheResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method private declared-synchronized cacheResults(Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 203
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->serializeSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObserver:Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mHistoryObserver:Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/HistoryChangeObserver;->onSearchHistoryChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 214
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    return v0
.end method

.method private isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z
    .locals 2
    .parameter "list"

    .prologue
    .line 195
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->isRequestFailed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private loadSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 272
    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v10}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getCachedZeroQueryWebResults()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, json:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 276
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v4, jsonObject:Lorg/json/JSONObject;
    const-string v10, "source"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, sourceName:Ljava/lang/String;
    const-string v10, "account"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, account:Ljava/lang/String;
    const-string v10, "q"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 281
    .local v9, userQuery:Ljava/lang/String;
    new-instance v5, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-direct {v5, v7, v9}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v5, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    invoke-interface {v5, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setAccount(Ljava/lang/String;)V

    .line 284
    const-string v10, "suggestions"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 285
    .local v8, suggestions:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 286
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, query:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v10

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v10, v11}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v6           #query:Ljava/lang/String;
    :cond_0
    move-object v10, v5

    .line 300
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    .end local v7           #sourceName:Ljava/lang/String;
    .end local v8           #suggestions:Lorg/json/JSONArray;
    .end local v9           #userQuery:Ljava/lang/String;
    :goto_1
    return-object v10

    .line 295
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 297
    .local v1, e:Lorg/json/JSONException;
    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v10, v12}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setCachedZeroQueryWebResults(Ljava/lang/String;)V

    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    move-object v10, v12

    .line 300
    goto :goto_1
.end method

.method private declared-synchronized removeQueryFromCache(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 225
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static serializeSuggestions(Lcom/google/android/googlequicksearchbox/SuggestionList;)Ljava/lang/String;
    .locals 6
    .parameter "list"

    .prologue
    .line 306
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "source"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v4, "account"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v4, "q"

    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 312
    .local v3, suggestions:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 313
    invoke-interface {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionList;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const-string v4, "suggestions"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 321
    .end local v1           #i:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #suggestions:Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 319
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 321
    .local v0, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private declared-synchronized validateCache(Z)V
    .locals 1
    .parameter "fetchIfInvalid"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isValid(Lcom/google/android/googlequicksearchbox/SuggestionList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z

    if-nez v0, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->clearCache()V

    .line 181
    if-nez p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 186
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mEmptyResults:Lcom/google/android/googlequicksearchbox/SuggestionList;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSearchHistoryWasEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canQueryNow()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->canQueryNow()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mAccountsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->close()V

    .line 267
    return-void
.end method

.method public declared-synchronized getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getCachedSuggestions(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
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
    .line 137
    .local p2, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    move-object v0, p2

    .line 139
    .local v0, originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    new-instance p2, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;

    .end local p2           #consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    invoke-direct {p2, p0, v0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource$3;-><init>(Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 146
    .end local v0           #originalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    .restart local p2       #consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v1, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSuggestions(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 147
    return-void
.end method

.method public declared-synchronized isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mZeroQueryCache:Lcom/google/android/googlequicksearchbox/SuggestionList;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    monitor-exit p0

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->isLikelyToReturnZeroQueryResults()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPsychicSource()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->isPsychicSource()Z

    move-result v0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->logClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "query"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->removeQueryFromCache(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/ZeroQueryCachingWebSuggestSource;->mWrappedSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->removeFromHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
