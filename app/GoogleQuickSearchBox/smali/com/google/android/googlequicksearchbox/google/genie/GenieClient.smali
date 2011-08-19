.class public Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;
.super Ljava/lang/Object;
.source "GenieClient.java"


# static fields
.field private static final FEEDS_JOINER:Lcom/google/common/base/Joiner;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->FEEDS_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;Lcom/google/android/googlequicksearchbox/util/HttpHelper;)V
    .locals 2
    .parameter "context"
    .parameter "settings"
    .parameter "source"
    .parameter "searchUrlHelper"
    .parameter "httpHelper"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    .line 99
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 100
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 101
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 102
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient$1;-><init>(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireAuthTokenType(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    return-object v0
.end method

.method private addSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;ILorg/json/JSONArray;)V
    .locals 4
    .parameter "suggestions"
    .parameter "eventId"
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "pos"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 483
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V

    .line 484
    .local v0, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V

    .line 485
    invoke-virtual {v0, p5}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickPosition(I)V

    .line 487
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p6, v0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->fromJson(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;Z)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 488
    .local v1, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz v1, :cond_0

    .line 489
    invoke-interface {p1, v1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 491
    :cond_0
    return-void
.end method

.method private addSuggestions(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)V
    .locals 11
    .parameter "suggestions"
    .parameter "response"
    .parameter "networkInfo"
    .parameter "latency"

    .prologue
    .line 285
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 291
    .local v10, results:Lorg/json/JSONArray;
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 293
    .local v2, eventId:Lorg/json/JSONArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v8, dbgTypes:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 295
    .local v7, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 297
    :try_start_1
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 298
    .local v6, entry:Lorg/json/JSONArray;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 299
    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->addSuggestion(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;ILorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .end local v6           #entry:Lorg/json/JSONArray;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v2           #eventId:Lorg/json/JSONArray;
    .end local v5           #i:I
    .end local v7           #count:I
    .end local v8           #dbgTypes:Ljava/lang/StringBuilder;
    .end local v10           #results:Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 287
    .local v9, e:Lorg/json/JSONException;
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting entries: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v9           #e:Lorg/json/JSONException;
    :goto_2
    return-void

    .line 300
    .restart local v2       #eventId:Lorg/json/JSONArray;
    .restart local v5       #i:I
    .restart local v7       #count:I
    .restart local v8       #dbgTypes:Ljava/lang/StringBuilder;
    .restart local v10       #results:Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 301
    .restart local v9       #e:Lorg/json/JSONException;
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating suggestion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    .end local v9           #e:Lorg/json/JSONException;
    :cond_0
    const-string v0, "QSB.GenieClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: suggestions="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private callerHasLocationPermission()Z
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createGenieSearchRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    .locals 15
    .parameter "query"
    .parameter
    .parameter "isRaw"
    .parameter "includeLocation"
    .parameter "authToken"
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;",
            "Lcom/google/android/googlequicksearchbox/google/LatencyTracker;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "begin_create_request"

    move-object/from16 v0, p6

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, location:Landroid/location/Location;
    if-eqz p4, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLocation()Landroid/location/Location;

    move-result-object v7

    .line 419
    const-string v10, "got_location"

    move-object/from16 v0, p6

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 423
    :cond_0
    new-instance v8, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;

    invoke-direct {v8}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;-><init>()V

    .line 424
    .local v8, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    new-instance v5, Ljava/util/Formatter;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v10}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    .line 427
    .local v5, f:Ljava/util/Formatter;
    :try_start_0
    const-string v10, "UTF-8"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 432
    .local v3, encodedQuery:Ljava/lang/String;
    if-eqz p5, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v11}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGeniePSuggestServer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?q=%s&hl=%s&app=%s&appv=%s&platform=%s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 435
    .local v2, baseUrl:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    invoke-static {}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getLanguage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getAppv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v2, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 441
    iget-object v10, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSearchUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    invoke-virtual {v10}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->getSearchDomainCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, glParam:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 443
    const-string v10, "&gl=%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 445
    :cond_1
    if-eqz v7, :cond_2

    .line 446
    const-string v10, "&sll=%f,%f&acc=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    float-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 451
    :cond_2
    if-eqz p5, :cond_3

    .line 452
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GoogleLogin auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_3
    if-eqz p3, :cond_4

    .line 455
    const-string v10, "&raw=true"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 457
    :cond_4
    const-string v10, "&feeds=%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->FEEDS_JOINER:Lcom/google/common/base/Joiner;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 458
    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, url:Ljava/lang/String;
    const-string v10, "QSB.GenieClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request: chars="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";feeds="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";loc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_6

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p5, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v8, v9}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->setUrl(Ljava/lang/String;)V

    move-object v10, v8

    .line 466
    .end local v2           #baseUrl:Ljava/lang/String;
    .end local v3           #encodedQuery:Ljava/lang/String;
    .end local v6           #glParam:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :goto_3
    return-object v10

    .line 428
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 429
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "QSB.GenieClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error encoding query: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v10, 0x0

    goto :goto_3

    .line 432
    .end local v4           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #encodedQuery:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v11}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieSuggestServer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?q=%s&hl=%s&app=%s&appv=%s&platform=%s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    goto/16 :goto_0

    .line 459
    .restart local v2       #baseUrl:Ljava/lang/String;
    .restart local v6       #glParam:Ljava/lang/String;
    .restart local v9       #url:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private createLoggingData(Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .locals 2
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "response"

    .prologue
    .line 326
    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 327
    .local v0, eventId:Lorg/json/JSONArray;
    new-instance v1, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V

    return-object v1
