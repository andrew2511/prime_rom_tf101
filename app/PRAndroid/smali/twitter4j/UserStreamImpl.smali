.class Ltwitter4j/UserStreamImpl;
.super Ltwitter4j/StatusStreamImpl;
.source "UserStreamImpl.java"

# interfaces
.implements Ltwitter4j/UserStream;


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
    .line 45
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V

    .line 46
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
    .line 49
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    .line 50
    return-void
.end method


# virtual methods
.method public next(Ltwitter4j/UserStreamListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/StreamListener;

    .line 57
    .local v0, list:[Ltwitter4j/StreamListener;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 58
    iput-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .line 59
    invoke-virtual {p0}, Ltwitter4j/UserStreamImpl;->handleNextElement()V

    .line 60
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
    .line 63
    iput-object p1, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .line 64
    invoke-virtual {p0}, Ltwitter4j/UserStreamImpl;->handleNextElement()V

    .line 65
    return-void
.end method

.method protected onBlock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 190
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onBlock(Ltwitter4j/User;Ltwitter4j/User;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method protected onDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/DirectMessage;

    move-result-object v1

    .line 83
    .local v1, directMessage:Ltwitter4j/DirectMessage;
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 84
    .local v4, listener:Ltwitter4j/StreamListener;
    check-cast v4, Ltwitter4j/UserStreamListener;

    .end local v4           #listener:Ltwitter4j/StreamListener;
    invoke-interface {v4, v1}, Ltwitter4j/UserStreamListener;->onDirectMessage(Ltwitter4j/DirectMessage;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 203
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 204
    .local v3, listener:Ltwitter4j/StreamListener;
    invoke-interface {v3, p1}, Ltwitter4j/StreamListener;->onException(Ljava/lang/Exception;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v3           #listener:Ltwitter4j/StreamListener;
    :cond_0
    return-void
.end method

.method protected onFavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 105
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onFavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method protected onFollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 126
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onFollow(Ltwitter4j/User;Ltwitter4j/User;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method protected onFriends(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asFriendList(Ltwitter4j/internal/org/json/JSONObject;)[I

    move-result-object v1

    .line 97
    .local v1, friendIds:[I
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 98
    .local v4, listener:Ltwitter4j/StreamListener;
    check-cast v4, Ltwitter4j/UserStreamListener;

    .end local v4           #listener:Ltwitter4j/StreamListener;
    invoke-interface {v4, v1}, Ltwitter4j/UserStreamListener;->onFriendList([I)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method protected onRetweet(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

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
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onRetweet(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method protected onScrubGeo(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Ltwitter4j/UserStreamImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Geo-tagging deletion notice (not implemented yet): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/UserStreamImpl;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onSender(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    new-instance v4, Ltwitter4j/DirectMessageJSONImpl;

    invoke-direct {v4, p1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v3, v4}, Ltwitter4j/UserStreamListener;->onDirectMessage(Ltwitter4j/DirectMessage;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method protected onUnblock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 197
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onUnblock(Ltwitter4j/User;Ltwitter4j/User;)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method protected onUnfavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 112
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onUnfavorite(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method protected onUserListCreation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 162
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onUserListCreation(Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method protected onUserListDestroyed(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 176
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onUserListDeletion(Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method protected onUserListMemberAddition(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "addedMember"
    .parameter "owner"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 133
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onUserListMemberAddition(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method protected onUserListMemberDeletion(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "deletedMember"
    .parameter "owner"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 140
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onUserListMemberDeletion(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method protected onUserListSubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "source"
    .parameter "owner"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 148
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onUserListSubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method protected onUserListUnsubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .parameter "source"
    .parameter "owner"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 155
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v5

    invoke-virtual {p0, p3}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ltwitter4j/UserStreamListener;->onUserListUnsubscription(Ltwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method protected onUserListUpdated(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 169
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-virtual {p0, p2}, Ltwitter4j/UserStreamImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ltwitter4j/UserStreamListener;->onUserListUpdate(Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method protected onUserUpdate(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/UserStreamImpl;->listeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 183
    .local v3, listener:Ltwitter4j/StreamListener;
    check-cast v3, Ltwitter4j/UserStreamListener;

    .end local v3           #listener:Ltwitter4j/StreamListener;
    invoke-virtual {p0, p1}, Ltwitter4j/UserStreamImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v4

    invoke-interface {v3, v4}, Ltwitter4j/UserStreamListener;->onUserProfileUpdate(Ltwitter4j/User;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method protected parseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "line"

    .prologue
    .line 68
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 69
    iput-object p1, p0, Ltwitter4j/UserStreamImpl;->line:Ljava/lang/String;

    .line 70
    return-object p1
.end method
