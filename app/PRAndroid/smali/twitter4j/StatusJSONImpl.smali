.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field static class$twitter4j$StatusJSONImpl:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = 0x1650c3edbf9bb2a0L


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private contributors:[Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private hashtags:[Ljava/lang/String;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:I

.field private isFavorited:Z

.field private isTruncated:Z

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private urls:[Ljava/net/URL;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private userMentions:[Ltwitter4j/User;

.field private wasRetweetedByMe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.StatusJSONImpl"

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 2
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 62
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 63
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 68
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 290
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 82
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 83
    .local v0, json:Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 84
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 85
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 62
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 63
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 68
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 290
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 90
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 91
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 9
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 372
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 373
    .local v3, list:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 374
    .local v4, size:I
    new-instance v6, Ltwitter4j/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 375
    .local v6, statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 376
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 377
    .local v1, json:Ltwitter4j/internal/org/json/JSONObject;
    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 378
    .local v5, status:Ltwitter4j/Status;
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONObject;
    .end local v5           #status:Ltwitter4j/Status;
    :cond_0
    invoke-static {v6, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    return-object v6

    .line 383
    .end local v0           #i:I
    .end local v3           #list:Ltwitter4j/internal/org/json/JSONArray;
    .end local v4           #size:I
    .end local v6           #statuses:Ltwitter4j/ResponseList;,"Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 384
    .local v2, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 385
    .end local v2           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 386
    .local v7, te:Ltwitter4j/TwitterException;
    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 13
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v10, "id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->id:J

    .line 95
    const-string v10, "text"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 96
    const-string v10, "source"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 97
    const-string v10, "created_at"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 98
    const-string v10, "truncated"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 99
    const-string v10, "in_reply_to_status_id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 100
    const-string v10, "in_reply_to_user_id"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v10

    iput v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    .line 101
    const-string v10, "favorited"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 102
    const-string v10, "in_reply_to_screen_name"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 103
    const-string v10, "retweet_count"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    .line 104
    const-string v10, "retweeted"

    invoke-static {v10, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v10

    iput-boolean v10, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    .line 106
    :try_start_0
    const-string v10, "user"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 107
    new-instance v10, Ltwitter4j/UserJSONImpl;

    const-string v11, "user"

    invoke-virtual {p1, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 113
    const-string v10, "place"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 115
    :try_start_1
    new-instance v10, Ltwitter4j/PlaceJSONImpl;

    const-string v11, "place"

    invoke-virtual {p1, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :cond_1
    :goto_0
    const-string v10, "retweeted_status"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 124
    :try_start_2
    new-instance v10, Ltwitter4j/StatusJSONImpl;

    const-string v11, "retweeted_status"

    invoke-virtual {p1, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;
    :try_end_2
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    :cond_2
    :goto_1
    const-string v10, "contributors"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 132
    :try_start_3
    const-string v10, "contributors"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 133
    .local v1, contributorsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 134
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 135
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4
    :try_end_3
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    .end local v1           #contributorsArray:Ltwitter4j/internal/org/json/JSONArray;
    .end local v4           #i:I
    :catch_0
    move-exception v10

    move-object v6, v10

    .line 110
    .local v6, jsone:Ltwitter4j/internal/org/json/JSONException;
    new-instance v10, Ltwitter4j/TwitterException;

    invoke-direct {v10, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 116
    .end local v6           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 117
    .local v5, ignore:Ltwitter4j/internal/org/json/JSONException;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONException;->printStackTrace()V

    .line 118
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse place:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v5           #ignore:Ltwitter4j/internal/org/json/JSONException;
    :catch_2
    move-exception v10

    move-object v5, v10

    .line 126
    .restart local v5       #ignore:Ltwitter4j/internal/org/json/JSONException;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONException;->printStackTrace()V

    .line 127
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse retweeted_status:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v5           #ignore:Ltwitter4j/internal/org/json/JSONException;
    :catch_3
    move-exception v10

    move-object v5, v10

    .line 138
    .restart local v5       #ignore:Ltwitter4j/internal/org/json/JSONException;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONException;->printStackTrace()V

    .line 139
    sget-object v10, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "failed to parse contributors:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 144
    .end local v5           #ignore:Ltwitter4j/internal/org/json/JSONException;
    :cond_3
    :goto_3
    const-string v10, "entities"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 146
    :try_start_4
    const-string v10, "entities"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 148
    .local v2, entities:Ltwitter4j/internal/org/json/JSONObject;
    const-string v10, "user_mentions"

    invoke-virtual {v2, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v9

    .line 149
    .local v9, userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v9}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v7

    .line 150
    .local v7, len:I
    new-array v10, v7, [Ltwitter4j/User;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentions:[Ltwitter4j/User;

    .line 151
    new-array v10, v7, [Ltwitter4j/UserMentionEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 152
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v7, :cond_5

    .line 153
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v11, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v9, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v11, v10, v4

    .line 154
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->userMentions:[Ltwitter4j/User;

    new-instance v11, Ltwitter4j/UserJSONImpl;

    invoke-virtual {v9, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v11, v10, v4
    :try_end_4
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 142
    .end local v2           #entities:Ltwitter4j/internal/org/json/JSONObject;
    .end local v4           #i:I
    .end local v7           #len:I
    .end local v9           #userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    goto :goto_3

    .line 157
    .restart local v2       #entities:Ltwitter4j/internal/org/json/JSONObject;
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v9       #userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_5
    :try_start_5
    const-string v10, "urls"

    invoke-virtual {v2, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v8

    .line 158
    .local v8, urlsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v8}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v7

    .line 159
    new-array v10, v7, [Ljava/net/URL;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->urls:[Ljava/net/URL;

    .line 160
    new-array v10, v7, [Ltwitter4j/URLEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 161
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_6

    .line 162
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v11, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v8, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v11, v10, v4

    .line 163
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->urls:[Ljava/net/URL;

    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    aget-object v11, v11, v4

    invoke-interface {v11}, Ltwitter4j/URLEntity;->getURL()Ljava/net/URL;

    move-result-object v11

    aput-object v11, v10, v4

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 166
    :cond_6
    const-string v10, "hashtags"

    invoke-virtual {v2, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 167
    .local v3, hashtagsArray:Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v7

    .line 168
    new-array v10, v7, [Ljava/lang/String;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtags:[Ljava/lang/String;

    .line 169
    new-array v10, v7, [Ltwitter4j/HashtagEntity;

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 170
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_7

    .line 171
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v11, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v11, v10, v4

    .line 172
    iget-object v10, p0, Ltwitter4j/StatusJSONImpl;->hashtags:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    const-string v12, "text"

    invoke-virtual {v11, v12}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4
    :try_end_5
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 174
    .end local v2           #entities:Ltwitter4j/internal/org/json/JSONObject;
    .end local v3           #hashtagsArray:Ltwitter4j/internal/org/json/JSONArray;
    .end local v4           #i:I
    .end local v7           #len:I
    .end local v8           #urlsArray:Ltwitter4j/internal/org/json/JSONArray;
    .end local v9           #userMentionsArray:Ltwitter4j/internal/org/json/JSONArray;
    :catch_4
    move-exception v10

    .line 177
    :cond_7
    const-string v10, "annotations"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 179
    :try_start_6
    const-string v10, "annotations"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 180
    .local v0, annotationsArray:Ltwitter4j/internal/org/json/JSONArray;
    new-instance v10, Ltwitter4j/Annotations;

    invoke-direct {v10, v0}, Ltwitter4j/Annotations;-><init>(Ltwitter4j/internal/org/json/JSONArray;)V

    iput-object v10, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;
    :try_end_6
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 184
    .end local v0           #annotationsArray:Ltwitter4j/internal/org/json/JSONArray;
    :cond_8
    :goto_7
    return-void

    .line 181
    :catch_5
    move-exception v10

    goto :goto_7
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 6
    .parameter "that"

    .prologue
    .line 187
    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 188
    .local v0, delta:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 189
    const/high16 v2, -0x8000

    .line 193
    :goto_0
    return v2

    .line 190
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 191
    const v2, 0x7fffffff

    goto :goto_0

    .line 193
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    if-nez p1, :cond_0

    move v0, v4

    .line 403
    .end local p1
    :goto_0
    return v0

    .line 400
    .restart local p1
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v5

    .line 401
    goto :goto_0

    .line 403
    :cond_1
    instance-of v0, p1, Ltwitter4j/Status;

    if-eqz v0, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getContributors()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getHashtags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtags:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    return v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    return-wide v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getURLs()[Ljava/net/URL;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urls:[Ljava/net/URL;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public getUserMentions()[Ltwitter4j/User;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentions:[Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetweetedByMe()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x0

    .line 408
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isTruncated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isFavorited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geoLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", place="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", wasRetweetedByMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", contributors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retweetedStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userMentions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentions:[Ltwitter4j/User;

    if-nez v1, :cond_1

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userMentionEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v1, :cond_2

    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urls:[Ljava/net/URL;

    if-nez v1, :cond_3

    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", urlEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v1, :cond_4

    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", hashtags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtags:[Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", hashtagEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v1, :cond_6

    move-object v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentions:[Ltwitter4j/User;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urls:[Ljava/net/URL;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_6
.end method
