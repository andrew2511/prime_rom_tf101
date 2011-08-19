.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final TOKEN_COMMENT:B = 0x1t

.field private static final TOKEN_DIGIT:B = 0x10t

.field private static final TOKEN_QUOTE:B = 0x2t

.field private static final TOKEN_WHITE:B = 0x4t

.field private static final TOKEN_WORD:B = 0x8t

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field public static final TT_NUMBER:I = -0x2

.field private static final TT_UNKNOWN:I = -0x4

.field public static final TT_WORD:I = -0x3


# instance fields
.field private forceLowercase:Z

.field private inReader:Ljava/io/Reader;

.field private inStream:Ljava/io/InputStream;

.field private isEOLSignificant:Z

.field private lastCr:Z

.field private lineNumber:I

.field public nval:D

.field private peekChar:I

.field private pushBackToken:Z

.field private slashSlashComments:Z

.field private slashStarComments:Z

.field public sval:Ljava/lang/String;

.field private tokenTypes:[B

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 84
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 115
    const/4 v0, -0x2

    iput v0, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 127
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 128
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 129
    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 134
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 139
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 140
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 141
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 145
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 167
    if-nez p1, :cond_b

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_b
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 194
    if-nez p1, :cond_b

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 197
    :cond_b
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    .line 198
    return-void
.end method

.method private read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_b

    .line 552
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 554
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public commentChar(I)V
    .registers 4
    .parameter "ch"

    .prologue
    .line 208
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 209
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x1

    aput-byte v1, v0, p1

    .line 211
    :cond_c
    return-void
.end method

.method public eolIsSignificant(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 221
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    .line 222
    return-void
.end method

.method public lineno()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 242
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    .line 243
    return-void
.end method

.method public nextToken()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    if-eqz v13, :cond_f

    .line 256
    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 257
    iget v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v14, -0x4

    if-eq v13, v14, :cond_f

    .line 258
    iget v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 476
    :goto_e
    return v13

    .line 261
    :cond_f
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 262
    iget v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_32

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    move v2, v13

    .line 264
    .local v2, currentChar:I
    :goto_1c
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    if-eqz v13, :cond_2b

    const/16 v13, 0xa

    if-ne v2, v13, :cond_2b

    .line 265
    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 266
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 268
    :cond_2b
    const/4 v13, -0x1

    if-ne v2, v13, :cond_36

    .line 269
    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_e

    .line 262
    .end local v2           #currentChar:I
    :cond_32
    iget v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    move v2, v13

    goto :goto_1c

    .line 272
    .restart local v2       #currentChar:I
    :cond_36
    const/16 v13, 0xff

    if-le v2, v13, :cond_5a

    const/16 v13, 0x8

    move v3, v13

    .line 274
    .local v3, currentType:B
    :goto_3d
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_a1

    .line 278
    const/16 v13, 0xd

    if-ne v2, v13, :cond_73

    .line 279
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 280
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_60

    .line 281
    const/4 v13, 0x1

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 282
    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 283
    const/16 v13, 0xa

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_e

    .line 272
    .end local v3           #currentType:B
    :cond_5a
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v13, v13, v2

    move v3, v13

    goto :goto_3d

    .line 285
    .restart local v3       #currentType:B
    :cond_60
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0xa

    if-ne v2, v13, :cond_6c

    .line 286
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 299
    :cond_6c
    :goto_6c
    const/4 v13, -0x1

    if-ne v2, v13, :cond_93

    .line 300
    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_e

    .line 288
    :cond_73
    const/16 v13, 0xa

    if-ne v2, v13, :cond_8e

    .line 289
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 290
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_89

    .line 291
    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 292
    const/16 v13, 0xa

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_e

    .line 294
    :cond_89
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_6c

    .line 297
    :cond_8e
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_6c

    .line 302
    :cond_93
    const/16 v13, 0xff

    if-le v2, v13, :cond_9b

    const/16 v13, 0x8

    move v3, v13

    :goto_9a
    goto :goto_3d

    :cond_9b
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v13, v13, v2

    move v3, v13

    goto :goto_9a

    .line 310
    :cond_a1
    and-int/lit8 v13, v3, 0x10

    if-eqz v13, :cond_fc

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v5, digits:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, haveDecimal:Z
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_df

    const/4 v13, 0x1

    move v1, v13

    .line 314
    .local v1, checkJustNegative:Z
    :cond_b3
    :goto_b3
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_b8

    .line 315
    const/4 v7, 0x1

    .line 317
    :cond_b8
    int-to-char v13, v2

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 319
    const/16 v13, 0x30

    if-lt v2, v13, :cond_c8

    const/16 v13, 0x39

    if-le v2, v13, :cond_b3

    :cond_c8
    if-nez v7, :cond_ce

    const/16 v13, 0x2e

    if-eq v2, v13, :cond_b3

    .line 324
    :cond_ce
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 325
    if-eqz v1, :cond_e2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e2

    .line 327
    const/16 v13, 0x2d

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 312
    .end local v1           #checkJustNegative:Z
    :cond_df
    const/4 v13, 0x0

    move v1, v13

    goto :goto_b3

    .line 330
    .restart local v1       #checkJustNegative:Z
    :cond_e2
    :try_start_e2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_f0} :catch_f5

    .line 335
    :goto_f0
    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 331
    :catch_f5
    move-exception v13

    move-object v6, v13

    .line 333
    .local v6, e:Ljava/lang/NumberFormatException;
    const-wide/16 v13, 0x0

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D

    goto :goto_f0

    .line 338
    .end local v1           #checkJustNegative:Z
    .end local v5           #digits:Ljava/lang/StringBuilder;
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v7           #haveDecimal:Z
    :cond_fc
    and-int/lit8 v13, v3, 0x8

    if-eqz v13, :cond_138

    .line 339
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 341
    .local v12, word:Ljava/lang/StringBuilder;
    :cond_107
    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 343
    const/4 v13, -0x1

    if-eq v2, v13, :cond_11e

    const/16 v13, 0x100

    if-ge v2, v13, :cond_107

    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v13, v13, v2

    and-int/lit8 v13, v13, 0x18

    if-nez v13, :cond_107

    .line 348
    :cond_11e
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 349
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    if-eqz v13, :cond_133

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    :goto_12c
    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 351
    const/4 v13, -0x3

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 349
    :cond_133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_12c

    .line 354
    .end local v12           #word:Ljava/lang/StringBuilder;
    :cond_138
    const/4 v13, 0x2

    if-ne v3, v13, :cond_1d7

    .line 355
    move v8, v2

    .line 356
    .local v8, matchQuote:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v10, quoteString:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 359
    .local v9, peekOne:I
    :cond_145
    :goto_145
    if-ltz v9, :cond_1c3

    if-eq v9, v8, :cond_1c3

    const/16 v13, 0xd

    if-eq v9, v13, :cond_1c3

    const/16 v13, 0xa

    if-eq v9, v13, :cond_1c3

    .line 360
    const/4 v11, 0x1

    .line 361
    .local v11, readPeek:Z
    const/16 v13, 0x5c

    if-ne v9, v13, :cond_17a

    .line 362
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 364
    .local v0, c1:I
    const/16 v13, 0x37

    if-gt v0, v13, :cond_1aa

    const/16 v13, 0x30

    if-lt v0, v13, :cond_1aa

    .line 365
    const/16 v13, 0x30

    sub-int v4, v0, v13

    .line 366
    .local v4, digitValue:I
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 367
    const/16 v13, 0x37

    if-gt v0, v13, :cond_172

    const/16 v13, 0x30

    if-ge v0, v13, :cond_185

    .line 368
    :cond_172
    const/4 v11, 0x0

    .line 379
    :goto_173
    if-nez v11, :cond_1a8

    .line 381
    int-to-char v13, v4

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    move v9, v0

    .line 414
    .end local v0           #c1:I
    .end local v4           #digitValue:I
    :cond_17a
    :goto_17a
    if-eqz v11, :cond_145

    .line 415
    int-to-char v13, v9

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    goto :goto_145

    .line 370
    .restart local v0       #c1:I
    .restart local v4       #digitValue:I
    :cond_185
    mul-int/lit8 v13, v4, 0x8

    const/16 v14, 0x30

    sub-int v14, v0, v14

    add-int v4, v13, v14

    .line 371
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 373
    const/16 v13, 0x1f

    if-gt v4, v13, :cond_19d

    const/16 v13, 0x37

    if-gt v0, v13, :cond_19d

    const/16 v13, 0x30

    if-ge v0, v13, :cond_19f

    .line 374
    :cond_19d
    const/4 v11, 0x0

    goto :goto_173

    .line 376
    :cond_19f
    mul-int/lit8 v13, v4, 0x8

    const/16 v14, 0x30

    sub-int v14, v0, v14

    add-int v4, v13, v14

    goto :goto_173

    .line 384
    :cond_1a8
    move v9, v4

    goto :goto_17a

    .line 387
    .end local v4           #digitValue:I
    :cond_1aa
    sparse-switch v0, :sswitch_data_282

    .line 410
    move v9, v0

    goto :goto_17a

    .line 389
    :sswitch_1af
    const/4 v9, 0x7

    .line 390
    goto :goto_17a

    .line 392
    :sswitch_1b1
    const/16 v9, 0x8

    .line 393
    goto :goto_17a

    .line 395
    :sswitch_1b4
    const/16 v9, 0xc

    .line 396
    goto :goto_17a

    .line 398
    :sswitch_1b7
    const/16 v9, 0xa

    .line 399
    goto :goto_17a

    .line 401
    :sswitch_1ba
    const/16 v9, 0xd

    .line 402
    goto :goto_17a

    .line 404
    :sswitch_1bd
    const/16 v9, 0x9

    .line 405
    goto :goto_17a

    .line 407
    :sswitch_1c0
    const/16 v9, 0xb

    .line 408
    goto :goto_17a

    .line 419
    .end local v0           #c1:I
    .end local v11           #readPeek:Z
    :cond_1c3
    if-ne v9, v8, :cond_1c9

    .line 420
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 422
    :cond_1c9
    iput v9, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 423
    iput v8, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 424
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 425
    iget v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 428
    .end local v8           #matchQuote:I
    .end local v9           #peekOne:I
    .end local v10           #quoteString:Ljava/lang/StringBuilder;
    :cond_1d7
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_25e

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-nez v13, :cond_1e3

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_25e

    .line 429
    :cond_1e3
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0x2a

    if-ne v2, v13, :cond_235

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_235

    .line 430
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 432
    .restart local v9       #peekOne:I
    :cond_1f3
    :goto_1f3
    move v2, v9

    .line 433
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 434
    const/4 v13, -0x1

    if-ne v2, v13, :cond_203

    .line 435
    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 436
    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 438
    :cond_203
    const/16 v13, 0xd

    if-ne v2, v13, :cond_216

    .line 439
    const/16 v13, 0xa

    if-ne v9, v13, :cond_20f

    .line 440
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 442
    :cond_20f
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_1f3

    .line 443
    :cond_216
    const/16 v13, 0xa

    if-ne v2, v13, :cond_221

    .line 444
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_1f3

    .line 445
    :cond_221
    const/16 v13, 0x2a

    if-ne v2, v13, :cond_1f3

    const/16 v13, 0x2f

    if-ne v9, v13, :cond_1f3

    .line 446
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 447
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v13

    goto/16 :goto_e

    .line 450
    .end local v9           #peekOne:I
    :cond_235
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_253

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-eqz v13, :cond_253

    .line 453
    :cond_23d
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_24b

    const/16 v13, 0xd

    if-eq v2, v13, :cond_24b

    const/16 v13, 0xa

    if-ne v2, v13, :cond_23d

    .line 456
    :cond_24b
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 457
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v13

    goto/16 :goto_e

    .line 458
    :cond_253
    const/4 v13, 0x1

    if-eq v3, v13, :cond_25e

    .line 460
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 461
    const/16 v13, 0x2f

    iput v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_e

    .line 465
    :cond_25e
    const/4 v13, 0x1

    if-ne v3, v13, :cond_277

    .line 468
    :cond_261
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_26f

    const/16 v13, 0xd

    if-eq v2, v13, :cond_26f

    const/16 v13, 0xa

    if-ne v2, v13, :cond_261

    .line 471
    :cond_26f
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 472
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v13

    goto/16 :goto_e

    .line 475
    :cond_277
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 476
    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    move v13, v2

    goto/16 :goto_e

    .line 387
    :sswitch_data_282
    .sparse-switch
        0x61 -> :sswitch_1af
        0x62 -> :sswitch_1b1
        0x66 -> :sswitch_1b4
        0x6e -> :sswitch_1b7
        0x72 -> :sswitch_1ba
        0x74 -> :sswitch_1bd
        0x76 -> :sswitch_1c0
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .registers 4
    .parameter "ch"

    .prologue
    .line 489
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 490
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 492
    :cond_c
    return-void
.end method

.method public ordinaryChars(II)V
    .registers 6
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 506
    if-gez p1, :cond_3

    .line 507
    const/4 p1, 0x0

    .line 509
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_e

    .line 510
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int p2, v1, v2

    .line 512
    :cond_e
    move v0, p1

    .local v0, i:I
    :goto_f
    if-gt v0, p2, :cond_19

    .line 513
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 515
    :cond_19
    return-void
.end method

.method public parseNumbers()V
    .registers 5

    .prologue
    .line 521
    const/16 v0, 0x30

    .local v0, i:I
    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_12

    .line 522
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 524
    :cond_12
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 525
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 526
    return-void
.end method

.method public pushBack()V
    .registers 2

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 534
    return-void
.end method

.method public quoteChar(I)V
    .registers 4
    .parameter "ch"

    .prologue
    .line 544
    if-ltz p1, :cond_c

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 545
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 547
    :cond_c
    return-void
.end method

.method public resetSyntax()V
    .registers 4

    .prologue
    .line 561
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_d

    .line 562
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    :cond_d
    return-void
.end method

.method public slashSlashComments(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 575
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    .line 576
    return-void
.end method

.method public slashStarComments(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 588
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    .line 589
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x27

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "Token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v1, :sswitch_data_5e

    .line 616
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    .line 617
    :cond_1f
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :goto_24
    const-string v1, "], line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget v1, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 603
    :sswitch_33
    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 606
    :sswitch_39
    const-string v1, "EOL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 609
    :sswitch_3f
    const-string v1, "n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-wide v1, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 613
    :sswitch_4a
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 619
    :cond_50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 601
    nop

    :sswitch_data_5e
    .sparse-switch
        -0x3 -> :sswitch_4a
        -0x2 -> :sswitch_3f
        -0x1 -> :sswitch_33
        0xa -> :sswitch_39
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .registers 6
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 639
    if-gez p1, :cond_3

    .line 640
    const/4 p1, 0x0

    .line 642
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_e

    .line 643
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int p2, v1, v2

    .line 645
    :cond_e
    move v0, p1

    .local v0, i:I
    :goto_f
    if-gt v0, p2, :cond_19

    .line 646
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 648
    :cond_19
    return-void
.end method

.method public wordChars(II)V
    .registers 6
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 661
    if-gez p1, :cond_3

    .line 662
    const/4 p1, 0x0

    .line 664
    :cond_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_e

    .line 665
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int p2, v1, v2

    .line 667
    :cond_e
    move v0, p1

    .local v0, i:I
    :goto_f
    if-gt v0, p2, :cond_1d

    .line 668
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 670
    :cond_1d
    return-void
.end method
