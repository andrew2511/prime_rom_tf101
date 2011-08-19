.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"


# instance fields
.field private final in:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 43
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    .line 44
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .parameter "signature"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    move v0, v2

    .line 100
    :goto_0
    return v0

    .line 92
    :cond_0
    aget-byte v0, p0, v2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    aget-byte v0, p0, v3

    const/16 v1, -0x75

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 97
    goto :goto_0

    :cond_2
    move v0, v3

    .line 100
    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v0

    .line 49
    .local v0, read:I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 50
    return v0

    .line 49
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v0

    .line 60
    .local v0, read:I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 61
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "from"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v0

    .line 71
    .local v0, read:I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 72
    return v0
.end method
