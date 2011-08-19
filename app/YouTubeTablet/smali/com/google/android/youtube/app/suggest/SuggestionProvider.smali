.class public Lcom/google/android/youtube/app/suggest/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;
    }
.end annotation


# instance fields
.field private getRequest:Lorg/apache/http/client/methods/HttpGet;

.field private historyDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private jsonResponse:Ljava/lang/String;

.field private networkSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;",
            ">;"
        }
    .end annotation
.end field

.field private suggestFragment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public fetchSuggestions()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, escapedFragment:Ljava/lang/String;
    const-string v14, "en"

    .line 139
    .local v14, suggestLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, currentLanguage:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 141
    move-object v14, v5

    .line 143
    :cond_0
    const-string v18, "http://suggestqueries.google.com/complete/search?hl=%s&ds=yt&client=androidyt&hjson=t&oe=UTF-8&q=%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v6, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 144
    .local v17, url:Ljava/lang/String;
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 146
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 147
    .local v4, code:I
    const/16 v18, 0xc8

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 148
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    move-object v12, v0

    .line 153
    .local v12, responseData:Ljava/lang/String;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 154
    .local v11, responseArray:Lorg/json/JSONArray;
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    .line 155
    .local v13, resultsArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 158
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v16

    .line 159
    .local v16, triplet:Lorg/json/JSONArray;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 160
    .local v15, suggestion:Ljava/lang/String;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, numResults:Ljava/lang/String;
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, index:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;

    move-object/from16 v0, v20

    move-object v1, v15

    move-object v2, v9

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/suggest/SuggestionProvider$SuggestionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 164
    .end local v8           #index:Ljava/lang/String;
    .end local v9           #numResults:Ljava/lang/String;
    .end local v15           #suggestion:Ljava/lang/String;
    .end local v16           #triplet:Lorg/json/JSONArray;
    :cond_1
    monitor-exit v18

    .line 168
    .end local v7           #i:I
    .end local v11           #responseArray:Lorg/json/JSONArray;
    .end local v12           #responseData:Ljava/lang/String;
    .end local v13           #resultsArray:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 164
    .restart local v11       #responseArray:Lorg/json/JSONArray;
    .restart local v12       #responseData:Ljava/lang/String;
    .restart local v13       #resultsArray:Lorg/json/JSONArray;
    :catchall_0
    move-exception v19

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 166
    .end local v11           #responseArray:Lorg/json/JSONArray;
    .end local v12           #responseData:Ljava/lang/String;
    .end local v13           #resultsArray:Lorg/json/JSONArray;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected suggest response "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 117
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/app/suggest/HistoryDb;->insert(Landroid/content/ContentValues;)V

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 81
    new-instance v0, Lcom/google/android/youtube/app/suggest/HistoryDb;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/suggest/HistoryDb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    .line 82
    invoke-static {}, Lcom/google/android/youtube/app/YouTubeApplication;->getInstance()Lcom/google/android/youtube/app/YouTubeApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/YouTubeApplication;->setSearchHistoryDb(Lcom/google/android/youtube/app/suggest/HistoryDb;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    .line 93
    :cond_0
    new-instance v0, Lcom/google/android/youtube/app/suggest/SuggestionCursor;

    invoke-direct {v0}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;-><init>()V

    .line 94
    .local v0, cursor:Lcom/google/android/youtube/app/suggest/SuggestionCursor;
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->suggestFragment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->fetchSuggestions()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 103
    :try_start_1
    iget-object v3, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->networkSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/app/suggest/SuggestionCursor;->setSuggestions(Ljava/util/ArrayList;)V

    .line 104
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 108
    :goto_1
    return-object v2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/io/IOException;
    const-string v2, "error fetching suggestions"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error fetching suggestions, response was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->jsonResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/SuggestionProvider;->historyDb:Lcom/google/android/youtube/app/suggest/HistoryDb;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/suggest/HistoryDb;->query()Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
