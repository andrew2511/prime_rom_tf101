.class public Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;
.super Ljava/lang/Object;
.source "JavaNetHttpHelper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/HttpHelper;


# instance fields
.field private mConnectTimeout:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mReadTimeout:I

.field private final mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 2
    .parameter "rewriter"
    .parameter "userAgent"
    .parameter "connectTimeoutMillis"
    .parameter "readTimeoutMillis"
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

    .line 66
    iput p3, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    .line 67
    iput p4, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    .line 68
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnectivityManager()V

    .line 70
    return-void
.end method

.method private createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

    invoke-interface {v6, p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, u:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 154
    .local v0, c:Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 155
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    .local v3, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 159
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    if-eqz v6, :cond_1

    .line 164
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    :cond_1
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    if-eqz v6, :cond_2

    .line 167
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 169
    :cond_2
    return-object v0
.end method

.method private createConnectivityManager()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 241
    :cond_0
    return-void
.end method

.method private extractCharset(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .parameter "c"

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, contentType:Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v4, "UTF-8"

    .line 192
    :goto_0
    return-object v4

    .line 178
    :cond_0
    const-string v4, "charset="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, charsetIndex:I
    if-gez v1, :cond_1

    const-string v4, "UTF-8"

    goto :goto_0

    .line 180
    :cond_1
    const-string v4, "charset="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v4, "UTF-8"

    goto :goto_0

    .line 184
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    const-string v4, "QSB.JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported charset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v4, "UTF-8"
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 189
    .local v3, ex:Ljava/nio/charset/IllegalCharsetNameException;
    const-string v4, "QSB.JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal charset name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v4, "UTF-8"

    goto :goto_0

    .end local v3           #ex:Ljava/nio/charset/IllegalCharsetNameException;
    :cond_3
    move-object v4, v0

    .line 192
    goto :goto_0
.end method

.method private getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->extractCharset(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 97
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 109
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, c:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 104
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 106
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v1
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnectivityManager()V

    .line 225
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public haveNetworkConnection()Z
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 216
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;)Ljava/lang/String;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    const/4 v3, 0x0

    .line 144
    :cond_0
    :goto_0
    return-object v3

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, c:Ljava/net/HttpURLConnection;
    if-nez p2, :cond_2

    .line 128
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .end local p2           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p2, v1

    .line 130
    .end local v1           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2       #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v3, "Content-Length"

    if-nez p3, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 133
    if-eqz p3, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 134
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 136
    if-eqz p3, :cond_3

    .line 137
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 138
    .local v2, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 141
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 130
    :cond_4
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    :cond_5
    move v3, v5

    .line 133
    goto :goto_2

    .line 143
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v3
.end method
