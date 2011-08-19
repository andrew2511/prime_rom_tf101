.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field protected final buf:[B

.field private closed:Z

.field protected final inf:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 47
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .parameter "out"
    .parameter "inf"

    .prologue
    .line 59
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .registers 5
    .parameter "out"
    .parameter "inf"
    .parameter "bufferSize"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 73
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 74
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_10
    if-gtz p3, :cond_18

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_18
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    .line 80
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    .line 81
    return-void
.end method

.method private checkClosed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-eqz v0, :cond_a

    .line 159
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 161
    :cond_a
    return-void
.end method

.method private write()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 149
    :goto_0
    :try_start_0
    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    .local v1, inflated:I
    if-lez v1, :cond_1b

    .line 150
    iget-object v2, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_0

    .line 152
    .end local v1           #inflated:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 153
    .local v0, e:Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/util/zip/ZipException;

    invoke-direct {v2}, Ljava/util/zip/ZipException;-><init>()V

    throw v2

    .line 155
    .end local v0           #e:Ljava/util/zip/DataFormatException;
    .restart local v1       #inflated:I
    :cond_1b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_14

    .line 90
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    .line 91
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 92
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 95
    :cond_14
    return-void
.end method

.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    .line 111
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    .line 112
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V

    .line 100
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 101
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    .line 126
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->checkClosed()V

    .line 141
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 142
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 143
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->write()V

    .line 144
    return-void
.end method
