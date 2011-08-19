.class final Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;
.source "ChunkedOutputStream.java"


# static fields
.field private static final CRLF:[B

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B


# instance fields
.field private final bufferedChunk:Ljava/io/ByteArrayOutputStream;

.field private final hex:[B

.field private final maxChunkLength:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->CRLF:[B

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->HEX_DIGITS:[B

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->FINAL_CHUNK:[B

    return-void

    .line 30
    :array_1a
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 31
    nop

    :array_20
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 34
    :array_2c
    .array-data 0x1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .parameter "socketOut"
    .parameter "maxChunkLength"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;-><init>()V

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->hex:[B

    .line 45
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->dataLength(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->maxChunkLength:I

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    .line 48
    return-void

    .line 37
    nop

    :array_22
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method private dataLength(I)I
    .registers 5
    .parameter "dataPlusHeaderLength"

    .prologue
    .line 56
    const/4 v0, 0x4

    .line 57
    .local v0, headerLength:I
    sub-int v1, p1, v0

    .local v1, i:I
    :goto_3
    if-lez v1, :cond_a

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 57
    shr-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 60
    :cond_a
    sub-int v2, p1, v0

    return v2
.end method

.method private writeBufferedChunkToSocket()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 124
    .local v0, size:I
    if-gtz v0, :cond_9

    .line 132
    :goto_8
    return-void

    .line 128
    :cond_9
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->writeHex(I)V

    .line 129
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 130
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 131
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_8
.end method

.method private writeHex(I)V
    .registers 6
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/16 v0, 0x8

    .line 100
    .local v0, cursor:I
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->hex:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->HEX_DIGITS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 101
    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    .line 102
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->hex:[B

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->hex:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 103
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 120
    :goto_5
    monitor-exit p0

    return-void

    .line 117
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->closed:Z

    .line 118
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->FINAL_CHUNK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 114
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 111
    :goto_5
    monitor-exit p0

    return-void

    .line 109
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 106
    :catchall_10
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
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->checkNotClosed()V

    .line 66
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 68
    :goto_8
    if-lez p3, :cond_4d

    .line 71
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-gtz v1, :cond_16

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->maxChunkLength:I

    if-ge p3, v1, :cond_38

    .line 73
    :cond_16
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->maxChunkLength:I

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    .local v0, numBytesWritten:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 76
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->maxChunkLength:I

    if-ne v1, v2, :cond_35

    .line 77
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 88
    :cond_35
    :goto_35
    add-int/2addr p2, v0

    .line 89
    sub-int/2addr p3, v0

    .line 90
    goto :goto_8

    .line 82
    .end local v0           #numBytesWritten:I
    :cond_38
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->maxChunkLength:I

    .line 83
    .restart local v0       #numBytesWritten:I
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->writeHex(I)V

    .line 84
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 85
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_35

    .line 65
    .end local v0           #numBytesWritten:I
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 91
    :cond_4d
    monitor-exit p0

    return-void
.end method
