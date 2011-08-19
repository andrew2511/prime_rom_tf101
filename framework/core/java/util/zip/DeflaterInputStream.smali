.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private available:Z

.field protected final buf:[B

.field private closed:Z

.field protected final def:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 49
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x400

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .registers 4
    .parameter "in"
    .parameter "deflater"

    .prologue
    .line 61
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .registers 5
    .parameter "in"
    .parameter "deflater"
    .parameter "bufferSize"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    .line 75
    if-eqz p1, :cond_d

    if-nez p2, :cond_13

    .line 76
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_13
    if-gtz p3, :cond_1b

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1b
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    .line 82
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    .line 83
    return-void
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_c
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
    .line 182
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    .line 183
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

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
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    .line 92
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 93
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "limit"

    .prologue
    .line 200
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 104
    new-array v0, v1, [B

    .line 105
    .local v0, result:[B
    invoke-virtual {p0, v0, v3, v1}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_d

    move v1, v2

    .line 108
    :goto_c
    return v1

    :cond_d
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_c
.end method

.method public read([BII)I
    .registers 13
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 119
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    .line 120
    array-length v3, p1

    invoke-static {v3, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 121
    if-nez p3, :cond_d

    move v3, v7

    .line 151
    :goto_c
    return v3

    .line 125
    :cond_d
    iget-boolean v3, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-nez v3, :cond_13

    move v3, v8

    .line 126
    goto :goto_c

    .line 129
    :cond_13
    const/4 v2, 0x0

    .line 130
    .local v2, count:I
    :goto_14
    if-ge v2, p3, :cond_48

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_48

    .line 131
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 133
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 134
    .local v1, bytesRead:I
    if-ne v1, v8, :cond_4f

    .line 135
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 140
    .end local v1           #bytesRead:I
    :cond_35
    :goto_35
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v5, v5

    sub-int v6, p3, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 141
    .local v0, bytesDeflated:I
    if-ne v0, v8, :cond_57

    .line 147
    .end local v0           #bytesDeflated:I
    :cond_48
    if-nez v2, :cond_4d

    .line 148
    const/4 v2, -0x1

    .line 149
    iput-boolean v7, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    :cond_4d
    move v3, v2

    .line 151
    goto :goto_c

    .line 137
    .restart local v1       #bytesRead:I
    :cond_4f
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v3, v4, v7, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_35

    .line 144
    .end local v1           #bytesRead:I
    .restart local v0       #bytesDeflated:I
    :cond_57
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    add-int v4, p2, v2

    invoke-static {v3, v7, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    add-int/2addr v2, v0

    .line 146
    goto :goto_14
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 162
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
