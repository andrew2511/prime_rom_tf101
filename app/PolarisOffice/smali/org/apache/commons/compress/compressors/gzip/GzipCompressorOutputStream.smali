.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "GzipCompressorOutputStream.java"


# instance fields
.field private final out:Ljava/util/zip/GZIPOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 32
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/util/zip/GZIPOutputStream;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 60
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write(I)V

    .line 38
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 47
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "from"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 56
    return-void
.end method
