.class public abstract Ltwitter4j/internal/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field static class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/internal/org/json/JSONObject;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.internal.http.HttpResponseImpl"

    invoke-static {v0}, Ltwitter4j/internal/http/HttpResponse;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/internal/http/HttpResponse;->class$twitter4j$internal$http$HttpResponseImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    .line 136
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    .line 54
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    .line 55
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .locals 2
    .parameter "conf"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    .line 136
    iput-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    .line 58
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    .line 59
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
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

.method private disconnectForcibly()V
    .locals 1

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final asJSONArray()Ltwitter4j/internal/org/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, json:Ltwitter4j/internal/org/json/JSONArray;
    const/4 v3, 0x0

    .line 191
    .local v3, reader:Ljava/io/InputStreamReader;
    :try_start_0
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v4}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v4}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v3

    .line 194
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    new-instance v4, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v4, v3}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v4}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0           #json:Ltwitter4j/internal/org/json/JSONArray;
    .local v1, json:Ltwitter4j/internal/org/json/JSONArray;
    :try_start_1
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ltwitter4j/internal/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    .line 210
    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v0       #json:Ltwitter4j/internal/org/json/JSONArray;
    :goto_0
    if-eqz v3, :cond_0

    .line 212
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 216
    :cond_0
    :goto_1
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 218
    return-object v0

    .line 197
    :cond_1
    :try_start_3
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ljava/lang/String;)V

    .end local v0           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONArray;
    move-object v0, v1

    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v0       #json:Ltwitter4j/internal/org/json/JSONArray;
    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v3

    .line 201
    new-instance v1, Ltwitter4j/internal/org/json/JSONArray;

    new-instance v4, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v4, v3}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v4}, Ltwitter4j/internal/org/json/JSONArray;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v0           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONArray;
    move-object v0, v1

    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v0       #json:Ltwitter4j/internal/org/json/JSONArray;
    goto :goto_0

    .line 203
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 204
    .local v2, jsone:Ltwitter4j/internal/org/json/JSONException;
    :goto_2
    :try_start_4
    sget-object v4, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v4}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    .end local v2           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v3, :cond_3

    .line 212
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 216
    :cond_3
    :goto_4
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v4

    .line 207
    .restart local v2       #jsone:Ltwitter4j/internal/org/json/JSONException;
    :cond_4
    :try_start_6
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 213
    .end local v2           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_4

    .line 210
    .end local v0           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONArray;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v0       #json:Ltwitter4j/internal/org/json/JSONArray;
    goto :goto_3

    .line 203
    .end local v0           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1       #json:Ltwitter4j/internal/org/json/JSONArray;
    :catch_3
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #json:Ltwitter4j/internal/org/json/JSONArray;
    .restart local v0       #json:Ltwitter4j/internal/org/json/JSONArray;
    goto :goto_2
.end method

.method public final asJSONObject()Ltwitter4j/internal/org/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    if-nez v2, :cond_1

    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, reader:Ljava/io/InputStreamReader;
    :try_start_0
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v1

    .line 152
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    new-instance v3, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v3, v1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    .line 153
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    if-eqz v1, :cond_0

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :cond_0
    :goto_1
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 177
    .end local v1           #reader:Ljava/io/InputStreamReader;
    :cond_1
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;

    return-object v2

    .line 155
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :cond_2
    :try_start_2
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 162
    .local v0, jsone:Ltwitter4j/internal/org/json/JSONException;
    :try_start_3
    sget-object v2, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    invoke-virtual {v2}, Ltwitter4j/internal/logging/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .end local v0           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 170
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 174
    :cond_3
    :goto_2
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v2

    .line 158
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asReader()Ljava/io/InputStreamReader;

    move-result-object v1

    .line 159
    new-instance v2, Ltwitter4j/internal/org/json/JSONObject;

    new-instance v3, Ltwitter4j/internal/org/json/JSONTokener;

    invoke-direct {v3, v1}, Ltwitter4j/internal/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ltwitter4j/internal/org/json/JSONTokener;)V

    iput-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->json:Ltwitter4j/internal/org/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 165
    .restart local v0       #jsone:Ltwitter4j/internal/org/json/JSONException;
    :cond_5
    :try_start_6
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    .end local v0           #jsone:Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public final asReader()Ljava/io/InputStreamReader;
    .locals 4

    .prologue
    .line 223
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 225
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 102
    const/4 v5, 0x0

    .line 104
    .local v5, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 105
    if-nez v5, :cond_1

    .line 106
    const/4 v6, 0x0

    .line 124
    if-eqz v5, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    :cond_0
    :goto_0
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 133
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_1
    return-object v6

    .line 108
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v1, buf:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 118
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 120
    .local v4, npe:Ljava/lang/NullPointerException;
    :try_start_3
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_2

    .line 126
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 130
    :cond_2
    :goto_3
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    throw v6

    .line 114
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 115
    sget-object v6, Ltwitter4j/internal/http/HttpResponse;->logger:Ltwitter4j/internal/logging/Logger;

    iget-object v7, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 117
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 124
    if-eqz v5, :cond_4

    .line 126
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    :cond_4
    :goto_4
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;->disconnectForcibly()V

    .line 133
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_5
    iget-object v6, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_1

    .line 121
    .restart local v5       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 122
    .local v2, ioe:Ljava/io/IOException;
    :try_start_7
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_0

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v3       #line:Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v3           #line:Ljava/lang/String;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/http/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/http/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
