.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V
    .registers 6
    .parameter "is"
    .parameter "cacheRequest"
    .parameter "httpURLConnection"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Ljava/net/CacheRequest;)V

    .line 33
    iput p4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    .line 34
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_d

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->endOfInput(Z)V

    .line 37
    :cond_d
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->checkNotClosed()V

    .line 60
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

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
    .line 64
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 71
    :cond_4
    :goto_4
    return-void

    .line 67
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->closed:Z

    .line 68
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    goto :goto_4
.end method

.method public read([BII)I
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 40
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 41
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->checkNotClosed()V

    .line 42
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_e

    move v1, v3

    .line 55
    :goto_d
    return v1

    .line 45
    :cond_e
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 46
    .local v0, read:I
    if-ne v0, v3, :cond_27

    .line 47
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 48
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_27
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    .line 51
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->cacheWrite([BII)V

    .line 52
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_37

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;->endOfInput(Z)V

    :cond_37
    move v1, v0

    .line 55
    goto :goto_d
.end method
