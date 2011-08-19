.class Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RAFStream"
.end annotation


# instance fields
.field mLength:J

.field mOffset:J

.field mSharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .registers 6
    .parameter "raf"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 399
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    .line 400
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 401
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 402
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 411
    new-array v0, v2, [B

    .line 412
    .local v0, singleByteBuf:[B
    invoke-virtual {p0, v0, v3, v2}, Ljava/util/zip/ZipFile$RAFStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_f

    .line 413
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    .line 415
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public read([BII)I
    .registers 12
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 422
    :try_start_3
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 423
    int-to-long v2, p3

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v6, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    .line 424
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 426
    :cond_1a
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 427
    .local v0, count:I
    if-lez v0, :cond_2b

    .line 428
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 429
    monitor-exit v1

    move v1, v0

    .line 431
    :goto_2a
    return v1

    :cond_2b
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_2a

    .line 433
    .end local v0           #count:I
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public skip(J)J
    .registers 7
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    .line 439
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long p1, v0, v2

    .line 441
    :cond_f
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 442
    return-wide p1
.end method
