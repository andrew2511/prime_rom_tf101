.class abstract Ltwitter4j/AbstractStreamImplementation;
.super Ljava/lang/Object;
.source "AbstractStreamImplementation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AbstractStreamImplementation$StreamEvent;
    }
.end annotation


# static fields
.field static class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

.field protected static final logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field private final CONF:Ltwitter4j/conf/Configuration;

.field private br:Ljava/io/BufferedReader;

.field protected final dispatcher:Ltwitter4j/internal/async/Dispatcher;

.field private is:Ljava/io/InputStream;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private streamAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.StatusStreamImpl"

    invoke-static {v0}, Ltwitter4j/AbstractStreamImplementation;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AbstractStreamImplementation;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->class$twitter4j$StatusStreamImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .parameter "dispatcher"
    .parameter "stream"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/AbstractStreamImplementation;->streamAlive:Z

    .line 61
    iput-object p2, p0, Ltwitter4j/AbstractStreamImplementation;->is:Ljava/io/InputStream;

    .line 62
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->br:Ljava/io/BufferedReader;

    .line 63
    iput-object p1, p0, Ltwitter4j/AbstractStreamImplementation;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 64
    iput-object p3, p0, Ltwitter4j/AbstractStreamImplementation;->CONF:Ltwitter4j/conf/Configuration;

    .line 65
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .parameter "dispatcher"
    .parameter "response"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Ltwitter4j/AbstractStreamImplementation;-><init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V

    .line 70
    iput-object p2, p0, Ltwitter4j/AbstractStreamImplementation;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 71
    return-void
.end method

.method static access$000(Ltwitter4j/AbstractStreamImplementation;)Ltwitter4j/conf/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->CONF:Ltwitter4j/conf/Configuration;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
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


# virtual methods
.method protected asDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/DirectMessage;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, directMessage:Ltwitter4j/DirectMessage;
    :try_start_0
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    .end local v0           #directMessage:Ltwitter4j/DirectMessage;
    const-string v2, "direct_message"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .restart local v0       #directMessage:Ltwitter4j/DirectMessage;
    invoke-static {v0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-object v0

    .line 286
    .end local v0           #directMessage:Ltwitter4j/DirectMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 287
    .local v1, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected asFriendList(Ltwitter4j/internal/org/json/JSONObject;)[I
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, friends:Ltwitter4j/internal/org/json/JSONArray;
    :try_start_0
    const-string v4, "friends"

    invoke-virtual {p1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 298
    .local v1, friendIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 299
    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v1           #friendIds:[I
    .end local v3           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 303
    .local v0, e:Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-direct {v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 301
    .end local v0           #e:Ltwitter4j/internal/org/json/JSONException;
    .restart local v1       #friendIds:[I
    .restart local v3       #i:I
    :cond_0
    return-object v1
.end method

.method protected asStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 278
    .local v0, status:Ltwitter4j/Status;
    invoke-static {v0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-object v0
.end method

.method protected asUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ltwitter4j/UserJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 309
    .local v0, user:Ltwitter4j/User;
    invoke-static {v0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object v0
.end method

.method protected asUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 315
    .local v0, userList:Ltwitter4j/UserList;
    invoke-static {v0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/AbstractStreamImplementation;->streamAlive:Z

    .line 269
    iget-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 270
    iget-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 271
    iget-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Ltwitter4j/AbstractStreamImplementation;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V

    .line 274
    :cond_0
    return-void
.end method

.method protected handleNextElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v3, p0, Ltwitter4j/AbstractStreamImplementation;->streamAlive:Z

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stream already closed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    :try_start_0
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation;->br:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 95
    new-instance v3, Ljava/io/IOException;

    const-string v4, "the end of the stream has been reached"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 164
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_0
    iget-boolean v1, p0, Ltwitter4j/AbstractStreamImplementation;->streamAlive:Z

    .line 168
    .local v1, isUnexpectedException:Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Ltwitter4j/AbstractStreamImplementation;->streamAlive:Z

    .line 169
    if-eqz v1, :cond_2

    .line 170
    new-instance v3, Ltwitter4j/TwitterException;

    const-string v4, "Stream closed."

    invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 97
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #isUnexpectedException:Z
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v3, p0, Ltwitter4j/AbstractStreamImplementation;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    new-instance v4, Ltwitter4j/AbstractStreamImplementation$1;

    invoke-direct {v4, p0, v2}, Ltwitter4j/AbstractStreamImplementation$1;-><init>(Ltwitter4j/AbstractStreamImplementation;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v2           #line:Ljava/lang/String;
    :cond_2
    return-void

    .line 165
    .restart local v0       #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method abstract next([Ltwitter4j/StreamListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method protected onBlock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onBlock"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method protected onDelete(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onDelete"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected onDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onDirectMessage"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 264
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected onFavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onFavorite"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method protected onFollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onFollow"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected onFriends(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onFriends"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method protected onLimit(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onLimit"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method protected onRetweet(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onRetweet"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method protected onScrubGeo(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onScrubGeo"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onSender(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onSender"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected onStatus(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onStatus"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected onUnblock(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUnblock"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method protected onUnfavorite(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "targetObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUnfavorite"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onUnfollow(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUnfollow"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected onUserListCreation(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListCreation"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method protected onUserListDestroyed(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListDestroyed"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method protected onUserListMemberAddition(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
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
    .line 224
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListMemberAddition"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected onUserListMemberDeletion(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
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
    .line 228
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListMemberDeletion"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected onUserListSubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
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
    .line 232
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListSubscription"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method protected onUserListUnsubscription(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
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
    .line 236
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListUnsubscription"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method protected onUserListUpdated(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "userList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;,
            Ltwitter4j/internal/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserListUpdated"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected onUserUpdate(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Ltwitter4j/AbstractStreamImplementation;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v1, "Unhandled event: onUserUpdate"

    invoke-virtual {v0, v1}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method protected parseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "line"

    .prologue
    .line 74
    return-object p1
.end method
