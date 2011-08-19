.class Lorg/scribe/model/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"


# instance fields
.field private bodyParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Ljava/net/HttpURLConnection;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Ljava/lang/String;

.field private querystringParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private verb:Lorg/scribe/model/Verb;


# direct methods
.method public constructor <init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
    .locals 1
    .parameter "verb"
    .parameter "url"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    .line 37
    iput-object p2, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    .line 41
    return-void
.end method

.method private createConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/scribe/model/Request;->querystringParams:Ljava/util/Map;

    invoke-static {v1, v2}, Lorg/scribe/utils/URLUtils;->appendParametersToQueryString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, effectiveUrl:Ljava/lang/String;
    iget-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method addBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .parameter "conn"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v0, "Content-Length"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 92
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 84
    iget-object v1, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    return-void

    .line 84
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addPayload(Ljava/lang/String;)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    iget-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method doSend()Lorg/scribe/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    invoke-virtual {v1}, Lorg/scribe/model/Verb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->addHeaders(Ljava/net/HttpURLConnection;)V

    .line 75
    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->PUT:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getBodyContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/scribe/model/Request;->addBody(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 79
    :cond_1
    new-instance v0, Lorg/scribe/model/Response;

    iget-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lorg/scribe/model/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public getBodyContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Ljava/util/Map;

    invoke-static {v0}, Lorg/scribe/utils/URLUtils;->formURLEncodeMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBodyParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryStringParams()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 152
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, query:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 156
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-lt v7, v6, :cond_1

    .line 162
    :cond_0
    iget-object v5, p0, Lorg/scribe/model/Request;->querystringParams:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    return-object v3

    .line 156
    :cond_1
    aget-object v2, v5, v7

    .line 158
    .local v2, param:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, pair:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 165
    .end local v1           #pair:[Ljava/lang/String;
    .end local v2           #param:Ljava/lang/String;
    .end local v3           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #query:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 167
    .local v0, mue:Ljava/net/MalformedURLException;
    new-instance v5, Lorg/scribe/exceptions/OAuthException;

    const-string v6, "Malformed URL"

    invoke-direct {v5, v6, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public getSanitizedUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    const-string v1, "\\?.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\:\\d{4}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerb()Lorg/scribe/model/Verb;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public send()Lorg/scribe/model/Response;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-direct {p0}, Lorg/scribe/model/Request;->createConnection()V

    .line 55
    invoke-virtual {p0}, Lorg/scribe/model/Request;->doSend()Lorg/scribe/model/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    const-string v2, "Problems while creating connection"

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setConnectTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 240
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 241
    return-void
.end method

.method setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 260
    iput-object p1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    .line 261
    return-void
.end method

.method public setReadTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    const-string v0, "@Request(%s %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
