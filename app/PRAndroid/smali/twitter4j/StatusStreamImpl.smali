.class Ltwitter4j/StatusStreamImpl;
.super Ltwitter4j/AbstractStreamImplementation;
.source "StatusStreamImpl.java"

# interfaces
.implements Ltwitter4j/StatusStream;


# instance fields
.field protected line:Ljava/lang/String;

.field protected listeners:[Ltwitter4j/StreamListener;


# direct methods
.method constructor <init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "stream"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AbstractStreamImplementation;-><init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V

    .line 51
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "response"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AbstractStreamImplementation;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    .line 56
    return-void
.end method


# virtual methods
.method public next(Ltwitter4j/StatusListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/StreamListener;

    .line 71
    .local v0, list:[Ltwitter4j/StreamListener;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    iput-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .line 73
    invoke-virtual {p0}, Ltwitter4j/StatusStreamImpl;->handleNextElement()V

    .line 74
    return-void
.end method

.method public next([Ltwitter4j/StreamListener;)V
    .locals 0
    .parameter "listeners"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .line 78
    invoke-virtual {p0}, Ltwitter4j/StatusStreamImpl;->handleNextElement()V

    .line 79
    return-void
.end method

.method protected onDelete(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 97
    .local v5, listener:Ltwitter4j/StreamListener;
    const-string v6, "delete"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 98
    .local v1, deletionNotice:Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    check-cast v5, Ltwitter4j/StatusListener;

    .end local v5           #listener:Ltwitter4j/StreamListener;
    new-instance v6, Ltwitter4j/StatusDeletionNoticeImpl;

    const-string v7, "status"

    invoke-virtual {v1, v7}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v5, v6}, Ltwitter4j/StatusListener;->onDeletionNotice(Ltwitter4j/StatusDeletionNotice;)V

    .line 96
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .restart local v5       #listener:Ltwitter4j/StreamListener;
    :cond_0
    const-string v6, "direct_message"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 102
    .local v2, directMessage:Ltwitter4j/internal/org/json/JSONObject;
    check-cast v5, Ltwitter4j/UserStreamListener;

    .end local v5           #listener:Ltwitter4j/StreamListener;
    const-string v6, "id"

    invoke-static {v6, v2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    const-string v8, "user_id"

    invoke-static {v8, v2}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Ltwitter4j/UserStreamListener;->onDeletionNotice(JI)V

    goto :goto_1

    .line 106
    .end local v1           #deletionNotice:Ltwitter4j/internal/org/json/JSONObject;
    .end local v2           #directMessage:Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 127
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 128
    .local v3, listener:Ltwitter4j/StreamListener;
    invoke-interface {v3, p1}, Ltwitter4j/StreamListener;->onException(Ljava/lang/Exception;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3           #listener:Ltwitter4j/StreamListener;
    :cond_0
    return-void
.end method

.method protected onLimit(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 111
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/StatusListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    const-string v4, "track"

    const-string v5, "limit"

    invoke-virtual {p1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    invoke-interface {v3, v4}, Ltwitter4j/StatusListener;->onTrackLimitationNotice(I)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method protected onScrubGeo(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 8
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v5, "scrub_geo"

    invoke-virtual {p1, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    .line 118
    .local v4, scrubGeo:Ltwitter4j/internal/org/json/JSONObject;
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 119
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/StatusListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    const-string v5, "user_id"

    invoke-static {v5, v4}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v5

    const-string v6, "up_to_status_id"

    invoke-static {v6, v4}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    invoke-interface {v3, v5, v6, v7}, Ltwitter4j/StatusListener;->onScrubGeo(IJ)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method protected onStatus(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Ltwitter4j/StatusStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 90
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/StatusListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/StatusStreamImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v4

    invoke-interface {v3, v4}, Ltwitter4j/StatusListener;->onStatus(Ltwitter4j/Status;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method protected parseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "line"

    .prologue
    .line 82
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 83
    iput-object p1, p0, Ltwitter4j/StatusStreamImpl;->line:Ljava/lang/String;

    .line 84
    return-object p1
.end method
