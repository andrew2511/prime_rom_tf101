.class public final Ljava/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# static fields
.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = -0x2

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = -0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1


# instance fields
.field private baseLevel:I

.field private direction:I

.field private length:I

.field private offsetLevel:[B

.field private runs:[Lorg/apache/harmony/text/BidiRun;

.field private unidirectional:Z


# direct methods
.method private constructor <init>(J)V
    .registers 3
    .parameter "pBidi"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-direct {p0, p1, p2}, Ljava/text/Bidi;->readBidiInfo(J)V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "paragraph"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    if-nez p1, :cond_f

    move-object v1, v3

    :goto_5
    if-nez p1, :cond_15

    move v5, v2

    :goto_8
    move-object v0, p0

    move v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 239
    return-void

    .line 237
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    goto :goto_8
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 22
    .parameter "paragraph"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_d

    .line 91
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "paragraph is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v10

    .line 95
    .local v10, begin:I
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v16

    .line 96
    .local v16, end:I
    sub-int v8, v16, v10

    .line 97
    .local v8, length:I
    add-int/lit8 v5, v8, 0x1

    new-array v4, v5, [C

    .line 99
    .local v4, text:[C
    if-eqz v8, :cond_75

    .line 100
    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v6

    aput-char v6, v4, v5

    .line 106
    :goto_24
    const/4 v9, -0x2

    .line 107
    .local v9, flags:I
    sget-object v5, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v13

    .line 108
    .local v13, direction:Ljava/lang/Object;
    if-eqz v13, :cond_3d

    instance-of v5, v13, Ljava/lang/Boolean;

    if-eqz v5, :cond_3d

    .line 109
    sget-object v5, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 110
    const/4 v9, 0x0

    .line 117
    :cond_3d
    :goto_3d
    const/4 v6, 0x0

    .line 118
    .local v6, embeddings:[B
    const/16 v19, 0x1

    .local v19, textLimit:I
    const/16 v17, 0x1

    .local v17, i:I
    :goto_42
    move/from16 v0, v17

    move v1, v8

    if-ge v0, v1, :cond_97

    .line 121
    sget-object v5, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v15

    .line 122
    .local v15, embedding:Ljava/lang/Object;
    if-eqz v15, :cond_7b

    instance-of v5, v15, Ljava/lang/Integer;

    if-eqz v5, :cond_7b

    .line 123
    check-cast v15, Ljava/lang/Integer;

    .end local v15           #embedding:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 125
    .local v14, embLevel:I
    if-nez v6, :cond_60

    .line 126
    new-array v6, v8, [B

    .line 129
    :cond_60
    :goto_60
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8a

    .line 130
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v5

    aput-char v5, v4, v17

    .line 131
    const/4 v5, 0x1

    sub-int v5, v17, v5

    int-to-byte v7, v14

    aput-byte v7, v6, v5

    .line 129
    add-int/lit8 v17, v17, 0x1

    goto :goto_60

    .line 102
    .end local v6           #embeddings:[B
    .end local v9           #flags:I
    .end local v13           #direction:Ljava/lang/Object;
    .end local v14           #embLevel:I
    .end local v17           #i:I
    .end local v19           #textLimit:I
    :cond_75
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->first()C

    goto :goto_24

    .line 112
    .restart local v9       #flags:I
    .restart local v13       #direction:Ljava/lang/Object;
    :cond_79
    const/4 v9, 0x1

    goto :goto_3d

    .line 134
    .restart local v6       #embeddings:[B
    .restart local v15       #embedding:Ljava/lang/Object;
    .restart local v17       #i:I
    .restart local v19       #textLimit:I
    :cond_7b
    :goto_7b
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8a

    .line 135
    invoke-interface/range {p1 .. p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v5

    aput-char v5, v4, v17

    .line 134
    add-int/lit8 v17, v17, 0x1

    goto :goto_7b

    .line 118
    .end local v15           #embedding:Ljava/lang/Object;
    :cond_8a
    sget-object v5, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    sub-int/2addr v5, v10

    add-int/lit8 v19, v5, 0x1

    goto :goto_42

    .line 141
    :cond_97
    sget-object v5, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v18

    .line 142
    .local v18, numericShaper:Ljava/lang/Object;
    if-eqz v18, :cond_b4

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/awt/font/NumericShaper;

    move v5, v0

    if-eqz v5, :cond_b4

    .line 143
    check-cast v18, Ljava/awt/font/NumericShaper;

    .end local v18           #numericShaper:Ljava/lang/Object;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 146
    :cond_b4
    const-wide/16 v11, 0x0

    .line 148
    .local v11, bidi:J
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_b8
    invoke-static/range {v4 .. v9}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v11

    .line 149
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_c6

    .line 151
    invoke-static {v11, v12}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    .line 153
    return-void

    .line 151
    :catchall_c6
    move-exception v5

    invoke-static {v11, v12}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    throw v5
.end method

.method public constructor <init>([CI[BIII)V
    .registers 12
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    if-eqz p1, :cond_9

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, p5, :cond_f

    .line 192
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 195
    :cond_f
    if-eqz p3, :cond_1b

    .line 196
    array-length v2, p3

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_1b

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 201
    :cond_1b
    if-gez p2, :cond_36

    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative textStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_36
    if-gez p4, :cond_51

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative embStart value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_51
    if-gez p5, :cond_6c

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative paragraph length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_6c
    const-wide/16 v0, 0x0

    .line 213
    .local v0, bidi:J
    :try_start_6e
    invoke-static/range {p1 .. p6}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v0

    .line 214
    invoke-direct {p0, v0, v1}, Ljava/text/Bidi;->readBidiInfo(J)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_79

    .line 216
    invoke-static {v0, v1}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    .line 218
    return-void

    .line 216
    :catchall_79
    move-exception v2

    invoke-static {v0, v1}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    throw v2
.end method

.method private createEmptyLineBidi(J)Ljava/text/Bidi;
    .registers 6
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 391
    new-instance v0, Ljava/text/Bidi;

    invoke-direct {v0, p1, p2}, Ljava/text/Bidi;-><init>(J)V

    .line 392
    .local v0, result:Ljava/text/Bidi;
    const/4 v1, 0x0

    iput v1, v0, Ljava/text/Bidi;->length:I

    .line 393
    iput-object v2, v0, Ljava/text/Bidi;->offsetLevel:[B

    .line 394
    iput-object v2, v0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/text/Bidi;->unidirectional:Z

    .line 396
    return-object v0
.end method

.method private static createUBiDi([CI[BIII)J
    .registers 14
    .parameter "text"
    .parameter "textStart"
    .parameter "embeddings"
    .parameter "embStart"
    .parameter "paragraphLength"
    .parameter "flags"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, realText:[C
    const/4 v6, 0x0

    .line 248
    .local v6, realEmbeddings:[B
    if-eqz p0, :cond_8

    array-length v0, p0

    .end local v0           #realText:[C
    sub-int/2addr v0, p1

    if-ge v0, p4, :cond_e

    .line 249
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 251
    .restart local p0
    :cond_e
    new-array v7, p4, [C

    .line 252
    .local v7, realText:[C
    const/4 v0, 0x0

    invoke-static {p0, p1, v7, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    if-eqz p2, :cond_57

    .line 255
    array-length v0, p2

    sub-int p3, v0, p3

    if-ge p3, p4, :cond_21

    .line 256
    .end local p3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 258
    .restart local p0
    :cond_21
    if-lez p4, :cond_57

    .line 259
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 260
    .end local v6           #realEmbeddings:[B
    .local v0, temp:Ljava/text/Bidi;
    new-array v6, p4, [B

    .line 261
    .restart local v6       #realEmbeddings:[B
    iget-object p0, v0, Ljava/text/Bidi;->offsetLevel:[B

    .end local p0
    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-static {p0, p1, v6, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    .end local p1
    const/4 p0, 0x0

    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    :goto_39
    if-ge p1, p4, :cond_57

    .line 263
    aget-byte p0, p2, p1

    .line 264
    .local p0, e:B
    if-gez p0, :cond_4a

    .line 265
    const/16 p3, 0x80

    sub-int p0, p3, p0

    int-to-byte p0, p0

    aput-byte p0, v6, p1

    .line 262
    .end local p0           #e:B
    :goto_46
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto :goto_39

    .line 266
    .local p0, e:B
    :cond_4a
    if-lez p0, :cond_4f

    .line 267
    aput-byte p0, v6, p1

    goto :goto_46

    .line 269
    :cond_4f
    aget-byte p0, v6, p1

    .end local p0           #e:B
    or-int/lit8 p0, p0, -0x80

    int-to-byte p0, p0

    aput-byte p0, v6, p1

    goto :goto_46

    .line 275
    .end local v0           #temp:Ljava/text/Bidi;
    .end local p1           #i:I
    :cond_57
    const/4 p0, 0x1

    if-gt p5, p0, :cond_5d

    const/4 p0, -0x2

    if-ge p5, p0, :cond_5e

    .line 276
    :cond_5d
    const/4 p5, 0x0

    .line 279
    :cond_5e
    const-wide/16 v1, 0x0

    .line 280
    .local v1, bidi:J
    const/4 p0, 0x1

    .line 282
    .local p0, needsDeletion:Z
    :try_start_61
    invoke-static {}, Lorg/apache/harmony/text/NativeBidi;->ubidi_open()J

    move-result-wide v1

    move-object v3, v7

    move v4, p4

    move v5, p5

    .line 283
    invoke-static/range {v1 .. v6}, Lorg/apache/harmony/text/NativeBidi;->ubidi_setPara(J[CII[B)V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_72

    .line 284
    const/4 p0, 0x0

    .line 286
    if-eqz p0, :cond_71

    .line 287
    invoke-static {v1, v2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    .line 290
    :cond_71
    return-wide v1

    .line 286
    :catchall_72
    move-exception p1

    if-eqz p0, :cond_78

    .line 287
    invoke-static {v1, v2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    :cond_78
    throw p1
.end method

.method private readBidiInfo(J)V
    .registers 8
    .parameter "pBidi"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_getLength(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->length:I

    .line 302
    iget v1, p0, Ljava/text/Bidi;->length:I

    if-nez v1, :cond_26

    move-object v1, v3

    :goto_d
    iput-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    .line 304
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_getParaLevel(J)B

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->baseLevel:I

    .line 306
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_countRuns(J)I

    move-result v0

    .line 307
    .local v0, runCount:I
    if-nez v0, :cond_2b

    .line 308
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 309
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    .line 322
    :cond_1f
    :goto_1f
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_getDirection(J)I

    move-result v1

    iput v1, p0, Ljava/text/Bidi;->direction:I

    .line 323
    return-void

    .line 302
    .end local v0           #runCount:I
    :cond_26
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_getLevels(J)[B

    move-result-object v1

    goto :goto_d

    .line 310
    .restart local v0       #runCount:I
    :cond_2b
    if-gez v0, :cond_30

    .line 311
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    goto :goto_1f

    .line 313
    :cond_30
    invoke-static {p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_getRuns(J)[Lorg/apache/harmony/text/BidiRun;

    move-result-object v1

    iput-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    .line 316
    if-ne v0, v4, :cond_1f

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/harmony/text/BidiRun;->getLevel()I

    move-result v1

    iget v2, p0, Ljava/text/Bidi;->baseLevel:I

    if-ne v1, v2, :cond_1f

    .line 317
    iput-boolean v4, p0, Ljava/text/Bidi;->unidirectional:Z

    .line 318
    iput-object v3, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    goto :goto_1f
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 12
    .parameter "levels"
    .parameter "levelStart"
    .parameter "objects"
    .parameter "objectStart"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 530
    if-ltz p4, :cond_f

    if-ltz p1, :cond_f

    if-ltz p3, :cond_f

    array-length v4, p0

    sub-int/2addr v4, p1

    if-gt p4, v4, :cond_f

    array-length v4, p2

    sub-int/2addr v4, p3

    if-le p4, v4, :cond_58

    .line 533
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ranges (levels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", levelStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objects="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", objectStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_58
    new-array v2, p4, [B

    .line 539
    .local v2, realLevels:[B
    invoke-static {p0, p1, v2, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    invoke-static {v2, p4}, Lorg/apache/harmony/text/NativeBidi;->ubidi_reorderVisual([BI)[I

    move-result-object v1

    .line 543
    .local v1, indices:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_67
    if-ge v0, p4, :cond_74

    .line 545
    aget v4, v1, v0

    add-int/2addr v4, p3

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 548
    :cond_74
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    return-void
.end method

.method public static requiresBidi([CII)Z
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 569
    if-ltz p2, :cond_a

    if-ltz p1, :cond_a

    if-gt p1, p2, :cond_a

    array-length v1, p0

    if-le p2, v1, :cond_10

    .line 570
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 573
    :cond_10
    new-instance v0, Ljava/text/Bidi;

    const/4 v3, 0x0

    sub-int v5, p2, p1

    move-object v1, p0

    move v2, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 574
    .local v0, bidi:Ljava/text/Bidi;
    invoke-virtual {v0}, Ljava/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    move v1, v4

    goto :goto_22
.end method


# virtual methods
.method public baseIsLeftToRight()Z
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public createLineBidi(II)Ljava/text/Bidi;
    .registers 12
    .parameter "lineStart"
    .parameter "lineLimit"

    .prologue
    const/4 v3, 0x0

    .line 362
    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    iget v1, p0, Ljava/text/Bidi;->length:I

    if-gt p2, v1, :cond_b

    if-le p1, p2, :cond_46

    .line 363
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ranges (start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_46
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v0, v1, [C

    .line 368
    .local v0, text:[C
    const/16 v1, 0x61

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 369
    iget v1, p0, Ljava/text/Bidi;->length:I

    new-array v2, v1, [B

    .line 370
    .local v2, embeddings:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_54
    array-length v1, v2

    if-ge v6, v1, :cond_62

    .line 371
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, v6

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    .line 370
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 374
    :cond_62
    invoke-virtual {p0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v1

    if-eqz v1, :cond_7d

    move v5, v3

    .line 377
    .local v5, dir:I
    :goto_69
    const-wide/16 v7, 0x0

    .line 379
    .local v7, parent:J
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_6d
    iget v4, p0, Ljava/text/Bidi;->length:I

    invoke-static/range {v0 .. v5}, Ljava/text/Bidi;->createUBiDi([CI[BIII)J

    move-result-wide v7

    .line 380
    if-ne p1, p2, :cond_80

    .line 381
    invoke-direct {p0, v7, v8}, Ljava/text/Bidi;->createEmptyLineBidi(J)Ljava/text/Bidi;
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_8d

    move-result-object v1

    .line 385
    invoke-static {v7, v8}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    :goto_7c
    return-object v1

    .line 374
    .end local v5           #dir:I
    .end local v7           #parent:J
    :cond_7d
    const/4 v1, 0x1

    move v5, v1

    goto :goto_69

    .line 383
    .restart local v5       #dir:I
    .restart local v7       #parent:J
    :cond_80
    :try_start_80
    new-instance v1, Ljava/text/Bidi;

    invoke-static {v7, v8, p1, p2}, Lorg/apache/harmony/text/NativeBidi;->ubidi_setLine(JII)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/text/Bidi;-><init>(J)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8d

    .line 385
    invoke-static {v7, v8}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    goto :goto_7c

    :catchall_8d
    move-exception v1

    invoke-static {v7, v8}, Lorg/apache/harmony/text/NativeBidi;->ubidi_close(J)V

    throw v1
.end method

.method public getBaseLevel()I
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Ljava/text/Bidi;->length:I

    return v0
.end method

.method public getLevelAt(I)I
    .registers 4
    .parameter "offset"

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Ljava/text/Bidi;->offsetLevel:[B

    aget-byte v1, v1, p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_7

    and-int/lit16 v1, v1, -0x81

    .line 428
    :goto_6
    return v1

    .line 427
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 428
    .local v0, e:Ljava/lang/RuntimeException;
    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    goto :goto_6
.end method

.method public getRunCount()I
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    array-length v0, v0

    goto :goto_5
.end method

.method public getRunLevel(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 449
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->baseLevel:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getLevel()I

    move-result v0

    goto :goto_6
.end method

.method public getRunLimit(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 460
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/text/Bidi;->length:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getLimit()I

    move-result v0

    goto :goto_6
.end method

.method public getRunStart(I)I
    .registers 3
    .parameter "run"

    .prologue
    .line 471
    iget-boolean v0, p0, Ljava/text/Bidi;->unidirectional:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/harmony/text/BidiRun;->getStart()I

    move-result v0

    goto :goto_5
.end method

.method public isLeftToRight()Z
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMixed()Z
    .registers 3

    .prologue
    .line 492
    iget v0, p0, Ljava/text/Bidi;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isRightToLeft()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 503
    iget v0, p0, Ljava/text/Bidi;->direction:I

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " baseLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->baseLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/Bidi;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/Bidi;->runs:[Lorg/apache/harmony/text/BidiRun;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
