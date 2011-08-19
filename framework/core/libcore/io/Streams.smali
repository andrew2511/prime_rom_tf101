.class public final Llibcore/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, total:I
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 123
    .local v0, buffer:[B
    :goto_5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, c:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_12

    .line 124
    add-int/2addr v2, v1

    .line 125
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 127
    :cond_12
    return v2
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .registers 7
    .parameter "in"
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    if-nez p3, :cond_3

    .line 54
    :cond_2
    return-void

    .line 39
    :cond_3
    if-nez p0, :cond_d

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_d
    if-nez p1, :cond_17

    .line 43
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_17
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 46
    :goto_1b
    if-lez p3, :cond_2

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    .local v0, bytesRead:I
    if-gez v0, :cond_29

    .line 49
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 51
    :cond_29
    add-int/2addr p2, v0

    .line 52
    sub-int/2addr p3, v0

    .line 53
    goto :goto_1b
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 62
    .local v0, buffer:[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v2, bytes:Ljava/io/ByteArrayOutputStream;
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 65
    .local v1, byteCount:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    .line 66
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 68
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9
.end method

.method public static skipAll(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 75
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    return-void
.end method

.method public static skipByReading(Ljava/io/InputStream;J)J
    .registers 12
    .parameter "in"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v5, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 92
    .local v0, buffer:[B
    if-nez v0, :cond_f

    .line 93
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 96
    :cond_f
    const-wide/16 v2, 0x0

    .line 97
    .local v2, skipped:J
    :cond_11
    cmp-long v5, v2, p1

    if-gez v5, :cond_26

    .line 98
    sub-long v5, p1, v2

    array-length v7, v0

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v4, v5

    .line 99
    .local v4, toRead:I
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 100
    .local v1, read:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2c

    .line 110
    .end local v1           #read:I
    .end local v4           #toRead:I
    :cond_26
    :goto_26
    sget-object v5, Llibcore/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    return-wide v2

    .line 103
    .restart local v1       #read:I
    .restart local v4       #toRead:I
    :cond_2c
    int-to-long v5, v1

    add-long/2addr v2, v5

    .line 104
    if-ge v1, v4, :cond_11

    goto :goto_26
.end method
