.class public Ltwitter4j/internal/http/HttpResponseImpl;
.super Ltwitter4j/internal/http/HttpResponse;
.source "HttpResponseImpl.java"


# instance fields
.field private con:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 57
    invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;-><init>()V

    .line 58
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->responseAsString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ltwitter4j/internal/http/HttpClientConfiguration;)V
    .locals 2
    .parameter "con"
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p2}, Ltwitter4j/internal/http/HttpResponse;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V

    .line 44
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->statusCode:I

    .line 46
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 49
    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    return-void
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
