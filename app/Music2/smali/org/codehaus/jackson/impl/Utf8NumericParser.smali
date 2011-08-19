.class public abstract Lorg/codehaus/jackson/impl/Utf8NumericParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8NumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .parameter "pc"
    .parameter "features"
    .parameter "in"
    .parameter "inputBuffer"
    .parameter "start"
    .parameter "end"
    .parameter "bufferRecyclable"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .locals 11
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 60
    .local v5, outBuf:[C
    const/4 v6, 0x0

    .line 61
    .local v6, outPtr:I
    const/16 v8, 0x2d

    if-ne p1, v8, :cond_e

    const/4 v8, 0x1

    move v4, v8

    .line 64
    .local v4, negative:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 65
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    const/16 v8, 0x2d

    aput-char v8, v5, v6

    .line 67
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 70
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 73
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_1
    const/4 v3, 0x0

    .line 74
    .local v3, intLen:I
    const/4 v0, 0x0

    .line 79
    .local v0, eof:Z
    :goto_1
    const/16 v8, 0x30

    if-lt p1, v8, :cond_19

    const/16 v8, 0x39

    if-le p1, v8, :cond_f

    move v7, v6

    .line 103
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :goto_2
    if-nez v3, :cond_2

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 107
    :cond_2
    const/4 v2, 0x0

    .line 109
    .local v2, fractLen:I
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_18

    .line 110
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v7

    .line 114
    :goto_3
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_13

    .line 115
    const/4 v0, 0x1

    .line 130
    :cond_3
    if-nez v2, :cond_4

    .line 131
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 135
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .line 136
    .local v1, expLen:I
    const/16 v8, 0x65

    if-eq p1, v8, :cond_5

    const/16 v8, 0x45

    if-ne p1, v8, :cond_c

    .line 137
    :cond_5
    array-length v8, v5

    if-lt v6, v8, :cond_6

    .line 138
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 139
    const/4 v6, 0x0

    .line 141
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 143
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_7

    .line 144
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 146
    :cond_7
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 148
    const/16 v8, 0x2d

    if-eq p1, v8, :cond_8

    const/16 v8, 0x2b

    if-ne p1, v8, :cond_17

    .line 149
    :cond_8
    array-length v8, v5

    if-lt v7, v8, :cond_16

    .line 150
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 151
    const/4 v6, 0x0

    .line 153
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_5
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 155
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_9

    .line 156
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 158
    :cond_9
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 162
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_6
    const/16 v8, 0x39

    if-gt p1, v8, :cond_b

    const/16 v8, 0x30

    if-lt p1, v8, :cond_b

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 164
    array-length v8, v5

    if-lt v6, v8, :cond_a

    .line 165
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 166
    const/4 v6, 0x0

    .line 168
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 169
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_15

    .line 170
    const/4 v0, 0x1

    move v6, v7

    .line 176
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_b
    if-nez v1, :cond_c

    .line 177
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 182
    :cond_c
    if-nez v0, :cond_d

    .line 183
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    .line 185
    :cond_d
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 188
    invoke-virtual {p0, v4, v3, v2, v1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 61
    .end local v0           #eof:Z
    .end local v1           #expLen:I
    .end local v2           #fractLen:I
    .end local v3           #intLen:I
    .end local v4           #negative:Z
    :cond_e
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_0

    .line 82
    .restart local v0       #eof:Z
    .restart local v3       #intLen:I
    .restart local v4       #negative:Z
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 84
    const/4 v8, 0x2

    if-ne v3, v8, :cond_10

    .line 85
    const/4 v8, 0x1

    sub-int v8, v6, v8

    aget-char v8, v5, v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_10

    .line 86
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 89
    :cond_10
    array-length v8, v5

    if-lt v6, v8, :cond_11

    .line 90
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 91
    const/4 v6, 0x0

    .line 93
    :cond_11
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 94
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_12

    .line 96
    const/4 p1, 0x0

    .line 97
    const/4 v0, 0x1

    .line 98
    goto/16 :goto_2

    .line 100
    :cond_12
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_1

    .line 118
    .restart local v2       #fractLen:I
    :cond_13
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 119
    const/16 v8, 0x30

    if-lt p1, v8, :cond_3

    const/16 v8, 0x39

    if-gt p1, v8, :cond_3

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    array-length v8, v5

    if-lt v6, v8, :cond_14

    .line 124
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 125
    const/4 v6, 0x0

    .line 127
    :cond_14
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_3

    .line 173
    .end local v6           #outPtr:I
    .restart local v1       #expLen:I
    .restart local v7       #outPtr:I
    :cond_15
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_16
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_5

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_17
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_6

    .end local v1           #expLen:I
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_18
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_4

    .end local v2           #fractLen:I
    :cond_19
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto/16 :goto_2
.end method
