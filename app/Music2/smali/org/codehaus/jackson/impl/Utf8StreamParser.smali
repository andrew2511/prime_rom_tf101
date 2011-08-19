.class public final Lorg/codehaus/jackson/impl/Utf8StreamParser;
.super Lorg/codehaus/jackson/impl/Utf8NumericParser;
.source "Utf8StreamParser.java"


# static fields
.field static final BYTE_LF:B = 0xat


# instance fields
.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _quadBuffer:[I

.field protected final _symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 8
    .parameter "ctxt"
    .parameter "features"
    .parameter "in"
    .parameter "codec"
    .parameter "sym"
    .parameter "inputBuffer"
    .parameter "start"
    .parameter "end"
    .parameter "bufferRecyclable"

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/Utf8NumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 53
    iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 54
    iput-object p5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 55
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1459
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1460
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1462
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1463
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 1464
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1466
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 6
    .parameter "c1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1472
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    .line 1473
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1475
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 1476
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1477
    .local v1, d:I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1478
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1480
    :cond_1
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1481
    .local v0, c:I
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_2

    .line 1482
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1484
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1485
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_3

    .line 1486
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1488
    :cond_3
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1489
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 6
    .parameter "c1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1495
    and-int/lit8 p1, p1, 0xf

    .line 1496
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1497
    .local v1, d:I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_0

    .line 1498
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1500
    :cond_0
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1501
    .local v0, c:I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1502
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_1

    .line 1503
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1505
    :cond_1
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1506
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .locals 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1516
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1517
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1519
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1520
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 1521
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1523
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1525
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1526
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1528
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1529
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 1530
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1532
    :cond_3
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1533
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 1534
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1536
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1537
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 1538
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1544
    :cond_5
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 222
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 224
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 229
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 226
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private _reportInvalidToken(Ljava/lang/String;)V
    .locals 6
    .parameter "matchedPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1213
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1214
    return-void

    .line 1204
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v3, v4

    .line 1205
    .local v1, i:I
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v3

    int-to-char v0, v3

    .line 1206
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1209
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1210
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final _skipCComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1297
    .local v1, codes:[I
    :cond_0
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1298
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1299
    .local v2, i:I
    aget v0, v1, v2

    .line 1300
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 1301
    sparse-switch v0, :sswitch_data_0

    .line 1316
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 1303
    :sswitch_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 1304
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1321
    .end local v0           #code:I
    .end local v2           #i:I
    :goto_1
    return-void

    .line 1309
    .restart local v0       #code:I
    .restart local v2       #i:I
    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1312
    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1320
    .end local v0           #code:I
    .end local v2           #i:I
    :cond_2
    const-string v3, " in a comment"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_1

    .line 1301
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 1273
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1277
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1278
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1280
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1281
    .local v0, c:I
    if-ne v0, v4, :cond_2

    .line 1282
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V

    .line 1288
    :goto_0
    return-void

    .line 1283
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1284
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V

    goto :goto_0

    .line 1286
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final _skipCppComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1328
    .local v1, codes:[I
    :cond_0
    :goto_0
    :sswitch_0
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1329
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1330
    .local v2, i:I
    aget v0, v1, v2

    .line 1331
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 1332
    sparse-switch v0, :sswitch_data_0

    .line 1343
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .line 1334
    :sswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    .line 1347
    .end local v0           #code:I
    .end local v2           #i:I
    :cond_2
    :goto_1
    return-void

    .line 1337
    .restart local v0       #code:I
    .restart local v2       #i:I
    :sswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_1

    .line 1332
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final _skipUtf8_2(I)V
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1550
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1551
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1553
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1554
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 1555
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1557
    :cond_1
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 1565
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1569
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1570
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_1

    .line 1571
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1573
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    .line 1574
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1576
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1577
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_3

    .line 1578
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1580
    :cond_3
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .locals 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1585
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_0

    .line 1586
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1588
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1589
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 1590
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1592
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_2

    .line 1593
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1595
    :cond_2
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_3

    .line 1596
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1598
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_4

    .line 1599
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1601
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1602
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_5

    .line 1603
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1605
    :cond_5
    return-void
.end method

.method private final _skipWS()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1225
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1226
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1227
    .local v0, i:I
    if-le v0, v4, :cond_3

    .line 1228
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1229
    return v0

    .line 1231
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 1232
    :cond_3
    if-eq v0, v4, :cond_0

    .line 1233
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1234
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1235
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1236
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1237
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1238
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1242
    .end local v0           #i:I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method private final _skipWSOrEnd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 1248
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1249
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1250
    .local v0, i:I
    if-le v0, v4, :cond_3

    .line 1251
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    move v1, v0

    .line 1267
    .end local v0           #i:I
    :goto_1
    return v1

    .line 1254
    .restart local v0       #i:I
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_0

    .line 1255
    :cond_3
    if-eq v0, v4, :cond_0

    .line 1256
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1257
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_0

    .line 1258
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1259
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_0

    .line 1260
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1261
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_0

    .line 1266
    .end local v0           #i:I
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleEOF()V

    .line 1267
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private final addName([III)Lorg/codehaus/jackson/sym/Name;
    .locals 17
    .parameter "quads"
    .parameter "qlen"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 792
    shl-int/lit8 v15, p2, 0x2

    const/16 v16, 0x4

    sub-int v15, v15, v16

    add-int v6, v15, p3

    .line 801
    .local v6, byteLen:I
    const/4 v15, 0x4

    move/from16 v0, p3

    move v1, v15

    if-ge v0, v1, :cond_7

    .line 802
    const/4 v15, 0x1

    sub-int v15, p2, v15

    aget v13, p1, v15

    .line 804
    .local v13, lastQuad:I
    const/4 v15, 0x1

    sub-int v15, p2, v15

    const/16 v16, 0x4

    sub-int v16, v16, p3

    shl-int/lit8 v16, v16, 0x3

    shl-int v16, v13, v16

    aput v16, p1, v15

    .line 810
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 811
    .local v7, cbuf:[C
    const/4 v10, 0x0

    .line 813
    .local v10, cix:I
    const/4 v12, 0x0

    .local v12, ix:I
    move v11, v10

    .end local v10           #cix:I
    .local v11, cix:I
    :goto_1
    if-ge v12, v6, :cond_b

    .line 814
    shr-int/lit8 v15, v12, 0x2

    aget v8, p1, v15

    .line 815
    .local v8, ch:I
    and-int/lit8 v5, v12, 0x3

    .line 816
    .local v5, byteIx:I
    const/4 v15, 0x3

    sub-int/2addr v15, v5

    shl-int/lit8 v15, v15, 0x3

    shr-int v15, v8, v15

    and-int/lit16 v8, v15, 0xff

    .line 817
    add-int/lit8 v12, v12, 0x1

    .line 819
    const/16 v15, 0x7f

    if-le v8, v15, :cond_d

    .line 821
    and-int/lit16 v15, v8, 0xe0

    const/16 v16, 0xc0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 822
    and-int/lit8 v8, v8, 0x1f

    .line 823
    const/4 v14, 0x1

    .line 834
    .local v14, needed:I
    :goto_2
    add-int v15, v12, v14

    if-le v15, v6, :cond_0

    .line 835
    const-string v15, " in field name"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 839
    :cond_0
    shr-int/lit8 v15, v12, 0x2

    aget v9, p1, v15

    .line 840
    .local v9, ch2:I
    and-int/lit8 v5, v12, 0x3

    .line 841
    const/4 v15, 0x3

    sub-int/2addr v15, v5

    shl-int/lit8 v15, v15, 0x3

    shr-int/2addr v9, v15

    .line 842
    add-int/lit8 v12, v12, 0x1

    .line 844
    and-int/lit16 v15, v9, 0xc0

    const/16 v16, 0x80

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 845
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 847
    :cond_1
    shl-int/lit8 v15, v8, 0x6

    and-int/lit8 v16, v9, 0x3f

    or-int v8, v15, v16

    .line 848
    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 849
    shr-int/lit8 v15, v12, 0x2

    aget v9, p1, v15

    .line 850
    and-int/lit8 v5, v12, 0x3

    .line 851
    const/4 v15, 0x3

    sub-int/2addr v15, v5

    shl-int/lit8 v15, v15, 0x3

    shr-int/2addr v9, v15

    .line 852
    add-int/lit8 v12, v12, 0x1

    .line 854
    and-int/lit16 v15, v9, 0xc0

    const/16 v16, 0x80

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 855
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 857
    :cond_2
    shl-int/lit8 v15, v8, 0x6

    and-int/lit8 v16, v9, 0x3f

    or-int v8, v15, v16

    .line 858
    const/4 v15, 0x2

    if-le v14, v15, :cond_4

    .line 859
    shr-int/lit8 v15, v12, 0x2

    aget v9, p1, v15

    .line 860
    and-int/lit8 v5, v12, 0x3

    .line 861
    const/4 v15, 0x3

    sub-int/2addr v15, v5

    shl-int/lit8 v15, v15, 0x3

    shr-int/2addr v9, v15

    .line 862
    add-int/lit8 v12, v12, 0x1

    .line 863
    and-int/lit16 v15, v9, 0xc0

    const/16 v16, 0x80

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 864
    and-int/lit16 v15, v9, 0xff

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 866
    :cond_3
    shl-int/lit8 v15, v8, 0x6

    and-int/lit8 v16, v9, 0x3f

    or-int v8, v15, v16

    .line 869
    :cond_4
    const/4 v15, 0x2

    if-le v14, v15, :cond_d

    .line 870
    const/high16 v15, 0x1

    sub-int/2addr v8, v15

    .line 871
    array-length v15, v7

    if-lt v11, v15, :cond_5

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v7

    .line 874
    :cond_5
    add-int/lit8 v10, v11, 0x1

    .end local v11           #cix:I
    .restart local v10       #cix:I
    const v15, 0xd800

    shr-int/lit8 v16, v8, 0xa

    add-int v15, v15, v16

    int-to-char v15, v15

    aput-char v15, v7, v11

    .line 875
    const v15, 0xdc00

    move v0, v8

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v16, v0

    or-int v8, v15, v16

    .line 878
    .end local v9           #ch2:I
    .end local v14           #needed:I
    :goto_3
    array-length v15, v7

    if-lt v10, v15, :cond_6

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v7

    .line 881
    :cond_6
    add-int/lit8 v11, v10, 0x1

    .end local v10           #cix:I
    .restart local v11       #cix:I
    int-to-char v15, v8

    aput-char v15, v7, v10

    goto/16 :goto_1

    .line 806
    .end local v5           #byteIx:I
    .end local v7           #cbuf:[C
    .end local v8           #ch:I
    .end local v11           #cix:I
    .end local v12           #ix:I
    .end local v13           #lastQuad:I
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #lastQuad:I
    goto/16 :goto_0

    .line 824
    .restart local v5       #byteIx:I
    .restart local v7       #cbuf:[C
    .restart local v8       #ch:I
    .restart local v11       #cix:I
    .restart local v12       #ix:I
    :cond_8
    and-int/lit16 v15, v8, 0xf0

    const/16 v16, 0xe0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 825
    and-int/lit8 v8, v8, 0xf

    .line 826
    const/4 v14, 0x2

    .restart local v14       #needed:I
    goto/16 :goto_2

    .line 827
    .end local v14           #needed:I
    :cond_9
    and-int/lit16 v15, v8, 0xf8

    const/16 v16, 0xf0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 828
    and-int/lit8 v8, v8, 0x7

    .line 829
    const/4 v14, 0x3

    .restart local v14       #needed:I
    goto/16 :goto_2

    .line 831
    .end local v14           #needed:I
    :cond_a
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 832
    const/4 v8, 0x1

    move v14, v8

    .restart local v14       #needed:I
    goto/16 :goto_2

    .line 888
    .end local v5           #byteIx:I
    .end local v8           #ch:I
    .end local v14           #needed:I
    :cond_b
    new-instance v4, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v4, v7, v15, v11}, Ljava/lang/String;-><init>([CII)V

    .line 890
    .local v4, baseName:Ljava/lang/String;
    const/4 v15, 0x4

    move/from16 v0, p3

    move v1, v15

    if-ge v0, v1, :cond_c

    .line 891
    const/4 v15, 0x1

    sub-int v15, p2, v15

    aput v13, p1, v15

    .line 893
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-object v15, v0

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v15

    return-object v15

    .end local v4           #baseName:Ljava/lang/String;
    .restart local v5       #byteIx:I
    .restart local v8       #ch:I
    :cond_d
    move v10, v11

    .end local v11           #cix:I
    .restart local v10       #cix:I
    goto :goto_3
.end method

.method private final findName(II)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .parameter "q1"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 742
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 747
    :goto_0
    return-object v1

    .line 746
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 747
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0
.end method

.method private final findName(III)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .parameter "q1"
    .parameter "q2"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 755
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 761
    :goto_0
    return-object v1

    .line 759
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 760
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 761
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    goto :goto_0
.end method

.method private final findName([IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .parameter "quads"
    .parameter "qlen"
    .parameter "lastQuad"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 767
    array-length v2, p1

    if-lt p2, v2, :cond_0

    .line 768
    array-length v2, p1

    invoke-static {p1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 770
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, qlen:I
    aput p3, p1, p2

    .line 771
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, p1, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 772
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v0, :cond_1

    .line 773
    invoke-direct {p0, p1, v1, p4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 775
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public static growArrayBy([II)[I
    .locals 4
    .parameter "arr"
    .parameter "more"

    .prologue
    const/4 v3, 0x0

    .line 1680
    if-nez p0, :cond_0

    .line 1681
    new-array v2, p1, [I

    .line 1687
    :goto_0
    return-object v2

    .line 1683
    :cond_0
    move-object v1, p0

    .line 1684
    .local v1, old:[I
    array-length v0, p0

    .line 1685
    .local v0, len:I
    add-int v2, v0, p1

    new-array p0, v2, [I

    .line 1686
    invoke-static {v1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p0

    .line 1687
    goto :goto_0
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1637
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 1638
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1640
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .parameter "q1"
    .parameter "ch"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .parameter "q1"
    .parameter "q2"
    .parameter "ch"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 441
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 9
    .parameter "b64variant"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x2

    .line 1700
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v1

    .line 1713
    .local v1, builder:Lorg/codehaus/jackson/util/ByteArrayBuilder;
    :cond_0
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_1

    .line 1714
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1716
    :cond_1
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1717
    .local v2, ch:I
    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    .line 1718
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1719
    .local v0, bits:I
    if-gez v0, :cond_3

    .line 1720
    const/16 v4, 0x22

    if-ne v2, v4, :cond_2

    .line 1721
    invoke-virtual {v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 1723
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1725
    :cond_3
    move v3, v0

    .line 1729
    .local v3, decodedData:I
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_4

    .line 1730
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1732
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1733
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1734
    if-gez v0, :cond_5

    .line 1735
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1737
    :cond_5
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1740
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_6

    .line 1741
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1743
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1744
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1747
    if-gez v0, :cond_a

    .line 1748
    if-eq v0, v7, :cond_7

    .line 1749
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1752
    :cond_7
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_8

    .line 1753
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1755
    :cond_8
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1756
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected padding character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v8, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1760
    :cond_9
    shr-int/lit8 v3, v3, 0x4

    .line 1761
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    .line 1765
    :cond_a
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1767
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v4, v5, :cond_b

    .line 1768
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1770
    :cond_b
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1771
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/Base64Variant;->decodeBase64Char(I)I

    move-result v0

    .line 1772
    if-gez v0, :cond_d

    .line 1773
    if-eq v0, v7, :cond_c

    .line 1774
    invoke-virtual {p0, p1, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1782
    :cond_c
    shr-int/lit8 v3, v3, 0x2

    .line 1783
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    .line 1786
    :cond_d
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v0

    .line 1787
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .parameter "firstByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1406
    move v0, p1

    .line 1407
    .local v0, c:I
    if-gez v0, :cond_3

    .line 1411
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    .line 1412
    and-int/lit8 v0, v0, 0x1f

    .line 1413
    const/4 v2, 0x1

    .line 1426
    .local v2, needed:I
    :goto_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1427
    .local v1, d:I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_0

    .line 1428
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1430
    :cond_0
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1432
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1433
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1434
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 1435
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1437
    :cond_1
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1438
    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 1439
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1440
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_2

    .line 1441
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1443
    :cond_2
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1447
    .end local v1           #d:I
    .end local v2           #needed:I
    :cond_3
    return v0

    .line 1414
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    .line 1415
    and-int/lit8 v0, v0, 0xf

    .line 1416
    const/4 v2, 0x2

    .restart local v2       #needed:I
    goto :goto_0

    .line 1417
    .end local v2           #needed:I
    :cond_5
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    .line 1419
    and-int/lit8 v0, v0, 0x7

    .line 1420
    const/4 v2, 0x3

    .restart local v2       #needed:I
    goto :goto_0

    .line 1422
    .end local v2           #needed:I
    :cond_6
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1423
    const/4 v2, 0x1

    .restart local v2       #needed:I
    goto :goto_0
.end method

.method protected final _decodeEscaped()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1352
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_0

    .line 1353
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1354
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1357
    :cond_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1359
    .local v0, c:I
    sparse-switch v0, :sswitch_data_0

    .line 1382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized character escape (\\ followed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v6

    invoke-static {v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1386
    :sswitch_0
    const/4 v4, 0x0

    .line 1387
    .local v4, value:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    .line 1388
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_1

    .line 1389
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1390
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1393
    :cond_1
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v5, v6

    .line 1394
    .local v1, ch:I
    invoke-static {v1}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 1395
    .local v2, digit:I
    if-gez v2, :cond_2

    .line 1396
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1398
    :cond_2
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1362
    .end local v1           #ch:I
    .end local v2           #digit:I
    .end local v3           #i:I
    .end local v4           #value:I
    :sswitch_1
    const/16 v5, 0x8

    .line 1400
    :goto_1
    return v5

    .line 1364
    :sswitch_2
    const/16 v5, 0x9

    goto :goto_1

    .line 1366
    :sswitch_3
    const/16 v5, 0xa

    goto :goto_1

    .line 1368
    :sswitch_4
    const/16 v5, 0xc

    goto :goto_1

    .line 1370
    :sswitch_5
    const/16 v5, 0xd

    goto :goto_1

    .line 1376
    :sswitch_6
    int-to-char v5, v0

    goto :goto_1

    .line 1400
    .restart local v3       #i:I
    .restart local v4       #value:I
    :cond_3
    int-to-char v5, v4

    goto :goto_1

    .line 1359
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method protected _finishString()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v6, 0x0

    .line 908
    .local v6, outPtr:I
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 911
    .local v5, outBuf:[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 912
    .local v1, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 919
    .local v2, inputBuffer:[B
    :goto_0
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 920
    .local v8, ptr:I
    iget v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v10, :cond_0

    .line 921
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 922
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 924
    :cond_0
    array-length v10, v5

    if-lt v6, v10, :cond_1

    .line 925
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 926
    const/4 v6, 0x0

    .line 928
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 930
    .local v3, max:I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 931
    .local v4, max2:I
    if-ge v4, v3, :cond_9

    .line 932
    move v3, v4

    move v9, v8

    .end local v8           #ptr:I
    .local v9, ptr:I
    move v7, v6

    .line 935
    .end local v6           #outPtr:I
    .local v7, outPtr:I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 936
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 937
    .local v0, c:I
    aget v10, v1, v0

    if-eqz v10, :cond_2

    .line 938
    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 946
    const/16 v10, 0x22

    if-ne v0, v10, :cond_4

    .line 992
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v7}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 993
    return-void

    .line 941
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v10, v0

    aput-char v10, v5, v7

    move v9, v8

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto :goto_1

    .line 943
    .end local v0           #c:I
    :cond_3
    iput v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v6, v7

    .line 944
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_0

    .line 950
    .end local v6           #outPtr:I
    .end local v9           #ptr:I
    .restart local v0       #c:I
    .restart local v7       #outPtr:I
    .restart local v8       #ptr:I
    :cond_4
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_0

    .line 976
    const/16 v10, 0x20

    if-ge v0, v10, :cond_8

    .line 978
    const-string v10, "string value"

    invoke-virtual {p0, v0, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    move v6, v7

    .line 985
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_2
    array-length v10, v5

    if-lt v6, v10, :cond_5

    .line 986
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 987
    const/4 v6, 0x0

    .line 990
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_0

    .line 952
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    move v6, v7

    .line 953
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2

    .line 955
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 956
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2

    .line 958
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_2
    iget v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 959
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2

    .line 961
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_6
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 963
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2

    .line 965
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 967
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 968
    array-length v10, v5

    if-lt v6, v10, :cond_7

    .line 969
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 970
    const/4 v6, 0x0

    .line 972
    :cond_7
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 974
    goto :goto_2

    .line 981
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_8
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_2

    .end local v0           #c:I
    :cond_9
    move v9, v8

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto/16 :goto_1

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;
    .locals 10
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    .line 1071
    if-ne p1, v9, :cond_0

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1072
    :cond_0
    const-string v7, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1076
    :cond_1
    const/4 v5, 0x0

    .line 1077
    .local v5, outPtr:I
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1080
    .local v4, outBuf:[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    .line 1081
    .local v0, codes:[I
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1088
    .local v1, inputBuffer:[B
    :cond_2
    :goto_0
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_3

    .line 1089
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1091
    :cond_3
    array-length v7, v4

    if-lt v5, v7, :cond_4

    .line 1092
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1093
    const/4 v5, 0x0

    .line 1095
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1097
    .local v2, max:I
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    array-length v8, v4

    sub-int/2addr v8, v5

    add-int v3, v7, v8

    .line 1098
    .local v3, max2:I
    if-ge v3, v2, :cond_5

    .line 1099
    move v2, v3

    .line 1102
    :cond_5
    :goto_1
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-ge v7, v2, :cond_2

    .line 1103
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v1, v7

    and-int/lit16 p1, v7, 0xff

    .line 1104
    if-eq p1, v9, :cond_6

    aget v7, v0, p1

    if-eqz v7, :cond_7

    .line 1112
    :cond_6
    if-ne p1, v9, :cond_8

    .line 1158
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1160
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v7

    .line 1107
    :cond_7
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .local v6, outPtr:I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_1

    .line 1116
    :cond_8
    aget v7, v0, p1

    packed-switch v7, :pswitch_data_0

    .line 1144
    const/16 v7, 0x20

    if-ge p1, v7, :cond_9

    .line 1145
    const-string v7, "string value"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1148
    :cond_9
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    .line 1151
    :cond_a
    :goto_2
    array-length v7, v4

    if-lt v5, v7, :cond_b

    .line 1152
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1153
    const/4 v5, 0x0

    .line 1156
    :cond_b
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_0

    .line 1118
    :pswitch_0
    const/16 v7, 0x22

    if-eq p1, v7, :cond_a

    .line 1119
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p1

    goto :goto_2

    .line 1123
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result p1

    .line 1124
    goto :goto_2

    .line 1126
    :pswitch_2
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-lt v7, v8, :cond_c

    .line 1127
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result p1

    goto :goto_2

    .line 1129
    :cond_c
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result p1

    .line 1131
    goto :goto_2

    .line 1133
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result p1

    .line 1135
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    const v7, 0xd800

    shr-int/lit8 v8, p1, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 1136
    array-length v7, v4

    if-lt v6, v7, :cond_d

    .line 1137
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1138
    const/4 v5, 0x0

    .line 1140
    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    :goto_3
    const v7, 0xdc00

    and-int/lit16 v8, p1, 0x3ff

    or-int p1, v7, v8

    .line 1142
    goto :goto_2

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_d
    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_3

    .line 1116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final _handleUnusualFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 556
    const/16 v7, 0x27

    if-ne p1, v7, :cond_0

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 557
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parseApostropheFieldName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v7

    .line 617
    :goto_0
    return-object v7

    .line 560
    :cond_0
    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 561
    const-string v7, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 567
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 569
    .local v0, codes:[I
    aget v7, v0, p1

    if-eqz v7, :cond_2

    .line 570
    const-string v7, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 577
    :cond_2
    iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 578
    .local v6, quads:[I
    const/4 v4, 0x0

    .line 579
    .local v4, qlen:I
    const/4 v1, 0x0

    .line 580
    .local v1, currQuad:I
    const/4 v2, 0x0

    .local v2, currQuadBytes:I
    move v5, v4

    .line 584
    .end local v4           #qlen:I
    .local v5, qlen:I
    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_7

    .line 585
    add-int/lit8 v2, v2, 0x1

    .line 586
    shl-int/lit8 v7, v1, 0x8

    or-int v1, v7, p1

    move v4, v5

    .line 595
    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    :goto_2
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_3

    .line 596
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v7

    if-nez v7, :cond_3

    .line 597
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 600
    :cond_3
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v7, v8

    and-int/lit16 p1, v7, 0xff

    .line 601
    aget v7, v0, p1

    if-eqz v7, :cond_9

    .line 607
    if-lez v2, :cond_5

    .line 608
    array-length v7, v6

    if-lt v4, v7, :cond_4

    .line 609
    array-length v7, v6

    invoke-static {v6, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 611
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    aput v1, v6, v4

    move v4, v5

    .line 613
    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    :cond_5
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v7, v6, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 614
    .local v3, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_6

    .line 615
    invoke-direct {p0, v6, v4, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    :cond_6
    move-object v7, v3

    .line 617
    goto :goto_0

    .line 588
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    :cond_7
    array-length v7, v6

    if-lt v5, v7, :cond_8

    .line 589
    array-length v7, v6

    invoke-static {v6, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 591
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    aput v1, v6, v5

    .line 592
    move v1, p1

    .line 593
    const/4 v2, 0x1

    goto :goto_2

    .line 604
    :cond_9
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v5, v4

    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    goto :goto_1
.end method

.method protected _matchToken(Lorg/codehaus/jackson/JsonToken;)V
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v2

    .line 1174
    .local v2, matchBytes:[B
    const/4 v0, 0x1

    .line 1176
    .local v0, i:I
    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1177
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_0

    .line 1178
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1180
    :cond_0
    aget-byte v3, v2, v0

    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 1181
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 1183
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1189
    :cond_2
    return-void
.end method

.method protected final _parseApostropheFieldName()Lorg/codehaus/jackson/sym/Name;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x27

    const/4 v11, 0x4

    .line 628
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 629
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_0

    .line 630
    const-string v8, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 633
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    .line 634
    .local v0, ch:I
    if-ne v0, v12, :cond_1

    .line 635
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v8

    .line 728
    :goto_0
    return-object v8

    .line 637
    :cond_1
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 638
    .local v7, quads:[I
    const/4 v5, 0x0

    .line 639
    .local v5, qlen:I
    const/4 v2, 0x0

    .line 640
    .local v2, currQuad:I
    const/4 v3, 0x0

    .line 644
    .local v3, currQuadBytes:I
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .local v1, codes:[I
    move v6, v5

    .line 647
    .end local v5           #qlen:I
    .local v6, qlen:I
    :goto_1
    if-ne v0, v12, :cond_4

    .line 718
    if-lez v3, :cond_e

    .line 719
    array-length v8, v7

    if-lt v6, v8, :cond_2

    .line 720
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 722
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 724
    :goto_2
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v8, v7, v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 725
    .local v4, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v4, :cond_3

    .line 726
    invoke-direct {p0, v7, v5, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    :cond_3
    move-object v8, v4

    .line 728
    goto :goto_0

    .line 651
    .end local v4           #name:Lorg/codehaus/jackson/sym/Name;
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_4
    const/16 v8, 0x22

    if-eq v0, v8, :cond_7

    aget v8, v1, v0

    if-eqz v8, :cond_7

    .line 652
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_9

    .line 655
    const-string v8, "name"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 665
    :goto_3
    const/16 v8, 0x7f

    if-le v0, v8, :cond_7

    .line 667
    if-lt v3, v11, :cond_6

    .line 668
    array-length v8, v7

    if-lt v6, v8, :cond_5

    .line 669
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 671
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 672
    const/4 v2, 0x0

    .line 673
    const/4 v3, 0x0

    move v6, v5

    .line 675
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_6
    const/16 v8, 0x800

    if-ge v0, v8, :cond_a

    .line 676
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    or-int v2, v8, v9

    .line 677
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    .line 695
    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    :goto_4
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v0, v8, 0x80

    move v6, v5

    .line 699
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_7
    if-ge v3, v11, :cond_c

    .line 700
    add-int/lit8 v3, v3, 0x1

    .line 701
    shl-int/lit8 v8, v2, 0x8

    or-int v2, v8, v0

    move v5, v6

    .line 710
    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    :goto_5
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_8

    .line 711
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_8

    .line 712
    const-string v8, " in field name"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 715
    :cond_8
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    move v6, v5

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    goto/16 :goto_1

    .line 658
    :cond_9
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    goto :goto_3

    .line 680
    :cond_a
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    or-int v2, v8, v9

    .line 681
    add-int/lit8 v3, v3, 0x1

    .line 683
    if-lt v3, v11, :cond_f

    .line 684
    array-length v8, v7

    if-lt v6, v8, :cond_b

    .line 685
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 687
    :cond_b
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 688
    const/4 v2, 0x0

    .line 689
    const/4 v3, 0x0

    .line 691
    :goto_6
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    or-int v2, v8, v9

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 703
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_c
    array-length v8, v7

    if-lt v6, v8, :cond_d

    .line 704
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 706
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 707
    move v2, v0

    .line 708
    const/4 v3, 0x1

    goto :goto_5

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_e
    move v5, v6

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    goto/16 :goto_2

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_f
    move v5, v6

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    goto :goto_6
.end method

.method protected final _parseFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .locals 10
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 249
    if-eq p1, v5, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleUnusualFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 304
    :goto_0
    return-object v2

    .line 253
    :cond_0
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v2, v3

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 254
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 263
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 265
    .local v0, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 266
    .local v1, q:I
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 267
    if-ne v1, v5, :cond_2

    .line 268
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 270
    :cond_2
    invoke-direct {p0, v6, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 273
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 274
    aget v2, v0, p1

    if-eqz v2, :cond_5

    .line 275
    if-ne p1, v5, :cond_4

    .line 276
    invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 278
    :cond_4
    invoke-direct {p0, v1, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 280
    :cond_5
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 281
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 282
    aget v2, v0, p1

    if-eqz v2, :cond_7

    .line 283
    if-ne p1, v5, :cond_6

    .line 284
    invoke-direct {p0, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_6
    invoke-direct {p0, v1, p1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 288
    :cond_7
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 289
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 290
    aget v2, v0, p1

    if-eqz v2, :cond_9

    .line 291
    if-ne p1, v5, :cond_8

    .line 292
    invoke-direct {p0, v1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 294
    :cond_8
    invoke-direct {p0, v1, p1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 296
    :cond_9
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 297
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 298
    aget v2, v0, p1

    if-eqz v2, :cond_b

    .line 299
    if-ne p1, v5, :cond_a

    .line 300
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 302
    :cond_a
    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0

    .line 304
    :cond_b
    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1653
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 1654
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    .line 1656
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1657
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1669
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .parameter "mask"
    .parameter "ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1674
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1675
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1676
    return-void
.end method

.method protected final _skipCR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1621
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1624
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1625
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1626
    return-void
.end method

.method protected final _skipLF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1630
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1631
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1632
    return-void
.end method

.method protected _skipString()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 1006
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 1007
    .local v1, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1015
    .local v2, inputBuffer:[B
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1016
    .local v4, ptr:I
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1017
    .local v3, max:I
    if-lt v4, v3, :cond_3

    .line 1018
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1019
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1020
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    move v5, v4

    .line 1022
    .end local v4           #ptr:I
    .local v5, ptr:I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 1023
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    aget-byte v6, v2, v5

    and-int/lit16 v0, v6, 0xff

    .line 1024
    .local v0, c:I
    aget v6, v1, v0

    if-eqz v6, :cond_3

    .line 1025
    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1032
    const/16 v6, 0x22

    if-ne v0, v6, :cond_1

    .line 1059
    return-void

    .line 1029
    .end local v0           #c:I
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_0
    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    goto :goto_0

    .line 1036
    .end local v5           #ptr:I
    .restart local v0       #c:I
    .restart local v4       #ptr:I
    :cond_1
    aget v6, v1, v0

    packed-switch v6, :pswitch_data_0

    .line 1050
    const/16 v6, 0x20

    if-ge v0, v6, :cond_2

    .line 1052
    const-string v6, "string value"

    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_0

    .line 1038
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    goto :goto_0

    .line 1041
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_0

    .line 1044
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_0

    .line 1047
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_0

    .end local v0           #c:I
    :cond_3
    move v5, v4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_1

    .line 1036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-super {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->close()V

    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 238
    return-void
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x7d

    const/16 v9, 0x5d

    const/4 v8, 0x1

    .line 83
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_0

    .line 84
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 215
    :goto_0
    return-object v4

    .line 86
    :cond_0
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 90
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v0

    .line 91
    .local v0, i:I
    if-gez v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 96
    iput-object v11, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v4, v11

    goto :goto_0

    .line 102
    :cond_2
    iget-wide v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J

    .line 103
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    .line 104
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v8

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    .line 107
    iput-object v11, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    .line 110
    if-ne v0, v9, :cond_4

    .line 111
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    invoke-virtual {p0, v0, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 114
    :cond_3
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 115
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 117
    :cond_4
    if-ne v0, v10, :cond_6

    .line 118
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_5

    .line 119
    invoke-virtual {p0, v0, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 121
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 122
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 126
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 127
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 130
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 137
    :cond_8
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 138
    .local v1, inObject:Z
    if-eqz v1, :cond_a

    .line 140
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 141
    .local v2, n:Lorg/codehaus/jackson/sym/Name;
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 142
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 143
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 144
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_9

    .line 145
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 147
    :cond_9
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 154
    .end local v2           #n:Lorg/codehaus/jackson/sym/Name;
    :cond_a
    sparse-switch v0, :sswitch_data_0

    .line 207
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 210
    .local v3, t:Lorg/codehaus/jackson/JsonToken;
    :goto_1
    if-eqz v1, :cond_d

    .line 211
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 212
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 156
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_0
    iput-boolean v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 157
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    .line 158
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 160
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_1
    if-nez v1, :cond_b

    .line 161
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 163
    :cond_b
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    .line 164
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 166
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_2
    if-nez v1, :cond_c

    .line 167
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 169
    :cond_c
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    .line 170
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 175
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_3
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 177
    :sswitch_4
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 178
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    .line 179
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 181
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_5
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 182
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    .line 183
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 185
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_6
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 186
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    .line 187
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 204
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_7
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 205
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_1

    .line 214
    :cond_d
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    move-object v4, v3

    .line 215
    goto/16 :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method protected parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
    .locals 7
    .parameter "quads"
    .parameter "qlen"
    .parameter "currQuad"
    .parameter "ch"
    .parameter "currQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 460
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 463
    .local v0, codes:[I
    :goto_0
    aget v3, v0, p4

    if-eqz v3, :cond_d

    .line 464
    const/16 v3, 0x22

    if-ne p4, v3, :cond_3

    .line 533
    if-lez p5, :cond_1

    .line 534
    array-length v3, p1

    if-lt p2, v3, :cond_0

    .line 535
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 537
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, qlen:I
    aput p3, p1, p2

    move p2, v2

    .line 539
    .end local v2           #qlen:I
    .restart local p2
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 540
    .local v1, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v1, :cond_2

    .line 541
    invoke-direct {p0, p1, p2, p5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 543
    :cond_2
    return-object v1

    .line 468
    .end local v1           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_3
    const/16 v3, 0x5c

    if-eq p4, v3, :cond_6

    .line 470
    const-string v3, "name"

    invoke-virtual {p0, p4, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 480
    :goto_1
    const/16 v3, 0x7f

    if-le p4, v3, :cond_d

    .line 482
    if-lt p5, v6, :cond_c

    .line 483
    array-length v3, p1

    if-lt p2, v3, :cond_4

    .line 484
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 486
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #qlen:I
    aput p3, p1, p2

    .line 487
    const/4 p3, 0x0

    .line 488
    const/4 p5, 0x0

    .line 490
    :goto_2
    const/16 v3, 0x800

    if-ge p4, v3, :cond_7

    .line 491
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p3, v3, v4

    .line 492
    add-int/lit8 p5, p5, 0x1

    move p2, v2

    .line 510
    .end local v2           #qlen:I
    .restart local p2
    :goto_3
    and-int/lit8 v3, p4, 0x3f

    or-int/lit16 p4, v3, 0x80

    move v2, p2

    .line 514
    .end local p2
    .restart local v2       #qlen:I
    :goto_4
    if-ge p5, v6, :cond_9

    .line 515
    add-int/lit8 p5, p5, 0x1

    .line 516
    shl-int/lit8 v3, p3, 0x8

    or-int p3, v3, p4

    move p2, v2

    .line 525
    .end local v2           #qlen:I
    .restart local p2
    :goto_5
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_5

    .line 526
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_5

    .line 527
    const-string v3, " in field name"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 530
    :cond_5
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 p4, v3, 0xff

    goto :goto_0

    .line 473
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p4

    goto :goto_1

    .line 495
    .end local p2
    .restart local v2       #qlen:I
    :cond_7
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p3, v3, v4

    .line 496
    add-int/lit8 p5, p5, 0x1

    .line 498
    if-lt p5, v6, :cond_b

    .line 499
    array-length v3, p1

    if-lt v2, v3, :cond_8

    .line 500
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 502
    :cond_8
    add-int/lit8 p2, v2, 0x1

    .end local v2           #qlen:I
    .restart local p2
    aput p3, p1, v2

    .line 503
    const/4 p3, 0x0

    .line 504
    const/4 p5, 0x0

    .line 506
    :goto_6
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p3, v3, v4

    .line 507
    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 518
    .end local p2
    .restart local v2       #qlen:I
    :cond_9
    array-length v3, p1

    if-lt v2, v3, :cond_a

    .line 519
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 521
    :cond_a
    add-int/lit8 p2, v2, 0x1

    .end local v2           #qlen:I
    .restart local p2
    aput p3, p1, v2

    .line 522
    move p3, p4

    .line 523
    const/4 p5, 0x1

    goto :goto_5

    .end local p2
    .restart local v2       #qlen:I
    :cond_b
    move p2, v2

    .end local v2           #qlen:I
    .restart local p2
    goto :goto_6

    :cond_c
    move v2, p2

    .end local p2
    .restart local v2       #qlen:I
    goto :goto_2

    .end local v2           #qlen:I
    .restart local p2
    :cond_d
    move v2, p2

    .end local p2
    .restart local v2       #qlen:I
    goto :goto_4
.end method

.method protected parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .locals 12
    .parameter "q"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x22

    .line 354
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v6

    .line 355
    .local v6, codes:[I
    const/4 v2, 0x2

    .line 362
    .local v2, qlen:I
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, v10, :cond_0

    .line 363
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 399
    :goto_1
    return-object v0

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 368
    .local v4, i:I
    aget v0, v6, v4

    if-eqz v0, :cond_2

    .line 369
    if-ne v4, v9, :cond_1

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 372
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_2
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 376
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 377
    aget v0, v6, v4

    if-eqz v0, :cond_4

    .line 378
    if-ne v4, v9, :cond_3

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v11}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 381
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 384
    :cond_4
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 386
    aget v0, v6, v4

    if-eqz v0, :cond_6

    .line 387
    if-ne v4, v9, :cond_5

    .line 388
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 390
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 393
    :cond_6
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 394
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 395
    aget v0, v6, v4

    if-eqz v0, :cond_8

    .line 396
    if-ne v4, v9, :cond_7

    .line 397
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 399
    :cond_7
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 403
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 404
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 406
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2           #qlen:I
    .local v7, qlen:I
    aput p1, v0, v2

    .line 407
    move p1, v4

    move v2, v7

    .line 408
    .end local v7           #qlen:I
    .restart local v2       #qlen:I
    goto/16 :goto_0
.end method

.method protected parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;
    .locals 10
    .parameter "q1"
    .parameter "q2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x22

    .line 311
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 314
    .local v0, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 315
    .local v1, i:I
    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 316
    if-ne v1, v5, :cond_0

    .line 317
    invoke-direct {p0, p1, p2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 347
    :goto_0
    return-object v2

    .line 319
    :cond_0
    invoke-direct {p0, p1, p2, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 321
    :cond_1
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 322
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 323
    aget v2, v0, v1

    if-eqz v2, :cond_3

    .line 324
    if-ne v1, v5, :cond_2

    .line 325
    invoke-direct {p0, p1, p2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_2
    invoke-direct {p0, p1, p2, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 329
    :cond_3
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 330
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 331
    aget v2, v0, v1

    if-eqz v2, :cond_5

    .line 332
    if-ne v1, v5, :cond_4

    .line 333
    invoke-direct {p0, p1, p2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 335
    :cond_4
    invoke-direct {p0, p1, p2, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 337
    :cond_5
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 338
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 339
    aget v2, v0, v1

    if-eqz v2, :cond_7

    .line 340
    if-ne v1, v5, :cond_6

    .line 341
    invoke-direct {p0, p1, p2, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 343
    :cond_6
    invoke-direct {p0, p1, p2, v1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0

    .line 345
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 346
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    aput p2, v2, v6

    .line 347
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_0
.end method

.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .parameter "b64variant"
    .parameter "ch"
    .parameter "bindex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1795
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected reportInvalidChar(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .parameter "b64variant"
    .parameter "ch"
    .parameter "bindex"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1806
    const/16 v1, 0x20

    if-gt p2, v1, :cond_1

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, base:Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_0

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1808
    .end local v0           #base:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->usesPaddingChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected padding character (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\') as character #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #base:Ljava/lang/String;
    goto :goto_0

    .line 1810
    .end local v0           #base:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1812
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #base:Ljava/lang/String;
    goto :goto_0

    .line 1814
    .end local v0           #base:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in base64 content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #base:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 63
    return-void
.end method

.method protected slowParseFieldName()Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 425
    .local v4, i:I
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 426
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method
