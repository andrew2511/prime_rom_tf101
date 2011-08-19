.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;
.source "ChunkedInputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final MIN_LAST_CHUNK_LENGTH:I = 0x0

.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "\r\n0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V
    .registers 5
    .parameter "is"
    .parameter "cacheRequest"
    .parameter "httpURLConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p3, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;Ljava/net/CacheRequest;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 36
    return-void
.end method

.method private readChunkSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 75
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v3, v4, :cond_b

    .line 76
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 78
    :cond_b
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, chunkSizeString:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 80
    .local v2, index:I
    if-eq v2, v4, :cond_1d

    .line 81
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_29} :catch_39

    .line 88
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v3, :cond_38

    .line 89
    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 90
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->httpURLConnection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readHeaders()V

    .line 91
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->endOfInput(Z)V

    .line 93
    :cond_38
    return-void

    .line 85
    :catch_39
    move-exception v3

    move-object v1, v3

    .line 86
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a hex chunk size, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 96
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->checkNotClosed()V

    .line 97
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    :goto_4
    return-void

    .line 105
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->closed:Z

    .line 106
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->unexpectedEndOfInput()V

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

    .line 39
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 40
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->checkNotClosed()V

    .line 42
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v1, :cond_e

    move v1, v3

    .line 70
    :goto_d
    return v1

    .line 45
    :cond_e
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v1, :cond_16

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v1, v3, :cond_1f

    .line 46
    :cond_16
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->readChunkSize()V

    .line 47
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v1, :cond_1f

    move v1, v3

    .line 48
    goto :goto_d

    .line 51
    :cond_1f
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 52
    .local v0, read:I
    if-ne v0, v3, :cond_38

    .line 53
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->unexpectedEndOfInput()V

    .line 54
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_38
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 57
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->cacheWrite([BII)V

    .line 66
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v1, :cond_51

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    sget v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    if-lt v1, v2, :cond_51

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;->readChunkSize()V

    :cond_51
    move v1, v0

    .line 70
    goto :goto_d
.end method
