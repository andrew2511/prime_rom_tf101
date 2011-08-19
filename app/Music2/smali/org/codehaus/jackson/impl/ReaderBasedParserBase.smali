.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.source "ReaderBasedParserBase.java"


# instance fields
.field protected _inputBuffer:[C

.field protected _reader:Ljava/io/Reader;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 1
    .parameter "ctxt"
    .parameter "features"
    .parameter "r"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 54
    iput-object p3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 55
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 56
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
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    .line 115
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
    .line 127
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 129
    .local v0, buf:[C
    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    .line 131
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseTokenBuffer([C)V

    .line 133
    :cond_0
    return-void
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3
    .parameter "eofMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
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

    .line 68
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputProcessed:J

    .line 69
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_currInputRowStart:I

    .line 71
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputBuffer:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 73
    .local v0, count:I
    if-lez v0, :cond_0

    .line 74
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputPtr:I

    .line 75
    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    .line 76
    const/4 v1, 0x1

    .line 85
    .end local v0           #count:I
    :goto_0
    return v1

    .line 79
    .restart local v0       #count:I
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_closeInput()V

    .line 81
    if-nez v0, :cond_1

    .line 82
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reader returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;->_inputEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #count:I
    :cond_1
    move v1, v5

    .line 85
    goto :goto_0
.end method
