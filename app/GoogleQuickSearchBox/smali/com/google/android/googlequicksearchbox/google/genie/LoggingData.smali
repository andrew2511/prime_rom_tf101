.class public Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
.super Ljava/lang/Object;
.source "LoggingData.java"


# instance fields
.field private mClickPosition:I

.field private mClickType:I

.field private final mConnectionType:I

.field private final mEventId:Lorg/json/JSONArray;

.field private final mNetworkRoundtripLatency:I

.field private mQuery:Ljava/lang/String;

.field private mSearchAction:I

.field private final mUserVisibleLatency:I


# direct methods
.method private constructor <init>(Lorg/json/JSONArray;III)V
    .locals 1
    .parameter "eventId"
    .parameter "userVisibleLatency"
    .parameter "networkRoundtripLatency"
    .parameter "connectionType"

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 70
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    .line 71
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    .line 77
    iput p2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    .line 78
    iput p3, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    .line 79
    iput p4, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lcom/google/android/googlequicksearchbox/google/LatencyTracker;Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "eventId"
    .parameter "latency"
    .parameter "networkInfo"

    .prologue
    .line 92
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->getUserVisibleLatency()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/LatencyTracker;->getNetworkRoundtripLatency()I

    move-result v1

    invoke-static {p3}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getConnectionType(Landroid/net/NetworkInfo;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;III)V

    .line 94
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .locals 13
    .parameter "json"

    .prologue
    const/4 v12, 0x0

    .line 259
    if-nez p0, :cond_0

    move-object v9, v12

    .line 276
    :goto_0
    return-object v9

    .line 261
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 262
    .local v3, eventId:Lorg/json/JSONArray;
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 263
    .local v8, userVisibleLatency:I
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 264
    .local v6, networkRoundtripLatency:I
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 265
    .local v2, connectionType:I
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 266
    .local v1, clickType:I
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 267
    .local v0, clickPosition:I
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 268
    .local v7, searchAction:I
    new-instance v5, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;

    invoke-direct {v5, v3, v8, v6, v2}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;-><init>(Lorg/json/JSONArray;III)V

    .line 270
    .local v5, logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    invoke-virtual {v5, v1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickType(I)V

    .line 271
    invoke-virtual {v5, v0}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putClickPosition(I)V

    .line 272
    invoke-virtual {v5, v7}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->putSearchAction(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v5

    .line 273
    goto :goto_0

    .line 274
    .end local v0           #clickPosition:I
    .end local v1           #clickType:I
    .end local v2           #connectionType:I
    .end local v3           #eventId:Lorg/json/JSONArray;
    .end local v5           #logData:Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;
    .end local v6           #networkRoundtripLatency:I
    .end local v7           #searchAction:I
    .end local v8           #userVisibleLatency:I
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 275
    .local v4, ex:Lorg/json/JSONException;
    const-string v9, "QSB.LoggingData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing log data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 276
    goto :goto_0
.end method

.method public static getApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const-string v0, "iss"

    return-object v0
.end method

.method public static getAppv(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConnectionType(Landroid/net/NetworkInfo;)I
    .locals 2
    .parameter "networkInfo"

    .prologue
    const/16 v1, 0xa

    .line 284
    if-nez p0, :cond_0

    move v0, v1

    .line 312
    :goto_0
    return v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 312
    goto :goto_0

    .line 289
    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 309
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 299
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 301
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 303
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 305
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 307
    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getDist(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    const-string v0, "Web"

    return-object v0
.end method

.method public static getPlatform(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    const-string v0, "android"

    return-object v0
.end method


# virtual methods
.method public putClickPosition(I)V
    .locals 0
    .parameter "clickPosition"

    .prologue
    .line 119
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    .line 120
    return-void
.end method

.method public putClickType(I)V
    .locals 0
    .parameter "clickType"

    .prologue
    .line 101
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 102
    return-void
.end method

.method public putClickTypeIfNotSet(I)V
    .locals 2
    .parameter "clickType"

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    .line 112
    :cond_0
    return-void
.end method

.method public putQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public putSearchAction(I)V
    .locals 0
    .parameter "searchAction"

    .prologue
    .line 126
    iput p1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    .line 127
    return-void
.end method

.method public toJson()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 243
    .local v0, json:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 245
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 246
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 247
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 248
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 249
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 250
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relatedEventId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userVisibleLatency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", networkRoundtripLatency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", connectionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", clickType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", clickPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", searchAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUrl(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "source"

    .prologue
    .line 165
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 166
    .local v2, f:Ljava/util/Formatter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/google/genie/GenieAllSource;->getGenieLoggingServer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?q=%s&app=%s&appv=%s&platform=%s&dist=%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, urlPattern:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    if-nez v8, :cond_7

    const-string v8, ""

    move-object v1, v8

    .line 170
    .local v1, encodedQuery:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getAppv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->getDist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 176
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_0

    .line 178
    :try_start_1
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, serverIp:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, processId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, timestamp:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mEventId:Lorg/json/JSONArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, sig:Ljava/lang/String;
    const-string v8, "&serverip=%s&processid=%s&timestamp=%s&sig=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v3           #processId:Ljava/lang/String;
    .end local v4           #serverIp:Ljava/lang/String;
    .end local v5           #sig:Ljava/lang/String;
    .end local v6           #timestamp:Ljava/lang/String;
    :cond_0
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 194
    const-string v8, "&pos=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickPosition:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 197
    :cond_1
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 198
    const-string v8, "&type=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mClickType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 201
    :cond_2
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 202
    const-string v8, "&action=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mSearchAction:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 205
    :cond_3
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 206
    const-string v8, "&uvlat=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mUserVisibleLatency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 209
    :cond_4
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 210
    const-string v8, "&nlat=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mNetworkRoundtripLatency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 213
    :cond_5
    iget v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 214
    const-string v8, "&connection=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mConnectionType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 217
    :cond_6
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v1           #encodedQuery:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 169
    :cond_7
    :try_start_2
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/google/genie/LoggingData;->mQuery:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto/16 :goto_0

    .line 183
    .restart local v1       #encodedQuery:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 184
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "QSB.LoggingData"

    const-string v9, "Malformed EventId in log message."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    const/4 v8, 0x0

    goto :goto_1

    .line 188
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #encodedQuery:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 189
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "QSB.LoggingData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to UTF-8 encode query:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v8, 0x0

    goto :goto_1
.end method
