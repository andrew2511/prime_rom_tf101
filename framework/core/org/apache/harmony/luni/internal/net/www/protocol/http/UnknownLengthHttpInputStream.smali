.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;
.source "UnknownLengthHttpInputStream.java"


# instance fields
.field private inputExhausted:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V
    .registers 4
    .parameter "is"
    .parameter "cacheRequest"
    .parameter "httpURLConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Ljava/net/CacheRequest;)V

    .line 33
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->checkNotClosed()V

    .line 53
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_8
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 64
    :cond_4
    :goto_4
    return-void

    .line 60
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->closed:Z

    .line 61
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-nez v0, :cond_4

    .line 62
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->unexpectedEndOfInput()V

    goto :goto_4
.end method

.method public read([BII)I
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 36
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 37
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->checkNotClosed()V

    .line 38
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-eqz v1, :cond_12

    :cond_10
    move v1, v2

    .line 48
    :goto_11
    return v1

    .line 41
    :cond_12
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 42
    .local v0, read:I
    if-ne v0, v2, :cond_23

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->endOfInput(Z)V

    move v1, v2

    .line 45
    goto :goto_11

    .line 47
    :cond_23
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;->cacheWrite([BII)V

    move v1, v0

    .line 48
    goto :goto_11
.end method
