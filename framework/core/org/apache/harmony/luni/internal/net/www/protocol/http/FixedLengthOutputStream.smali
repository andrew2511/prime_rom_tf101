.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;
.source "FixedLengthOutputStream.java"


# instance fields
.field private bytesRemaining:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3
    .parameter "socketOut"
    .parameter "bytesRemaining"

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 32
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 60
    :cond_4
    return-void

    .line 56
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->closed:Z

    .line 57
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    if-lez v0, :cond_4

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 50
    :goto_4
    return-void

    .line 49
    :cond_5
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_4
.end method

.method public write([BII)V
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
    .line 36
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->checkNotClosed()V

    .line 37
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 38
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    if-le p3, v0, :cond_30

    .line 39
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_30
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;->bytesRemaining:I

    .line 43
    return-void
.end method
