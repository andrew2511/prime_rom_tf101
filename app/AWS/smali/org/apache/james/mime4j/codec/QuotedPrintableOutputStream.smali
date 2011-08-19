.class public Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "QuotedPrintableOutputStream.java"


# instance fields
.field private closed:Z

.field private encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .parameter "out"
    .parameter "binary"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    .line 37
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    .line 56
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    .line 61
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableOutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    .line 70
    return-void
.end method
