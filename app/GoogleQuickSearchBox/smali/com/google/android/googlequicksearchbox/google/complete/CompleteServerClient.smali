.class public Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;
.super Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;
.source "CompleteServerClient.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/GoogleSource;


# instance fields
.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 0
    .parameter "context"
    .parameter "searchUrlHelper"
    .parameter "config"
    .parameter "settings"
    .parameter "httpHelper"

    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, Lcom/google/android/googlequicksearchbox/google/AbstractGoogleWebSource;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V

    .line 68
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 69
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 70
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 71
    return-void
.end method

.method private static extractFromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 209
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 210
    .local v1, type:I
    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createWebSuggestion(Ljava/lang/CharSequence;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    .line 223
    :goto_0
    return-object v3

    .line 215
    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 216
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, url:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, title:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/google/android/googlequicksearchbox/WebSuggestions;->createNavSuggestion(Ljava/lang/String;Ljava/lang/CharSequence;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v3

    goto :goto_0

    .line 222
    .end local v0           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    const-string v3, "QSB.CompleteServerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown suggestion type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private static parseJson(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 7
    .parameter "json"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, array:Lorg/json/JSONArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 199
    .local v3, suggestions:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->extractFromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 203
    .local v1, e:Lorg/json/JSONException;
    const-string v4, "QSB.CompleteServerClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse suggestion at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "complete-server"

    return-object v0
.end method

.method public isPsychicSource()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public logClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "extraData"
    .parameter "query"

    .prologue
    .line 150
    return-void
.end method

.method protected query(Ljava/lang/String;ZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 12
    .parameter "query"
    .parameter "extended"
    .parameter "list"

    .prologue
    .line 94
    if-eqz p2, :cond_1

    const-string v7, "http"

    move-object v5, v7

    .line 96
    .local v5, scheme:Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomain(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 97
    .local v6, uri:Landroid/net/Uri$Builder;
    const-string v7, "/complete/search"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    const-string v7, "client"

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/googlequicksearchbox/Config;->getCompleteServerClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    const-string v7, "hl"

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->getLocation()Landroid/location/Location;

    move-result-object v3

    .line 103
    .local v3, loc:Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 104
    new-instance v1, Ljava/util/Formatter;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 105
    .local v1, f:Ljava/util/Formatter;
    const-string v7, "%f,%f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 106
    const-string v7, "sll"

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    const-string v7, "X-Geo"

    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v1           #f:Ljava/util/Formatter;
    .end local v3           #loc:Landroid/location/Location;
    :cond_0
    const-string v7, "oe"

    const-string v8, "UTF-8"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    const/4 v4, 0x0

    .line 123
    .local v4, response:Ljava/lang/String;
    :try_start_0
    const-string v7, "q"

    invoke-virtual {v6, v7, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4, p3}, Lcom/google/android/googlequicksearchbox/google/complete/CompleteServerClient;->parseJson(Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    :try_end_0
    .catch Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-void

    .line 94
    .end local v2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri$Builder;
    :cond_1
    const-string v7, "http"

    move-object v5, v7

    goto/16 :goto_0

    .line 137
    .restart local v2       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #scheme:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 138
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "QSB.CompleteServerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing suggestions \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0           #e:Lorg/json/JSONException;
    :goto_2
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    goto :goto_1

    .line 135
    :catch_1
    move-exception v7

    goto :goto_2

    .line 133
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method
