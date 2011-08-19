.class public Lorg/apache/http/message/BasicLineParser;
.super Ljava/lang/Object;
.source "BasicLineParser.java"

# interfaces
.implements Lorg/apache/http/message/LineParser;


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineParser;


# instance fields
.field protected final protocol:Lorg/apache/http/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicLineParser;-><init>(Lorg/apache/http/ProtocolVersion;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/ProtocolVersion;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-nez p1, :cond_0

    .line 88
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    .line 91
    return-void
.end method

.method public static final parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;
    .locals 3
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 463
    if-nez p0, :cond_0

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value to parse may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_0
    if-nez p1, :cond_1

    .line 469
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 471
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 472
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 473
    invoke-interface {p1, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method public static final parseProtocolVersion(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/ProtocolVersion;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    if-nez p1, :cond_1

    .line 113
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 115
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 116
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 118
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    return-object v2
.end method

.method public static final parseRequestLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/RequestLine;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    if-nez p1, :cond_1

    .line 278
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 280
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 281
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 282
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 283
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    move-result-object v2

    return-object v2
.end method

.method public static final parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_0
    if-nez p1, :cond_1

    .line 378
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 380
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 381
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 382
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 383
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/LineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 1
    .parameter "major"
    .parameter "minor"

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/ProtocolVersion;->forVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    .locals 1
    .parameter "method"
    .parameter "uri"
    .parameter "ver"

    .prologue
    .line 362
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v0
.end method

.method protected createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1
    .parameter "ver"
    .parameter "status"
    .parameter "reason"

    .prologue
    .line 453
    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    return-object v0
.end method

.method public hasProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Z
    .locals 9
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Char array buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    :cond_0
    if-nez p2, :cond_1

    .line 226
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parser cursor may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v0

    .line 230
    .local v0, index:I
    iget-object v5, p0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    invoke-virtual {v5}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, protoname:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 233
    .local v3, protolength:I
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x4

    if-ge v5, v6, :cond_2

    move v5, v7

    .line 262
    :goto_0
    return v5

    .line 236
    :cond_2
    if-gez v0, :cond_4

    .line 239
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    sub-int v0, v5, v3

    .line 249
    :cond_3
    add-int v5, v0, v3

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    if-le v5, v6, :cond_5

    move v5, v7

    .line 250
    goto :goto_0

    .line 240
    :cond_4
    if-nez v0, :cond_3

    .line 242
    :goto_1
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_5
    const/4 v2, 0x1

    .line 255
    .local v2, ok:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-eqz v2, :cond_7

    if-ge v1, v3, :cond_7

    .line 256
    add-int v5, v0, v1

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_6

    move v2, v8

    .line 255
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v2, v7

    .line 256
    goto :goto_3

    .line 258
    :cond_7
    if-eqz v2, :cond_8

    .line 259
    add-int v5, v0, v3

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_9

    move v2, v8

    :cond_8
    :goto_4
    move v5, v2

    .line 262
    goto :goto_0

    :cond_9
    move v2, v7

    .line 259
    goto :goto_4
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0
.end method

.method public parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;
    .locals 19
    .parameter "buffer"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Char array buffer may not be null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 130
    :cond_0
    if-nez p2, :cond_1

    .line 131
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Parser cursor may not be null"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/message/BasicLineParser;->protocol:Lorg/apache/http/ProtocolVersion;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, protoname:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    .line 137
    .local v14, protolength:I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v7

    .line 138
    .local v7, indexFrom:I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v8

    .line 140
    .local v8, indexTo:I
    invoke-virtual/range {p0 .. p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v6

    .line 145
    .local v6, i:I
    add-int v16, v6, v14

    add-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    move v1, v8

    if-le v0, v1, :cond_2

    .line 146
    new-instance v16, Lorg/apache/http/ParseException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Not a valid protocol version: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 152
    :cond_2
    const/4 v12, 0x1

    .line 153
    .local v12, ok:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    if-eqz v12, :cond_4

    if-ge v9, v14, :cond_4

    .line 154
    add-int v16, v6, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v16

    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 153
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 154
    :cond_3
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_1

    .line 156
    :cond_4
    if-eqz v12, :cond_5

    .line 157
    add-int v16, v6, v14

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v16

    const/16 v17, 0x2f

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 159
    :cond_5
    :goto_2
    if-nez v12, :cond_7

    .line 160
    new-instance v16, Lorg/apache/http/ParseException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Not a valid protocol version: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 157
    :cond_6
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_2

    .line 165
    :cond_7
    add-int/lit8 v16, v14, 0x1

    add-int v6, v6, v16

    .line 167
    const/16 v16, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v6

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v13

    .line 168
    .local v13, period:I
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 169
    new-instance v16, Lorg/apache/http/ParseException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Invalid protocol version number: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 175
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    move v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 181
    .local v10, major:I
    add-int/lit8 v6, v13, 0x1

    .line 183
    const/16 v16, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v6

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v4

    .line 184
    .local v4, blank:I
    const/16 v16, -0x1

    move v0, v4

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 185
    move v4, v8

    .line 189
    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    move v1, v6

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 196
    .local v11, minor:I
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 198
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicLineParser;->createProtocolVersion(II)Lorg/apache/http/ProtocolVersion;

    move-result-object v16

    return-object v16

    .line 176
    .end local v4           #blank:I
    .end local v10           #major:I
    .end local v11           #minor:I
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 177
    .local v5, e:Ljava/lang/NumberFormatException;
    new-instance v16, Lorg/apache/http/ParseException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Invalid protocol major version number: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 190
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #blank:I
    .restart local v10       #major:I
    :catch_1
    move-exception v16

    move-object/from16 v5, v16

    .line 191
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    new-instance v16, Lorg/apache/http/ParseException;

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "Invalid protocol minor version number: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;
    .locals 11
    .parameter "buffer"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Char array buffer may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    :cond_0
    if-nez p2, :cond_1

    .line 304
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Parser cursor may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 307
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 308
    .local v3, indexFrom:I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 311
    .local v4, indexTo:I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 312
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 314
    .local v2, i:I
    const/16 v8, 0x20

    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    .line 315
    .local v0, blank:I
    if-gez v0, :cond_2

    .line 316
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0           #blank:I
    .end local v2           #i:I
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 343
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 319
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #blank:I
    .restart local v2       #i:I
    :cond_2
    :try_start_1
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, method:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 322
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 323
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 325
    const/16 v8, 0x20

    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    .line 326
    if-gez v0, :cond_3

    .line 327
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 330
    :cond_3
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, uri:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 333
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 335
    .local v7, ver:Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 336
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v8

    if-nez v8, :cond_4

    .line 337
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid request line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 341
    :cond_4
    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/http/message/BasicLineParser;->createRequestLine(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/RequestLine;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method

.method public parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;
    .locals 11
    .parameter "buffer"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Char array buffer may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 395
    :cond_0
    if-nez p2, :cond_1

    .line 396
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Parser cursor may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 399
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    .line 400
    .local v3, indexFrom:I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    .line 404
    .local v4, indexTo:I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->parseProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/ProtocolVersion;

    move-result-object v7

    .line 407
    .local v7, ver:Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicLineParser;->skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    .line 408
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    .line 410
    .local v2, i:I
    const/16 v8, 0x20

    invoke-virtual {p1, v8, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 411
    .local v0, blank:I
    if-gez v0, :cond_2

    .line 412
    move v0, v4

    .line 414
    :cond_2
    const/4 v6, 0x0

    .line 416
    .local v6, statusCode:I
    :try_start_1
    invoke-virtual {p1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 424
    move v2, v0

    .line 425
    const/4 v5, 0x0

    .line 426
    .local v5, reasonPhrase:Ljava/lang/String;
    if-ge v2, v4, :cond_3

    .line 427
    :try_start_2
    invoke-virtual {p1, v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    .line 431
    :goto_0
    invoke-virtual {p0, v7, v6, v5}, Lorg/apache/http/message/BasicLineParser;->createStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v8

    return-object v8

    .line 418
    .end local v5           #reasonPhrase:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 419
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unable to parse status code from status line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 433
    .end local v0           #blank:I
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #i:I
    .end local v6           #statusCode:I
    .end local v7           #ver:Lorg/apache/http/ProtocolVersion;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 434
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lorg/apache/http/ParseException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid status line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 429
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #blank:I
    .restart local v2       #i:I
    .restart local v5       #reasonPhrase:Ljava/lang/String;
    .restart local v6       #statusCode:I
    .restart local v7       #ver:Lorg/apache/http/ProtocolVersion;
    :cond_3
    :try_start_3
    const-string v5, ""
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected skipWhitespace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .locals 3
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 490
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v1

    .line 491
    .local v1, pos:I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v0

    .line 492
    .local v0, indexTo:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 497
    return-void
.end method