.end method

.method private executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lorg/json/JSONArray;
    .locals 2
    .parameter "query"
    .parameter
    .parameter "isRaw"
    .parameter "includeLocation"
    .parameter "authToken"
    .parameter "latency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;",
            "Lcom/google/android/googlequicksearchbox/google/LatencyTracker;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->createGenieSearchRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;

    move-result-object v0

    .line 342
    .local v0, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;
    invoke-direct {p0, v0, p6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->sendGenieSearchRequest(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lorg/json/JSONArray;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAuthToken(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getBasicFeeds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 241
    .local v0, feeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "qs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getEnhancedFeeds(Z)Ljava/util/Set;
    .locals 2
    .parameter "includeHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v0, feeds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "qs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    if-eqz p1, :cond_0

    .line 252
    const-string v1, "hist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-object v0
.end method

.method private getEventId(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 312
    if-nez p1, :cond_0

    move-object v1, v3

    .line 317
    :goto_0
    return-object v1

    .line 314
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, ex:Lorg/json/JSONException;
    const-string v1, "QSB.GenieClient"

    const-string v2, "No EventId in response."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 317
    goto :goto_0
.end method

.method private getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    return-object v0
.end method

.method private getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    return-object v0
.end method

.method private getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mGenieSource:Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getSuggestionFactory()Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized invalidateSessionCookie()V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getLoginHelper()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;

    move-result-object v0

    const-string v1, "mobilepersonalfeeds"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)V
    .locals 5
    .parameter "query"
    .parameter "networkInfo"
    .parameter "latency"
    .parameter "response"

    .prologue
    .line 268
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3fa999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 270
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->createLoggingData(Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    move-result-object v0

    .line 271
    .local v0, latencyLogData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putQuery(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V

    .line 273
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getGenieLogger()Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieLogger;->log(Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;)V

    .line 275
    .end local v0           #latencyLogData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    :cond_0
    return-void
.end method

.method private query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 9
    .parameter "source"
    .parameter "query"
    .parameter
    .parameter "includeLocation"
    .parameter "includeAuthToken"
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/google/GoogleSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/google/android/googlequicksearchbox/MutableSuggestionList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;

    const-string v0, "QSB.GenieClient"

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, latency:Lcom/google/android/googlequicksearchbox/google/LatencyTracker;
    const-string v0, "query_start"

    invoke-virtual {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 211
    .local v7, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p6, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    .line 237
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v0, "got_network_info"

    invoke-virtual {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 217
    if-eqz p5, :cond_3

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v0

    move-object v5, v0

    .line 218
    .local v5, authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    :goto_1
    if-eqz v5, :cond_2

    .line 219
    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setAccount(Ljava/lang/String;)V

    .line 222
    :cond_2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lorg/json/JSONArray;

    move-result-object v8

    .line 227
    .local v8, response:Lorg/json/JSONArray;
    if-nez v8, :cond_4

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p2, v7, v6, v0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)V

    .line 229
    const/4 v0, 0x1

    invoke-interface {p6, v0}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->setRequestFailed(Z)V

    goto :goto_0

    .line 217
    .end local v5           #authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .end local v8           #response:Lorg/json/JSONArray;
    :cond_3
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_1

    .line 233
    .restart local v5       #authToken:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .restart local v8       #response:Lorg/json/JSONArray;
    :cond_4
    invoke-direct {p0, p6, v8, v7, v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->addSuggestions(Lcom/google/android/googlequicksearchbox/MutableSuggestionList;Lorg/json/JSONArray;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)V

    .line 234
    const-string v0, "suggestions_built"

    invoke-virtual {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, p2, v7, v6, v8}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->logLatency(Ljava/lang/String;Landroid/net/NetworkInfo;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method private responseContainsAuthError(Lorg/json/JSONArray;)Z
    .locals 3
    .parameter "genieResponse"

    .prologue
    const/4 v2, 0x0

    .line 395
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 396
    .local v0, flags:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendGenieSearchRequest(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lorg/json/JSONArray;
    .locals 8
    .parameter "request"
    .parameter "latency"

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 352
    if-nez p1, :cond_0

    move-object v5, v7

    .line 390
    :goto_0
    return-object v5

    .line 355
    :cond_0
    const-string v5, "request_created"

    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 358
    :try_start_0
    const-string v5, "network_roundtrip_start"

    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v5, p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, content:Ljava/lang/String;
    const-string v5, "network_roundtrip_end"

    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v7

    .line 362
    goto :goto_0

    .line 365
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v7

    .line 367
    goto :goto_0

    .line 370
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 371
    .local v4, start:I
    const-string v5, "*/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 372
    .local v2, end:I
    if-eq v4, v6, :cond_3

    if-eq v2, v6, :cond_3

    .line 373
    add-int/lit8 v5, v4, 0x3

    const/4 v6, 0x1

    sub-int v6, v2, v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 376
    .local v3, genieResponse:Lorg/json/JSONArray;
    const-string v5, "json_parsed"

    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v3}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->responseContainsAuthError(Lorg/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    const-string v5, "QSB.GenieClient"

    const-string v6, "Genie reported auth error, invalidating cookie."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->invalidateSessionCookie()V

    .line 381
    const-string v5, "cookie_invalidated"

    invoke-virtual {p2, v5}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->addEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move-object v5, v3

    .line 384
    goto :goto_0

    .line 385
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #genieResponse:Lorg/json/JSONArray;
    .end local v4           #start:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 386
    .local v1, e:Ljava/io/IOException;
    const-string v5, "QSB.GenieClient"

    const-string v6, "HTTP request error: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 387
    goto :goto_0

    .line 388
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 389
    .local v1, e:Lorg/json/JSONException;
    const-string v5, "QSB.GenieClient"

    const-string v6, "Error parsing response: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 390
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mSettingsListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 497
    :cond_0
    return-void
.end method

.method haveNetwork()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->haveNetworkConnection()Z

    move-result v0

    return v0
.end method

.method isLikelyToReturnZeroQueryResults()Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryBasicFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 7
    .parameter "source"
    .parameter "query"
    .parameter "list"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getBasicFeeds()Ljava/util/Set;

    move-result-object v3

    .line 175
    .local v3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->callerHasLocationPermission()Z

    move-result v4

    .line 176
    .local v4, includeLocation:Z
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 177
    return-void
.end method

.method public queryEnhancedFeeds(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/MutableSuggestionList;)V
    .locals 7
    .parameter "source"
    .parameter "query"
    .parameter "list"

    .prologue
    .line 186
    const/4 v4, 0x1

    .line 187
    .local v4, includeLocation:Z
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSearchHistoryEnabled()Z

    move-result v5

    .line 188
    .local v5, includeHistory:Z
    invoke-direct {p0, v5}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getEnhancedFeeds(Z)Ljava/util/Set;

    move-result-object v3

    .local v3, feeds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 189
    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->query(Lcom/google/android/googlequicksearchbox/google/GoogleSource;Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/MutableSuggestionList;)V

    .line 190
    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)Z
    .locals 7
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v6, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;

    const-string v0, "QSB.GenieClient"

    invoke-direct {v6, v0}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, latency:Lcom/google/android/googlequicksearchbox/google/LatencyTracker;
    const-string v0, "dhist"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->getAuthToken()Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/google/genie/GenieClient;->executeGenieRequest(Ljava/lang/String;Ljava/util/Set;ZZLcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method
