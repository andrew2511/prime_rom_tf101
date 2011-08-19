.class Ltwitter4j/SiteStreamsImpl;
.super Ltwitter4j/AbstractStreamImplementation;
.source "SiteStreamsImpl.java"

# interfaces
.implements Ltwitter4j/StreamImplementation;
.implements Ltwitter4j/StreamListener;


# static fields
.field private static forUser:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field listener:Ltwitter4j/SiteStreamsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ltwitter4j/SiteStreamsImpl$1;

    invoke-direct {v0}, Ltwitter4j/SiteStreamsImpl$1;-><init>()V

    sput-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    return-void
.end method

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
    .line 48
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AbstractStreamImplementation;-><init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V

    .line 49
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
    .line 52
    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AbstractStreamImplementation;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    .line 53
    return-void
.end method


# virtual methods
.method public next([Ltwitter4j/StreamListener;)V
    .locals 1
    .parameter "listeners"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ltwitter4j/SiteStreamsListener;

    iput-object v0, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    .line 57
    invoke-virtual {p0}, Ltwitter4j/SiteStreamsImpl;->handleNextElement()V

    .line 58
    return-void
.end method

.method protected onBlock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onBlock(ILtwitter4j/User;Ltwitter4j/User;)V

    .line 166
    return-void
.end method

.method protected onDelete(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v2, "delete"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 91
    .local v0, deletionNotice:Ltwitter4j/internal/org/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v3, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ltwitter4j/StatusDeletionNoticeImpl;

    const-string v5, "status"

    invoke-virtual {v0, v5}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onDeletionNotice(ILtwitter4j/StatusDeletionNotice;)V

    .line 98
    :goto_0
    return-void

    .line 94
    .restart local p0
    :cond_0
    const-string v2, "direct_message"

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, directMessage:Ltwitter4j/internal/org/json/JSONObject;
    iget-object v2, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v3, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "id"

    invoke-static {v4, v1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v4

    const-string v5, "user_id"

    invoke-static {v5, v1}, Ltwitter4j/internal/util/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Ltwitter4j/SiteStreamsListener;->onDeletionNotice(III)V

    goto :goto_0
.end method

.method protected onDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/DirectMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ltwitter4j/SiteStreamsListener;->onDirectMessage(ILtwitter4j/DirectMessage;)V

    .line 102
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 173
    iget-object v0, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    invoke-interface {v0, p1}, Ltwitter4j/SiteStreamsListener;->onException(Ljava/lang/Exception;)V

    .line 174
    return-void
.end method

.method protected onFavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onFavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V

    .line 110
    return-void
.end method

.method protected onFollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onFollow(ILtwitter4j/User;Ltwitter4j/User;)V

    .line 119
    return-void
.end method

.method protected onFriends(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asFriendList(Ltwitter4j/internal/org/json/JSONObject;)[I

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ltwitter4j/SiteStreamsListener;->onFriendList(I[I)V

    .line 106
    return-void
.end method

.method protected onStatus(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ltwitter4j/SiteStreamsListener;->onStatus(ILtwitter4j/Status;)V

    .line 86
    return-void
.end method

.method protected onUnblock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onUnblock(ILtwitter4j/User;Ltwitter4j/User;)V

    .line 170
    return-void
.end method

.method protected onUnfavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onUnfavorite(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/Status;)V

    .line 115
    return-void
.end method

.method protected onUnfollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onUnfollow(ILtwitter4j/User;Ltwitter4j/User;)V

    .line 123
    return-void
.end method

.method protected onUserListCreation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onUserListCreation(ILtwitter4j/User;Ltwitter4j/UserList;)V

    .line 148
    return-void
.end method

.method protected onUserListDestroyed(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onUserListDeletion(ILtwitter4j/User;Ltwitter4j/UserList;)V

    .line 158
    return-void
.end method

.method protected onUserListMemberAddition(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "addedMember"
    .parameter "owner"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onUserListMemberAddition(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 128
    return-void
.end method

.method protected onUserListMemberDeletion(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "deletedMember"
    .parameter "owner"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onUserListMemberDeletion(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 133
    return-void
.end method

.method protected onUserListSubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "source"
    .parameter "owner"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onUserListSubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 138
    return-void
.end method

.method protected onUserListUnsubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 5
    .parameter "source"
    .parameter "owner"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v3

    invoke-virtual {p0, p3}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Ltwitter4j/SiteStreamsListener;->onUserListUnsubscription(ILtwitter4j/User;Ltwitter4j/User;Ltwitter4j/UserList;)V

    .line 143
    return-void
.end method

.method protected onUserListUpdated(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-virtual {p0, p2}, Ltwitter4j/SiteStreamsImpl;->asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Ltwitter4j/SiteStreamsListener;->onUserListUpdate(ILtwitter4j/User;Ltwitter4j/UserList;)V

    .line 153
    return-void
.end method

.method protected onUserUpdate(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Ltwitter4j/SiteStreamsImpl;->listener:Ltwitter4j/SiteStreamsListener;

    sget-object v0, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Ltwitter4j/SiteStreamsImpl;->asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ltwitter4j/SiteStreamsListener;->onUserProfileUpdate(ILtwitter4j/User;)V

    .line 162
    return-void
.end method

.method protected parseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "line"

    .prologue
    const/16 v3, 0xc

    const/4 v5, 0x1

    .line 61
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, p1

    .line 72
    :goto_0
    return-object v1

    .line 64
    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 67
    .local v0, userIdEnd:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 68
    sget-object v1, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xd

    sub-int v4, v0, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    add-int/lit8 v1, v0, 0xb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    sget-object v1, Ltwitter4j/SiteStreamsImpl;->forUser:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    add-int/lit8 v1, v0, 0xb

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
