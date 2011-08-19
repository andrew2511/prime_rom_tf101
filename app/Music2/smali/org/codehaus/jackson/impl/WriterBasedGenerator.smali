.class public final Lorg/codehaus/jackson/impl/WriterBasedGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field static final HEX_CHARS:[C = null

.field static final SHORT_WRITE:I = 0x20


# instance fields
.field protected _entityBuffer:[C

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _outputBuffer:[C

.field protected _outputEnd:I

.field protected _outputHead:I

.field protected _outputTail:I

.field protected final _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 1
    .parameter "ctxt"
    .parameter "features"
    .parameter "codec"
    .parameter "w"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 43
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 49
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 73
    iput-object p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 74
    iput-object p4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    .line 75
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 77
    return-void
.end method

.method private _appendSingleEscape(I[CI)V
    .locals 4
    .parameter "escCode"
    .parameter "buf"
    .parameter "ptr"

    .prologue
    const/16 v3, 0x5c

    const/16 v2, 0x30

    .line 1029
    if-gez p1, :cond_0

    .line 1030
    add-int/lit8 v1, p1, 0x1

    neg-int v0, v1

    .line 1031
    .local v0, value:I
    aput-char v3, p2, p3

    .line 1032
    add-int/lit8 p3, p3, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, p3

    .line 1034
    add-int/lit8 p3, p3, 0x1

    aput-char v2, p2, p3

    .line 1035
    add-int/lit8 p3, p3, 0x1

    aput-char v2, p2, p3

    .line 1036
    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v2, v0, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 1037
    add-int/lit8 p3, p3, 0x1

    sget-object v1, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v2, v0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 1042
    .end local v0           #value:I
    :goto_0
    return-void

    .line 1039
    :cond_0
    aput-char v3, p2, p3

    .line 1040
    add-int/lit8 v1, p3, 0x1

    int-to-char v2, p1

    aput-char v2, p2, v1

    goto :goto_0
.end method

.method private _writeLongString(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 815
    .local v3, textLen:I
    const/4 v1, 0x0

    .line 817
    .local v1, offset:I
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 818
    .local v0, max:I
    add-int v4, v1, v0

    if-le v4, v3, :cond_1

    sub-int v4, v3, v1

    move v2, v4

    .line 820
    .local v2, segmentLen:I
    :goto_0
    add-int v4, v1, v2

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 821
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSegment(I)V

    .line 822
    add-int/2addr v1, v2

    .line 823
    if-lt v1, v3, :cond_0

    .line 824
    return-void

    .end local v2           #segmentLen:I
    :cond_1
    move v2, v0

    .line 818
    goto :goto_0
.end method

.method private final _writeNull()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x6c

    .line 987
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 988
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 990
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 991
    .local v1, ptr:I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 992
    .local v0, buf:[C
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    .line 993
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 994
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 995
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 996
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 997
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .locals 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 405
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 409
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 410
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 411
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .locals 4
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 430
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 434
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 435
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 436
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 516
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 521
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 522
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 524
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 525
    return-void
.end method

.method private final _writeSegment(I)V
    .locals 10
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v2

    .line 838
    .local v2, escCodes:[I
    array-length v3, v2

    .line 840
    .local v3, escLen:I
    const/4 v6, 0x0

    .line 843
    .local v6, ptr:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 845
    move v7, v6

    .line 847
    .local v7, start:I
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v0, v8, v6

    .line 848
    .local v0, c:C
    if-ge v0, v3, :cond_2

    aget v8, v2, v0

    if-eqz v8, :cond_2

    .line 860
    :goto_1
    sub-int v4, v6, v7

    .line 861
    .local v4, flushLen:I
    if-lez v4, :cond_3

    .line 862
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v8, v9, v7, v4}, Ljava/io/Writer;->write([CII)V

    .line 863
    if-lt v6, p1, :cond_3

    .line 884
    .end local v0           #c:C
    .end local v4           #flushLen:I
    .end local v7           #start:I
    :cond_1
    return-void

    .line 851
    .restart local v0       #c:C
    .restart local v7       #start:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    goto :goto_1

    .line 871
    .restart local v4       #flushLen:I
    :cond_3
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    aget-char v8, v8, v6

    aget v1, v2, v8

    .line 872
    .local v1, escCode:I
    add-int/lit8 v6, v6, 0x1

    .line 873
    if-gez v1, :cond_4

    const/4 v8, 0x6

    move v5, v8

    .line 875
    .local v5, needLen:I
    :goto_2
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v5, v8, :cond_5

    .line 876
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    goto :goto_0

    .line 873
    .end local v5           #needLen:I
    :cond_4
    const/4 v8, 0x2

    move v5, v8

    goto :goto_2

    .line 879
    .restart local v5       #needLen:I
    :cond_5
    sub-int/2addr v6, v5

    .line 880
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v1, v8, v6}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    goto :goto_0
.end method

.method private _writeSingleEscape(I)V
    .locals 8
    .parameter "escCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x30

    const/4 v6, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1006
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_entityBuffer:[C

    .line 1007
    .local v0, buf:[C
    if-nez v0, :cond_0

    .line 1008
    new-array v0, v6, [C

    .line 1009
    const/16 v2, 0x5c

    aput-char v2, v0, v5

    .line 1010
    aput-char v7, v0, v4

    .line 1011
    const/4 v2, 0x3

    aput-char v7, v0, v2

    .line 1014
    :cond_0
    if-gez p1, :cond_1

    .line 1015
    add-int/lit8 v2, p1, 0x1

    neg-int v1, v2

    .line 1016
    .local v1, value:I
    const/16 v2, 0x75

    aput-char v2, v0, v3

    .line 1018
    const/4 v2, 0x4

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 1019
    const/4 v2, 0x5

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->HEX_CHARS:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 1020
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 1025
    .end local v1           #value:I
    :goto_0
    return-void

    .line 1022
    :cond_1
    int-to-char v2, p1

    aput-char v2, v0, v3

    .line 1023
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method private _writeString(Ljava/lang/String;)V
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 743
    .local v6, len:I
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v6, v9, :cond_1

    .line 744
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeLongString(Ljava/lang/String;)V

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v9, v6

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v9, v10, :cond_2

    .line 751
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 753
    :cond_2
    const/4 v9, 0x0

    iget-object v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v11, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v9, v6, v10, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 756
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int v1, v9, v6

    .line 757
    .local v1, end:I
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v3

    .line 758
    .local v3, escCodes:[I
    array-length v4, v3

    .line 761
    .local v4, escLen:I
    :goto_1
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-ge v9, v1, :cond_0

    .line 765
    :cond_3
    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v0, v9, v10

    .line 766
    .local v0, c:C
    if-ge v0, v4, :cond_5

    aget v9, v3, v0

    if-eqz v9, :cond_5

    .line 778
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v5, v9, v10

    .line 779
    .local v5, flushLen:I
    if-lez v5, :cond_4

    .line 780
    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v11, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    invoke-virtual {v9, v10, v11, v5}, Ljava/io/Writer;->write([CII)V

    .line 786
    :cond_4
    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aget-char v9, v9, v10

    aget v2, v3, v9

    .line 787
    .local v2, escCode:I
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 788
    if-gez v2, :cond_6

    const/4 v9, 0x6

    move v7, v9

    .line 790
    .local v7, needLen:I
    :goto_2
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v7, v9, :cond_7

    .line 791
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iput v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 792
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeSingleEscape(I)V

    goto :goto_1

    .line 769
    .end local v2           #escCode:I
    .end local v5           #flushLen:I
    .end local v7           #needLen:I
    :cond_5
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-lt v9, v1, :cond_3

    goto :goto_0

    .line 788
    .restart local v2       #escCode:I
    .restart local v5       #flushLen:I
    :cond_6
    const/4 v9, 0x2

    move v7, v9

    goto :goto_2

    .line 795
    .restart local v7       #needLen:I
    :cond_7
    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v8, v9, v7

    .line 796
    .local v8, ptr:I
    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 797
    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-direct {p0, v2, v9, v8}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    goto :goto_1
.end method

.method private _writeString([CII)V
    .locals 9
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 897
    add-int/2addr p3, p2

    .line 898
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getOutputEscapes()[I

    move-result-object v2

    .line 899
    .local v2, escCodes:[I
    array-length v3, v2

    .line 900
    .local v3, escLen:I
    :goto_0
    if-ge p2, p3, :cond_3

    .line 901
    move v6, p2

    .line 904
    .local v6, start:I
    :cond_0
    aget-char v0, p1, p2

    .line 905
    .local v0, c:C
    if-ge v0, v3, :cond_4

    aget v7, v2, v0

    if-eqz v7, :cond_4

    .line 914
    :goto_1
    sub-int v5, p2, v6

    .line 915
    .local v5, newAmount:I
    const/16 v7, 0x20

    if-ge v5, v7, :cond_5

    .line 917
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v5

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v7, v8, :cond_1

    .line 918
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 920
    :cond_1
    if-lez v5, :cond_2

    .line 921
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v6, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v5

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 929
    :cond_2
    :goto_2
    if-lt p2, p3, :cond_6

    .line 942
    .end local v0           #c:C
    .end local v5           #newAmount:I
    .end local v6           #start:I
    :cond_3
    return-void

    .line 908
    .restart local v0       #c:C
    .restart local v6       #start:I
    :cond_4
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    goto :goto_1

    .line 925
    .restart local v5       #newAmount:I
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 926
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v7, p1, v6, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 933
    :cond_6
    aget-char v7, p1, p2

    aget v1, v2, v7

    .line 934
    .local v1, escCode:I
    add-int/lit8 p2, p2, 0x1

    .line 935
    if-gez v1, :cond_8

    const/4 v7, 0x6

    move v4, v7

    .line 936
    .local v4, needLen:I
    :goto_3
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v4

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v7, v8, :cond_7

    .line 937
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 939
    :cond_7
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-direct {p0, v1, v7, v8}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_appendSingleEscape(I[CI)V

    .line 940
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v7, v4

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 935
    .end local v4           #needLen:I
    :cond_8
    const/4 v7, 0x2

    move v4, v7

    goto :goto_3
.end method

.method private writeRawLong(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 335
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v3, v4, v5

    .line 337
    .local v3, room:I
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 338
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 339
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 340
    move v2, v3

    .line 341
    .local v2, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v3

    .line 343
    .local v1, len:I
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-le v1, v4, :cond_0

    .line 344
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    .line 345
    .local v0, amount:I
    add-int v4, v2, v0

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 346
    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 347
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 348
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 349
    add-int/2addr v2, v0

    .line 350
    sub-int/2addr v1, v0

    .line 351
    goto :goto_0

    .line 353
    .end local v0           #amount:I
    :cond_0
    add-int v4, v2, v1

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {p1, v2, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 354
    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 355
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 356
    return-void
.end method


# virtual methods
.method protected final _flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    sub-int v0, v2, v3

    .line 1047
    .local v0, len:I
    if-lez v0, :cond_0

    .line 1048
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    .line 1049
    .local v1, offset:I
    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputHead:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 1050
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1052
    .end local v1           #offset:I
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 722
    .local v0, buf:[C
    if-eqz v0, :cond_0

    .line 723
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 724
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 726
    :cond_0
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .locals 1
    .parameter "typeMsg"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 639
    packed-switch p2, :pswitch_data_0

    .line 658
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cantHappen()V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 641
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 644
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 647
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 651
    :pswitch_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .locals 4
    .parameter "typeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v1

    .line 605
    .local v1, status:I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_reportError(Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-nez v2, :cond_2

    .line 610
    packed-switch v1, :pswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 612
    :pswitch_0
    const/16 v0, 0x2c

    .line 624
    .local v0, c:C
    :goto_1
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_1

    .line 625
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 627
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v0, v2, v3

    .line 628
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0

    .line 615
    .end local v0           #c:C
    :pswitch_1
    const/16 v0, 0x3a

    .line 616
    .restart local v0       #c:C
    goto :goto_1

    .line 618
    .end local v0           #c:C
    :pswitch_2
    const/16 v0, 0x20

    .line 619
    .restart local v0       #c:C
    goto :goto_1

    .line 632
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected _writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 9
    .parameter "b64variant"
    .parameter "input"
    .parameter "inputPtr"
    .parameter "inputEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 948
    const/4 v6, 0x3

    sub-int v4, p4, v6

    .line 950
    .local v4, safeInputEnd:I
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    const/4 v7, 0x6

    sub-int v5, v6, v7

    .line 951
    .local v5, safeOutputEnd:I
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    .local v1, chunksBeforeLF:I
    move v3, p3

    .line 954
    .end local p3
    .local v3, inputPtr:I
    :goto_0
    if-gt v3, v4, :cond_2

    .line 955
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_0

    .line 956
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 959
    :cond_0
    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x8

    .line 960
    .local v0, b24:I
    add-int/lit8 v3, p3, 0x1

    .end local p3
    .restart local v3       #inputPtr:I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 961
    shl-int/lit8 v6, v0, 0x8

    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v7, p2, v3

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 962
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v6, v7}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Chunk(I[CI)I

    move-result v6

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 963
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    .line 965
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x5c

    aput-char v8, v6, v7

    .line 966
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v6, v7

    .line 967
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getMaxLineLength()I

    move-result v6

    shr-int/lit8 v1, v6, 0x2

    :cond_1
    move v3, p3

    .line 969
    .end local p3
    .restart local v3       #inputPtr:I
    goto :goto_0

    .line 972
    .end local v0           #b24:I
    :cond_2
    sub-int v2, p4, v3

    .line 973
    .local v2, inputLeft:I
    if-lez v2, :cond_5

    .line 974
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    if-le v6, v5, :cond_3

    .line 975
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 977
    :cond_3
    add-int/lit8 p3, v3, 0x1

    .end local v3           #inputPtr:I
    .restart local p3
    aget-byte v6, p2, v3

    shl-int/lit8 v0, v6, 0x10

    .line 978
    .restart local v0       #b24:I
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 979
    add-int/lit8 v3, p3, 0x1

    .end local p3
    .restart local v3       #inputPtr:I
    aget-byte v6, p2, p3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    move p3, v3

    .line 981
    .end local v3           #inputPtr:I
    .restart local p3
    :cond_4
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v0, v2, v6, v7}, Lorg/codehaus/jackson/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result v6

    iput v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 983
    .end local v0           #b24:I
    :goto_1
    return-void

    .end local p3
    .restart local v3       #inputPtr:I
    :cond_5
    move p3, v3

    .end local v3           #inputPtr:I
    .restart local p3
    goto :goto_1
.end method

.method protected _writeEndArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 103
    return-void
.end method

.method protected _writeEndObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 123
    return-void
.end method

.method protected _writeFieldName(Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 158
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 137
    :cond_1
    if-eqz p2, :cond_2

    .line 138
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 144
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 152
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 155
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 157
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .locals 4
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 167
    if-eqz p2, :cond_2

    .line 168
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 173
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 178
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 182
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 186
    :goto_1
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected _writeStartArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 89
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 93
    return-void
.end method

.method protected _writeStartObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    .line 113
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 687
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    if-eqz v1, :cond_1

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 691
    .local v0, ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndArray()V

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeEndObject()V

    goto :goto_0

    .line 700
    .end local v0           #ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 708
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 709
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 715
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_releaseBuffers()V

    .line 716
    return-void

    .line 712
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 674
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 675
    return-void
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .parameter "b64variant"
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 368
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 370
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 374
    add-int v0, p3, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 376
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 380
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x65

    .line 531
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 532
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v2, v3, :cond_0

    .line 533
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 535
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 536
    .local v1, ptr:I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    .line 537
    .local v0, buf:[C
    if-eqz p1, :cond_1

    .line 538
    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 539
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 540
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 541
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    .line 549
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 550
    return-void

    .line 543
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 544
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, v0, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 546
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, v0, v1

    .line 547
    add-int/lit8 v1, v1, 0x1

    aput-char v4, v0, v1

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 556
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 558
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 459
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 468
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(F)V
    .locals 1
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeString(Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 484
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(I)V
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 392
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 397
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedInt(I)V

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(J)V
    .locals 2
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 417
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedLong(J)V

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 424
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    goto :goto_0
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 506
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 493
    if-nez p1, :cond_0

    .line 494
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 444
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 445
    if-nez p1, :cond_0

    .line 446
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 563
    if-nez p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeNull()V

    .line 578
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_1

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize regular Java objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeRaw(C)V
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char p1, v0, v1

    .line 306
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 244
    .local v0, len:I
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 246
    .local v1, room:I
    if-nez v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 248
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v1, v2, v3

    .line 251
    :cond_0
    if-lt v1, v0, :cond_1

    .line 252
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 253
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 264
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 266
    .local v0, room:I
    if-ge v0, p3, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 268
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 271
    :cond_0
    if-lt v0, p3, :cond_1

    .line 272
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 273
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRawLong(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeRaw([CII)V
    .locals 3
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 284
    const/16 v1, 0x20

    if-ge p3, v1, :cond_1

    .line 285
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    sub-int v0, v1, v2

    .line 286
    .local v0, room:I
    if-le p3, v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 289
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    .line 296
    .end local v0           #room:I
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 295
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw(Ljava/lang/String;II)V

    .line 322
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeRaw([CII)V

    .line 330
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 198
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 199
    if-nez p1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeNull()V

    .line 213
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 207
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_2

    .line 210
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 212
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public writeString([CII)V
    .locals 4
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 219
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_writeString([CII)V

    .line 226
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_flushBuffer()V

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 230
    return-void
.end method

.method public final writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .locals 2
    .parameter "rootNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->writeNull()V

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can not serialize JsonNode-based trees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method
