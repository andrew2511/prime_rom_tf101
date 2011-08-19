.class public Lcom/android/vending/SuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SuggestionsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 59
    const-string v0, "com.android.vending.SuggestionsProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/SuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method private getSuggestions(Ljava/lang/String;I)Lcom/android/vending/model/QuerySuggestionResponse;
    .locals 8
    .parameter "query"
    .parameter "queryType"

    .prologue
    .line 119
    new-instance v1, Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v5

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getGoogleHttpClient()Lcom/android/vending/compat/GoogleHttpClient;

    move-result-object v6

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lcom/android/vending/api/RequestManager;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V

    .line 124
    .local v1, requestManager:Lcom/android/vending/api/RequestManager;
    new-instance v4, Lcom/android/vending/api/QuerySuggestionService;

    invoke-direct {v4, v1}, Lcom/android/vending/api/QuerySuggestionService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 126
    .local v4, suggService:Lcom/android/vending/api/QuerySuggestionService;
    new-instance v0, Lcom/android/vending/model/QuerySuggestionRequest;

    invoke-direct {v0}, Lcom/android/vending/model/QuerySuggestionRequest;-><init>()V

    .line 128
    .local v0, req:Lcom/android/vending/model/QuerySuggestionRequest;
    const/4 v2, 0x2

    .line 129
    .local v2, requestType:I
    packed-switch p2, :pswitch_data_0

    .line 141
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/vending/model/QuerySuggestionRequest;->setQuery(Ljava/lang/String;)Lcom/android/vending/model/QuerySuggestionRequest;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/vending/model/QuerySuggestionRequest;->setRequestType(I)Lcom/android/vending/model/QuerySuggestionRequest;

    .line 142
    invoke-virtual {v4, v0}, Lcom/android/vending/api/QuerySuggestionService;->queueSuggestionRequest(Lcom/android/vending/model/QuerySuggestionRequest;)Lcom/android/vending/model/QuerySuggestionResponse;

    move-result-object v3

    .line 144
    .local v3, response:Lcom/android/vending/model/QuerySuggestionResponse;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/vending/api/RequestManager;->doRequests()V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :goto_1
    return-object v3

    .line 131
    .end local v3           #response:Lcom/android/vending/model/QuerySuggestionResponse;
    :pswitch_0
    const/4 v2, 0x0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_1
    const/4 v2, 0x1

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 145
    .restart local v3       #response:Lcom/android/vending/model/QuerySuggestionResponse;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 146
    :catch_1
    move-exception v5

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 72
    const/4 v7, 0x0

    aget-object v3, p4, v7

    .line 73
    .local v3, query:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, ""

    if-ne v3, v7, :cond_1

    .line 74
    :cond_0
    const/4 v7, 0x0

    .line 106
    :goto_0
    return-object v7

    .line 77
    :cond_1
    sget-object v7, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_REMOTE_SUGGESTION_TYPE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v7}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 82
    .local v4, queryType:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "suggest.qsb"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move v2, v7

    .line 85
    .local v2, isQsbQuery:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 86
    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    .line 87
    :cond_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v7}, Lcom/android/vending/SuggestionsProvider;->getSuggestions(Ljava/lang/String;I)Lcom/android/vending/model/QuerySuggestionResponse;

    move-result-object v6

    .line 88
    .local v6, serverSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;
    invoke-virtual {v6}, Lcom/android/vending/model/QuerySuggestionResponse;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 83
    .end local v2           #isQsbQuery:Z
    .end local v6           #serverSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;
    :cond_3
    const/4 v7, 0x0

    move v2, v7

    goto :goto_1

    .line 90
    .restart local v2       #isQsbQuery:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 91
    :cond_5
    if-nez v4, :cond_6

    .line 92
    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 95
    :cond_6
    invoke-direct {p0, v3, v4}, Lcom/android/vending/SuggestionsProvider;->getSuggestions(Ljava/lang/String;I)Lcom/android/vending/model/QuerySuggestionResponse;

    move-result-object v6

    .line 97
    .restart local v6       #serverSuggestions:Lcom/android/vending/model/QuerySuggestionResponse;
    new-instance v1, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;

    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/vending/model/QuerySuggestionResponse$HistoryCursorAdapter;-><init>(Landroid/database/Cursor;)V

    .line 101
    .local v1, historyCursor:Landroid/database/Cursor;
    const/4 v7, 0x2

    new-array v0, v7, [Landroid/database/Cursor;

    .line 102
    .local v0, cursors:[Landroid/database/Cursor;
    const/4 v7, 0x0

    aput-object v1, v0, v7

    .line 103
    const/4 v7, 0x1

    invoke-virtual {v6}, Lcom/android/vending/model/QuerySuggestionResponse;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v0, v7

    .line 106
    new-instance v7, Landroid/database/MergeCursor;

    invoke-direct {v7, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0
.end method
