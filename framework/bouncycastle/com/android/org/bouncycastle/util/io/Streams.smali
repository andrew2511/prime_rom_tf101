.class public final Lcom/android/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/16 v0, 0x200

    sput v0, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Ljava/io/InputStream;)V
    .registers 4
    .parameter "inStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    sget v1, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v1, [B

    .line 16
    .local v0, bs:[B
    :cond_4
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_4

    .line 19
    return-void
.end method

.method public static pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "inStr"
    .parameter "outStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    sget v2, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v2, [B

    .line 64
    .local v0, bs:[B
    :goto_5
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, numRead:I
    if-ltz v1, :cond_10

    .line 66
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 68
    :cond_10
    return-void
.end method

.method public static pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 11
    .parameter "inStr"
    .parameter "limit"
    .parameter "outStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .local v2, total:J
    sget v4, Lcom/android/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v0, v4, [B

    .line 76
    .local v0, bs:[B
    :goto_7
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, numRead:I
    if-ltz v1, :cond_20

    .line 78
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 79
    cmp-long v4, v2, p1

    if-lez v4, :cond_1c

    .line 81
    new-instance v4, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;

    const-string v5, "Data Overflow"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_1c
    invoke-virtual {p3, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 85
    :cond_20
    return-wide v2
.end method

.method public static readAll(Ljava/io/InputStream;)[B
    .registers 3
    .parameter "inStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readAllLimited(Ljava/io/InputStream;I)[B
    .registers 5
    .parameter "inStr"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .parameter "inStr"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .registers 8
    .parameter "inStr"
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, totalRead:I
    :goto_1
    if-ge v1, p3, :cond_d

    .line 49
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 50
    .local v0, numRead:I
    if-gez v0, :cond_e

    .line 56
    .end local v0           #numRead:I
    :cond_d
    return v1

    .line 54
    .restart local v0       #numRead:I
    :cond_e
    add-int/2addr v1, v0

    .line 55
    goto :goto_1
.end method
