.class public final Lcom/google/android/feeds/core/net/ContentHandlerUtil;
.super Ljava/lang/Object;
.source "ContentHandlerUtil.java"


# static fields
.field private static sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/feeds/core/net/ContentAuthenticator;

    invoke-direct {v0}, Lcom/google/android/feeds/core/net/ContentAuthenticator;-><init>()V

    sput-object v0, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method public static getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, defaultValue:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getCharSet(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, charSet:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 134
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 137
    .local v2, url:Ljava/net/URL;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unabled to determine character encoding for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getCharSet(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "connection"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 107
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    new-instance v2, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v2}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    .line 110
    .local v2, parser:Lorg/apache/http/message/HeaderValueParser;
    invoke-static {v0, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 111
    .local v3, values:[Lorg/apache/http/HeaderElement;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 112
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "charset"

    invoke-interface {v4, v5}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 113
    .local v1, param:Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 121
    .end local v1           #param:Lorg/apache/http/NameValuePair;
    .end local v2           #parser:Lorg/apache/http/message/HeaderValueParser;
    .end local v3           #values:[Lorg/apache/http/HeaderElement;
    :goto_0
    return-object v4

    .line 118
    :cond_0
    instance-of v4, p0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_1

    .line 119
    const-string v4, "ISO-8859-1"

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 121
    goto :goto_0
.end method

.method public static getResponseCode(Ljava/net/URLConnection;)I
    .locals 10
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 190
    const/4 v4, -0x1

    .line 191
    .local v4, responseCode:I
    instance-of v6, p0, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 192
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 194
    .local v2, http:Ljava/net/HttpURLConnection;
    :try_start_0
    sget-object v6, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    invoke-static {v6}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 195
    sget-object v6, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/android/feeds/core/net/ContentAuthenticator;->setEnabled(Z)V

    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 200
    sget-object v6, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    invoke-virtual {v6, v8}, Lcom/google/android/feeds/core/net/ContentAuthenticator;->setEnabled(Z)V

    .line 206
    .end local v2           #http:Ljava/net/HttpURLConnection;
    :cond_0
    if-ne v4, v9, :cond_2

    .line 214
    const-string v6, "Status"

    invoke-virtual {p0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, status:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 219
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 220
    .local v3, index:I
    if-eq v3, v9, :cond_1

    .line 221
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 225
    :cond_1
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .end local v3           #index:I
    .end local v5           #status:Ljava/lang/String;
    :cond_2
    :goto_0
    move v6, v4

    .line 231
    :goto_1
    return v6

    .line 197
    .restart local v2       #http:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 198
    .local v1, e:Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException;
    const/16 v6, 0x191

    .line 200
    sget-object v7, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    invoke-virtual {v7, v8}, Lcom/google/android/feeds/core/net/ContentAuthenticator;->setEnabled(Z)V

    goto :goto_1

    .end local v1           #e:Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException;
    :catchall_0
    move-exception v6

    sget-object v7, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->sContentAuthenticator:Lcom/google/android/feeds/core/net/ContentAuthenticator;

    invoke-virtual {v7, v8}, Lcom/google/android/feeds/core/net/ContentAuthenticator;->setEnabled(Z)V

    throw v6

    .line 226
    .end local v2           #http:Ljava/net/HttpURLConnection;
    .restart local v3       #index:I
    .restart local v5       #status:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getResponseMessage(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, responseMessage:Ljava/lang/String;
    instance-of v5, p0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_0

    .line 247
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 248
    .local v1, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 253
    .end local v1           #http:Ljava/net/HttpURLConnection;
    :cond_0
    if-nez v3, :cond_1

    .line 261
    const-string v5, "Status"

    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, status:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 266
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 267
    .local v2, index:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 269
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .end local v2           #index:I
    .end local v4           #status:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, encoding:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 154
    .local v3, source:Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 155
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Input stream is null. This can happen if there was a connection error accessing a header field. Always call URLConnection#getInputStream() before accessing any headers."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_0
    const-string v4, "gzip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    :goto_0
    return-object v4

    .line 161
    :cond_1
    const-string v4, "deflate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const/4 v2, 0x1

    .line 163
    .local v2, noHeader:Z
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 164
    .local v1, inflater:Ljava/util/zip/Inflater;
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v3, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    .end local v1           #inflater:Ljava/util/zip/Inflater;
    .end local v2           #noHeader:Z
    :cond_2
    move-object v4, v3

    .line 166
    goto :goto_0
.end method

.method public static openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 71
    const-string v3, "http.keepAlive"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 74
    .local v1, connection:Ljava/net/URLConnection;
    instance-of v3, v1, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 75
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 76
    .local v2, http:Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 77
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 79
    .end local v2           #http:Ljava/net/HttpURLConnection;
    :cond_0
    return-object v1
.end method
