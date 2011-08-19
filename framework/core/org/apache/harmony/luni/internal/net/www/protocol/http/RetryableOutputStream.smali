.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;
.source "RetryableOutputStream.java"


# instance fields
.field private final content:Ljava/io/ByteArrayOutputStream;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;-><init>()V

    .line 34
    iput p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3f

    if-eqz v0, :cond_7

    .line 52
    :cond_5
    monitor-exit p0

    return-void

    .line 47
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->closed:Z

    .line 48
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    if-ge v0, v1, :cond_5

    .line 49
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3f

    .line 44
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contentLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->close()V

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 65
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
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
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->checkNotClosed()V

    .line 57
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 58
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_3c

    .line 59
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_39

    .line 56
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 61
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    .line 62
    monitor-exit p0

    return-void
.end method

.method public writeToSocket(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "socketOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 71
    return-void
.end method
