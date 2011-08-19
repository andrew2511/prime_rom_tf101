.class public Lcom/mobipocket/android/net/AndroidHttpConnection;
.super Ljava/lang/Object;
.source "AndroidHttpConnection.java"

# interfaces
.implements Lcom/amazon/system/net/HttpConnection;


# instance fields
.field private connected:Z

.field private httpConnection:Ljava/net/HttpURLConnection;

.field private final localeManager:Lcom/amazon/kcp/application/ILocaleManager;

.field private final maxResponseSize:I

.field private primedUrl:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxResponseSize"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/android/net/AndroidHttpConnection;-><init>(ILcom/amazon/kcp/application/ILocaleManager;)V

    .line 51
    return-void
.end method

.method public constructor <init>(ILcom/amazon/kcp/application/ILocaleManager;)V
    .locals 1
    .parameter "maxResponseSize"
    .parameter "localeManager"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    .line 41
    iput p1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->maxResponseSize:I

    .line 42
    iput-object p2, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    .line 43
    return-void
.end method

.method private connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->connected:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->connected:Z

    .line 405
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 71
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/mobipocket/android/net/AndroidHttpConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 93
    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/mobipocket/android/net/AndroidHttpConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/mobipocket/android/net/AndroidHttpConnection;->connect()V

    .line 144
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/mobipocket/android/net/AndroidHttpConnection;->connect()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxResponseSize()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->maxResponseSize:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/mobipocket/android/net/AndroidHttpConnection;->connect()V

    .line 220
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->primedUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening new connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->connected:Z

    .line 248
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 250
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 252
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    :try_start_0
    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    .line 257
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 261
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Language"

    iget-object v2, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    invoke-interface {v2}, Lcom/amazon/kcp/application/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->localeManager:Lcom/amazon/kcp/application/ILocaleManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 274
    throw v0

    .line 276
    :catch_1
    move-exception v0

    .line 278
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating GET request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->primedUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match primed url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->primedUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reusing primed connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public prime(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->primedUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/mobipocket/android/net/AndroidHttpConnection;->open(Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->primedUrl:Ljava/lang/String;

    .line 316
    :cond_0
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/android/net/AndroidHttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 3
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 352
    const-string v0, "GET"

    if-eq p1, v0, :cond_0

    const-string v0, "POST"

    if-eq p1, v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is neither com.amazon.system.net.HttpConnection.GET or com.amazon.system.net.HttpConnection.POST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 360
    const-string v0, "POST"

    if-ne p1, v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 369
    :cond_1
    return-void

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection not yet created - please call open first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTP connection already established - please call before methods that require a connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    .line 302
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 305
    iget-object v0, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->httpConnection:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/mobipocket/android/net/AndroidHttpConnection;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 307
    :cond_1
    return-void
.end method
