.class public Lorg/apache/http/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lorg/apache/http/message/HeaderValueParser;


# static fields
.field private static final ALL_DELIMITERS:[C = null

.field public static final DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser; = null

.field private static final ELEM_DELIMITER:C = ','

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x2ct 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf(C[C)Z
    .locals 2
    .parameter "ch"
    .parameter "chs"

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 299
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 300
    const/4 v1, 0x1

    .line 304
    .end local v0           #i:I
    :goto_1
    return v1

    .line 298
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 97
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 98
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 100
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2
.end method

.method public static final parseHeaderElement(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/HeaderElement;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    if-nez p1, :cond_1

    .line 146
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 148
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 149
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 151
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v2

    return-object v2
.end method

.method public static final parseNameValuePair(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)Lorg/apache/http/NameValuePair;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    if-nez p1, :cond_1

    .line 281
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 283
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 284
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 285
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 286
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2
.end method

.method public static final parseParameters(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/NameValuePair;
    .locals 4
    .parameter "value"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value to parse may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    if-nez p1, :cond_1

    .line 211
    sget-object p1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    .line 213
    :cond_1
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 214
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 216
    .local v1, cursor:Lorg/apache/http/message/ParserCursor;
    invoke-interface {p1, v0, v1}, Lorg/apache/http/message/HeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;
    .locals 1
    .parameter "name"
    .parameter "value"
    .parameter "params"

    .prologue
    .line 188
    new-instance v0, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 408
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;
    .locals 4
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Char array buffer may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parser cursor may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, elements:Ljava/util/List;
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v2

    if-nez v2, :cond_4

    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 118
    .local v0, element:Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 119
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0           #element:Lorg/apache/http/HeaderElement;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/HeaderElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lorg/apache/http/HeaderElement;

    check-cast p0, [Lorg/apache/http/HeaderElement;

    return-object p0
.end method

.method public parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;
    .locals 5
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Char array buffer may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    if-nez p2, :cond_1

    .line 163
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parser cursor may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 167
    .local v1, nvp:Lorg/apache/http/NameValuePair;
    const/4 v2, 0x0

    .line 168
    .local v2, params:[Lorg/apache/http/NameValuePair;
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 170
    .local v0, ch:C
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 174
    .end local v0           #ch:C
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lorg/apache/http/HeaderElement;

    move-result-object v3

    return-object v3
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;
    .locals 1
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 293
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v0

    return-object v0
.end method

.method public parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;
    .locals 16
    .parameter "buffer"
    .parameter "cursor"
    .parameter "delimiters"

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Char array buffer may not be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 314
    :cond_0
    if-nez p2, :cond_1

    .line 315
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Parser cursor may not be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 318
    :cond_1
    const/4 v12, 0x0

    .line 320
    .local v12, terminated:Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v10

    .line 321
    .local v10, pos:I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v7

    .line 322
    .local v7, indexFrom:I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v8

    .line 325
    .local v8, indexTo:I
    const/4 v9, 0x0

    .line 326
    .local v9, name:Ljava/lang/String;
    :goto_0
    if-ge v10, v8, :cond_2

    .line 327
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 328
    .local v3, ch:C
    const/16 v14, 0x3d

    if-ne v3, v14, :cond_3

    .line 338
    .end local v3           #ch:C
    :cond_2
    :goto_1
    if-ne v10, v8, :cond_5

    .line 339
    const/4 v12, 0x1

    .line 340
    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v9

    .line 346
    :goto_2
    if-eqz v12, :cond_6

    .line 347
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 348
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v14

    .line 395
    :goto_3
    return-object v14

    .line 331
    .restart local v3       #ch:C
    :cond_3
    move v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 332
    const/4 v12, 0x1

    .line 333
    goto :goto_1

    .line 335
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 336
    goto :goto_0

    .line 342
    .end local v3           #ch:C
    :cond_5
    move-object/from16 v0, p1

    move v1, v7

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v9

    .line 343
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 352
    :cond_6
    const/4 v13, 0x0

    .line 353
    .local v13, value:Ljava/lang/String;
    move v5, v10

    .line 355
    .local v5, i1:I
    const/4 v11, 0x0

    .line 356
    .local v11, qouted:Z
    const/4 v4, 0x0

    .line 357
    .local v4, escaped:Z
    :goto_4
    if-ge v10, v8, :cond_8

    .line 358
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    .line 359
    .restart local v3       #ch:C
    const/16 v14, 0x22

    if-ne v3, v14, :cond_7

    if-nez v4, :cond_7

    .line 360
    if-nez v11, :cond_9

    const/4 v14, 0x1

    move v11, v14

    .line 362
    :cond_7
    :goto_5
    if-nez v11, :cond_a

    if-nez v4, :cond_a

    move v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/apache/http/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 363
    const/4 v12, 0x1

    .line 374
    .end local v3           #ch:C
    :cond_8
    move v6, v10

    .line 376
    .local v6, i2:I
    :goto_6
    if-ge v5, v6, :cond_d

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 377
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 360
    .end local v6           #i2:I
    .restart local v3       #ch:C
    :cond_9
    const/4 v14, 0x0

    move v11, v14

    goto :goto_5

    .line 366
    :cond_a
    if-eqz v4, :cond_b

    .line 367
    const/4 v4, 0x0

    .line 371
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 372
    goto :goto_4

    .line 369
    :cond_b
    if-eqz v11, :cond_c

    const/16 v14, 0x5c

    if-ne v3, v14, :cond_c

    const/4 v14, 0x1

    move v4, v14

    :goto_8
    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    move v4, v14

    goto :goto_8

    .line 380
    .end local v3           #ch:C
    .restart local v6       #i2:I
    :cond_d
    :goto_9
    if-le v6, v5, :cond_e

    const/4 v14, 0x1

    sub-int v14, v6, v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 381
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 384
    :cond_e
    sub-int v14, v6, v5

    const/4 v15, 0x2

    if-lt v14, v15, :cond_f

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_f

    const/4 v14, 0x1

    sub-int v14, v6, v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_f

    .line 387
    add-int/lit8 v5, v5, 0x1

    .line 388
    add-int/lit8 v6, v6, -0x1

    .line 390
    :cond_f
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 391
    if-eqz v12, :cond_10

    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 394
    :cond_10
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 395
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v14

    goto/16 :goto_3
.end method

.method public parseParameters(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/NameValuePair;
    .locals 7
    .parameter "buffer"
    .parameter "cursor"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Char array buffer may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 228
    :cond_0
    if-nez p2, :cond_1

    .line 229
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parser cursor may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    .line 233
    .local v4, pos:I
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v1

    .line 235
    .local v1, indexTo:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 236
    invoke-virtual {p1, v4}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 237
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 242
    goto :goto_0

    .line 243
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    .line 244
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    .line 258
    .end local p0
    :goto_1
    return-object v5

    .line 248
    .restart local p0
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, params:Ljava/util/List;
    :cond_4
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v5

    if-nez v5, :cond_5

    .line 250
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 251
    .local v2, param:Lorg/apache/http/NameValuePair;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 253
    .restart local v0       #ch:C
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_4

    .line 258
    .end local v0           #ch:C
    .end local v2           #param:Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lorg/apache/http/NameValuePair;

    check-cast p0, [Lorg/apache/http/NameValuePair;

    move-object v5, p0

    goto :goto_1
.end method
