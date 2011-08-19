.class abstract Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;
.source "AbstractHttpInputStream.java"


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field protected closed:Z

.field protected final httpURLConnection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

.field protected final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Ljava/net/CacheRequest;)V
    .registers 6
    .parameter "in"
    .parameter "httpURLConnection"
    .parameter "cacheRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->httpURLConnection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    .line 46
    if-eqz p3, :cond_16

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 49
    .local v0, cacheBody:Ljava/io/OutputStream;
    :goto_e
    if-nez v0, :cond_11

    .line 50
    const/4 p3, 0x0

    .line 53
    :cond_11
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    .line 54
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 55
    return-void

    .line 46
    .end local v0           #cacheBody:Ljava/io/OutputStream;
    :cond_16
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_e
.end method


# virtual methods
.method protected final cacheWrite([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    :cond_9
    return-void
.end method

.method protected final checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_c
    return-void
.end method

.method protected final endOfInput(Z)V
    .registers 3
    .parameter "reuseSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 87
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->httpURLConnection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->releaseSocket(Z)V

    .line 88
    return-void
.end method

.method public final read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 62
    new-array v0, v4, [B

    .line 63
    .local v0, buffer:[B
    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->read([BII)I

    move-result v1

    .line 64
    .local v1, count:I
    if-ne v1, v2, :cond_c

    :goto_b
    return v2

    :cond_c
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_b
.end method

.method protected final unexpectedEndOfInput()V
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 106
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;->httpURLConnection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->releaseSocket(Z)V

    .line 107
    return-void
.end method
