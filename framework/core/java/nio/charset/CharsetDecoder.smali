.class public abstract Ljava/nio/charset/CharsetDecoder;
.super Ljava/lang/Object;
.source "CharsetDecoder.java"


# static fields
.field private static final END:I = 0x2

.field private static final FLUSH:I = 0x3

.field private static final INIT:I = 0x0

.field private static final ONGOING:I = 0x1


# instance fields
.field private averChars:F

.field private cs:Ljava/nio/charset/Charset;

.field private malformAction:Ljava/nio/charset/CodingErrorAction;

.field private maxChars:F

.field private replace:Ljava/lang/String;

.field private status:I

.field private unmapAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .registers 6
    .parameter "charset"
    .parameter "averageCharsPerByte"
    .parameter "maxCharsPerByte"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    cmpg-float v0, p2, v1

    if-lez v0, :cond_c

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_14

    .line 139
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte and maxCharsPerByte must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_14
    cmpl-float v0, p2, p3

    if-lez v0, :cond_20

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageCharsPerByte is greater than maxCharsPerByte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_20
    iput p2, p0, Ljava/nio/charset/CharsetDecoder;->averChars:F

    .line 145
    iput p3, p0, Ljava/nio/charset/CharsetDecoder;->maxChars:F

    .line 146
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->cs:Ljava/nio/charset/Charset;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    .line 148
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 149
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 150
    const-string v0, "\ufffd"

    iput-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replace:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 4
    .parameter "output"

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_c

    .line 259
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 264
    :goto_b
    return-object v1

    .line 261
    :cond_c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 262
    .local v0, result:Ljava/nio/CharBuffer;
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 263
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v1, v0

    .line 264
    goto :goto_b
.end method

.method private checkCoderResult(Ljava/nio/charset/CoderResult;)V
    .registers 4
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_16

    .line 245
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 246
    :cond_16
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_2c

    .line 248
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 250
    :cond_2c
    return-void
.end method


# virtual methods
.method public final averageCharsPerByte()F
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->averChars:F

    return v0
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->cs:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 209
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->averChars:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 210
    .local v0, length:I
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 211
    .local v1, output:Ljava/nio/CharBuffer;
    const/4 v2, 0x0

    .line 213
    .local v2, result:Ljava/nio/charset/CoderResult;
    :cond_11
    :goto_11
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 214
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 215
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 221
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 222
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 225
    :goto_27
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 226
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetDecoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 227
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 228
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    goto :goto_27

    .line 217
    :cond_39
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 218
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetDecoder;->allocateMore(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    goto :goto_11

    .line 234
    :cond_44
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 235
    const/4 v3, 0x3

    iput v3, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    .line 236
    return-object v1
.end method

.method public final decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"
    .parameter "endOfInput"

    .prologue
    const/4 v6, 0x2

    .line 336
    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    if-nez p3, :cond_12

    iget v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    if-ne v4, v6, :cond_12

    .line 337
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 340
    :cond_12
    const/4 v3, 0x0

    .line 344
    .local v3, result:Ljava/nio/charset/CoderResult;
    :goto_13
    const/4 v0, 0x0

    .line 346
    .local v0, action:Ljava/nio/charset/CodingErrorAction;
    :try_start_14
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetDecoder;->decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_17
    .catch Ljava/nio/BufferOverflowException; {:try_start_14 .. :try_end_17} :catch_37
    .catch Ljava/nio/BufferUnderflowException; {:try_start_14 .. :try_end_17} :catch_3e

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 359
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 360
    .local v2, remaining:I
    if-eqz p3, :cond_45

    move v4, v6

    :goto_25
    iput v4, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    .line 361
    if-eqz p3, :cond_47

    if-lez v2, :cond_47

    .line 362
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 367
    .end local v2           #remaining:I
    :cond_2f
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_49

    move-object v4, v3

    .line 383
    :goto_36
    return-object v4

    .line 347
    :catch_37
    move-exception v1

    .line 349
    .local v1, ex:Ljava/nio/BufferOverflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 350
    .end local v1           #ex:Ljava/nio/BufferOverflowException;
    :catch_3e
    move-exception v1

    .line 352
    .local v1, ex:Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 360
    .end local v1           #ex:Ljava/nio/BufferUnderflowException;
    .restart local v2       #remaining:I
    :cond_45
    const/4 v4, 0x1

    goto :goto_25

    :cond_47
    move-object v4, v3

    .line 364
    goto :goto_36

    .line 371
    .end local v2           #remaining:I
    :cond_49
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 372
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 373
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 376
    :cond_53
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v4, :cond_78

    .line 377
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Ljava/nio/charset/CharsetDecoder;->replace:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_66

    .line 378
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_36

    .line 380
    :cond_66
    iget-object v4, p0, Ljava/nio/charset/CharsetDecoder;->replace:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 385
    :cond_6b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_13

    .line 382
    :cond_78
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v4, :cond_6b

    move-object v4, v3

    .line 383
    goto :goto_36
.end method

.method protected abstract decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public detectedCharset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .parameter "out"

    .prologue
    .line 482
    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    if-eqz v1, :cond_f

    .line 483
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 485
    :cond_f
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 486
    .local v0, result:Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1a

    .line 487
    const/4 v1, 0x3

    iput v1, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    .line 489
    :cond_1a
    return-object v0
.end method

.method protected implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .parameter "out"

    .prologue
    .line 503
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 516
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 528
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 2
    .parameter "newReplacement"

    .prologue
    .line 539
    return-void
.end method

.method protected implReset()V
    .registers 1

    .prologue
    .line 547
    return-void
.end method

.method public isAutoDetecting()Z
    .registers 2

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public isCharsetDetected()Z
    .registers 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxCharsPerByte()F
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Ljava/nio/charset/CharsetDecoder;->maxChars:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 3
    .parameter "newAction"

    .prologue
    .line 623
    if-nez p1, :cond_8

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 626
    :cond_8
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 627
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 628
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;
    .registers 3
    .parameter "newAction"

    .prologue
    .line 645
    if-nez p1, :cond_8

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 648
    :cond_8
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 649
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 650
    return-object p0
.end method

.method public final replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 4
    .parameter "newReplacement"

    .prologue
    .line 679
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 680
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Replacement string cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ljava/nio/charset/CharsetDecoder;->maxChars:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Replacement string cannot be longer than max characters per byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_23
    iput-object p1, p0, Ljava/nio/charset/CharsetDecoder;->replace:Ljava/lang/String;

    .line 686
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implReplaceWith(Ljava/lang/String;)V

    .line 687
    return-object p0
.end method

.method public final replacement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->replace:Ljava/lang/String;

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .prologue
    .line 698
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetDecoder;->status:I

    .line 699
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 700
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Ljava/nio/charset/CharsetDecoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
