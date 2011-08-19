.class public abstract Lcom/google/api/GoogleAPI;
.super Ljava/lang/Object;
.source "GoogleAPI.java"


# static fields
.field protected static referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, outputBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 140
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, string:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #string:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 146
    .local v0, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "[google-api-translate-java] Error reading translation stream."

    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 149
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static retrieveJSON(Ljava/net/URL;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .parameter "url"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 103
    .local v3, uc:Ljava/net/HttpURLConnection;
    const-string v4, "referer"

    sget-object v5, Lcom/google/api/GoogleAPI;->referrer:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 108
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/GoogleAPI;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, result:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object v4

    .line 116
    .end local v2           #result:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v3           #uc:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 123
    .local v0, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "[google-api-translate-java] Error retrieving translation."

    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static setHttpReferrer(Ljava/lang/String;)V
    .locals 0
    .parameter "pReferrer"

    .prologue
    .line 54
    sput-object p0, Lcom/google/api/GoogleAPI;->referrer:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static validateReferrer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/api/GoogleAPI;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/api/GoogleAPI;->referrer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "[google-api-translate-java] Referrer is not set. Call setHttpReferrer()."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method
