.class public abstract Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.source "StreamBasedParserBase.java"


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .parameter "ctxt"
    .parameter "features"
    .parameter "in"
    .parameter "inputBuffer"
    .parameter "start"
    .parameter "end"
    .parameter "bufferRecyclable"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 64
    iput-object p3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 65
    iput-object p4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 66
    iput p5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 67
    iput p6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 68
    iput-boolean p7, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    .line 69
    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 114
    :cond_2
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    .line 126
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 128
    .local v0, buf:[B
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 130
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 133
    .end local v0           #buf:[B
    :cond_0
    return-void
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    .line 82
    iget v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    .line 84
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget-object v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 86
    .local v0, count:I
    if-lez v0, :cond_0

    .line 87
    iput v5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 88
    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 89
    const/4 v1, 0x1

    .line 98
    .end local v0           #count:I
    :goto_0
    return v1

    .line 92
    .restart local v0       #count:I
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    .line 94
    if-nez v0, :cond_1

    .line 95
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #count:I
    :cond_1
    move v1, v5

    .line 98
    goto :goto_0
.end method
