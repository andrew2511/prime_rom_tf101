.class public Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;
.super Ljava/lang/Object;
.source "PsychicSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;,
        Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

.field private mCurrentQuery:Ljava/lang/String;

.field private final mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

.field private mPsychicQueryUpdater:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private mSidCookie:Ljava/lang/String;

.field private final mSourceSelector:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

.field private final mSuggestListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;)V
    .locals 2
    .parameter "loginHelper"
    .parameter "searchUrlHelper"
    .parameter "sourceSelector"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    .line 72
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    const-string v1, "SID"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireAuthTokenType(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    .line 75
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSourceSelector:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$1;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$2;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->notifySearchDomainChange(Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper$SearchDomainChangeWatcher;)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->refreshAccountAndCookies()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->refreshAccountAndCookies()V

    return-void
.end method

.method private declared-synchronized addSuggestListener(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private extractSuggestions(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8
    .parameter "suggestionsObj"

    .prologue
    const/4 v7, 0x0

    .line 201
    if-nez p1, :cond_0

    move-object v5, v7

    .line 219
    :goto_0
    return-object v5

    .line 206
    :cond_0
    :try_start_0
    const-string v5, "suggestions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 207
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 208
    .local v4, suggestions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 210
    .local v3, suggestion:Lorg/json/JSONObject;
    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #suggestion:Lorg/json/JSONObject;
    :cond_1
    move-object v5, v4

    .line 215
    goto :goto_0

    .line 216
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v4           #suggestions:[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 217
    .local v2, jse:Lorg/json/JSONException;
    const-string v5, "QSB.PsychicSuggestAdapter"

    const-string v6, "Error parsing JSON suggestions"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 219
    goto :goto_0
.end method

.method private declared-synchronized refreshAccountAndCookies()V
    .locals 7

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    .line 99
    .local v0, account:Ljava/lang/String;
    const/4 v3, 0x0

    .line 100
    .local v3, sid:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mLoginHelper:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    const-string v5, "SID"

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAuthToken(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v1

    .line 101
    .local v1, authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, searchDomain:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mAccount:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->getCurrentSearchDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    :cond_1
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mAccount:Ljava/lang/String;

    .line 110
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->reset()V

    .line 113
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    const-string v5, "SID"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->loadPsychicPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 118
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    const-string v5, "SID"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v1           #authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .end local v2           #searchDomain:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "originalQuery"
    .parameter "newQuery"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mPsychicQueryUpdater:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mPsychicQueryUpdater:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;->setDisplayedQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addListenerFor(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter "googleSource"
    .parameter "userQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestionsReceiver;-><init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->addSuggestListener(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public considerLoadingPsychicPage()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->considerLoadingPsychicPage()V

    .line 249
    :cond_0
    return-void
.end method

.method declared-synchronized onPsychicStateChange(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$State;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSourceSelector:Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->isPsychicActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/SuggestSourceSelector;->onPsychicStateChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshWebViewVisibity()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateVisibleState()V

    .line 255
    :cond_0
    return-void
.end method

.method public declared-synchronized setPsychicController(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    .line 127
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    const-string v1, "SID"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSidCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setQuery(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->loadPsychicPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setQuery(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->setQuery(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const/4 v0, 0x1

    .line 145
    :goto_0
    monitor-exit p0

    return v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateVisibleState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSuggestError()V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;

    .line 195
    .local v1, l:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;->onSuggestError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 197
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void
.end method

.method declared-synchronized setSuggestResult(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "controller"
    .parameter "originalQuery"
    .parameter "result"
    .parameter "suggestionsObj"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-ne p1, v4, :cond_3

    .line 164
    const/4 v0, 0x0

    .line 170
    .local v0, consumed:Z
    invoke-direct {p0, p4}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->extractSuggestions(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, suggestions:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 172
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;

    .line 174
    .local v2, listener:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    if-nez v0, :cond_1

    .line 175
    invoke-interface {v2, p2, v3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;->setSuggestions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->updateQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    .line 179
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v0           #consumed:Z
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;>;"
    .end local v2           #listener:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    .end local v3           #suggestions:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 183
    .restart local v0       #consumed:Z
    .restart local v1       #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;>;"
    .restart local v2       #listener:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    .restart local v3       #suggestions:[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 186
    .end local v2           #listener:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;
    :cond_2
    if-nez v0, :cond_3

    .line 187
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mSuggestListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 188
    const-string v4, "QSB.PsychicSuggestAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No listener found for query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0           #consumed:Z
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicSuggestListener;>;"
    .end local v3           #suggestions:[Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public setTextUpdater(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;)V
    .locals 0
    .parameter "psychicQueryUpdater"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mPsychicQueryUpdater:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter$PsychicQueryUpdater;

    .line 237
    return-void
.end method

.method public declared-synchronized showResults(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mController:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->showResults(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1, p1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicSuggestAdapter;->updateQuery(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
