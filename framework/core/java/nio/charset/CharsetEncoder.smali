.class public abstract Ljava/nio/charset/CharsetEncoder;
.super Ljava/lang/Object;
.source "CharsetEncoder.java"


# static fields
.field private static final END:I = 0x2

.field private static final FLUSH:I = 0x3

.field private static final INIT:I = 0x0

.field private static final ONGOING:I = 0x1


# instance fields
.field private averBytes:F

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private malformAction:Ljava/nio/charset/CodingErrorAction;

.field private maxBytes:F

.field private replace:[B

.field private status:I

.field private unmapAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .registers 7
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 123
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FF[B)V
    .registers 7
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"
    .parameter "replacement"

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    cmpg-float v0, p2, v1

    if-lez v0, :cond_c

    cmpg-float v0, p3, v1

    if-gtz v0, :cond_14

    .line 149
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar and maxBytesPerChar must both be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_14
    cmpl-float v0, p2, p3

    if-lez v0, :cond_20

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "averageBytesPerChar is greater than maxBytesPerChar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_20
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    .line 155
    iput p2, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    .line 156
    iput p3, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 158
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 159
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    iput-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 160
    instance-of v0, p0, Llibcore/icu/CharsetEncoderICU;

    if-eqz v0, :cond_39

    .line 163
    invoke-direct {p0, p4}, Ljava/nio/charset/CharsetEncoder;->uncheckedReplaceWith([B)V

    .line 167
    :goto_38
    return-void

    .line 165
    :cond_39
    invoke-virtual {p0, p4}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    goto :goto_38
.end method

.method private allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "output"

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-nez v1, :cond_c

    .line 348
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 353
    :goto_b
    return-object v1

    .line 350
    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    .local v0, result:Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 352
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object v1, v0

    .line 353
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
    .line 338
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 339
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 340
    :cond_16
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_2c

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 341
    new-instance v0, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v0

    .line 343
    :cond_2c
    return-void
.end method

.method private implCanEncode(Ljava/nio/CharBuffer;)Z
    .registers 8
    .parameter "cb"

    .prologue
    .line 202
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 203
    const/4 v4, 0x0

    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 205
    :cond_8
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v4, :cond_14

    .line 206
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "encoding already in progress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_14
    iget-object v1, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 209
    .local v1, malformBak:Ljava/nio/charset/CodingErrorAction;
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 210
    .local v3, unmapBak:Ljava/nio/charset/CodingErrorAction;
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 211
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 212
    const/4 v2, 0x1

    .line 214
    .local v2, result:Z
    :try_start_23
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_26
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_23 .. :try_end_26} :catch_30

    .line 218
    :goto_26
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 219
    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 220
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 221
    return v2

    .line 215
    :catch_30
    move-exception v0

    .line 216
    .local v0, e:Ljava/nio/charset/CharacterCodingException;
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private final uncheckedReplaceWith([B)V
    .registers 3
    .parameter "replacement"

    .prologue
    .line 736
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    .line 737
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implReplaceWith([B)V

    .line 738
    return-void
.end method


# virtual methods
.method public final averageBytesPerChar()F
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    return v0
.end method

.method public canEncode(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v0

    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "sequence"

    .prologue
    .line 243
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_f

    .line 244
    check-cast p1, Ljava/nio/CharBuffer;

    .end local p1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 248
    .local v0, cb:Ljava/nio/CharBuffer;
    :goto_a
    invoke-direct {p0, v0}, Ljava/nio/charset/CharsetEncoder;->implCanEncode(Ljava/nio/CharBuffer;)Z

    move-result v1

    return v1

    .line 246
    .end local v0           #cb:Ljava/nio/CharBuffer;
    .restart local p1
    :cond_f
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    .restart local v0       #cb:Ljava/nio/CharBuffer;
    goto :goto_a
.end method

.method public final charset()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_c

    .line 293
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 331
    :goto_b
    return-object v3

    .line 295
    :cond_c
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 296
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->averBytes:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 297
    .local v0, length:I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 298
    .local v1, output:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 300
    .local v2, result:Ljava/nio/charset/CoderResult;
    :goto_1d
    invoke-virtual {p0, p1, v1, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 301
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_3d

    .line 309
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 310
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 313
    :goto_2d
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 314
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_4a

    .line 315
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 330
    :cond_38
    const/4 v3, 0x3

    iput v3, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    move-object v3, v1

    .line 331
    goto :goto_b

    .line 303
    :cond_3d
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_46

    .line 304
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 305
    goto :goto_1d

    .line 307
    :cond_46
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_1d

    .line 317
    :cond_4a
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v2, v3, :cond_53

    .line 318
    invoke-direct {p0, v1}, Ljava/nio/charset/CharsetEncoder;->allocateMore(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 319
    goto :goto_2d

    .line 321
    :cond_53
    invoke-direct {p0, v2}, Ljava/nio/charset/CharsetEncoder;->checkCoderResult(Ljava/nio/charset/CoderResult;)V

    .line 322
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 323
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 324
    new-instance v3, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v3

    .line 325
    :cond_69
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 326
    new-instance v3, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v3
.end method

.method public final encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;
    .registers 12
    .parameter "in"
    .parameter "out"
    .parameter "endOfInput"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 419
    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    if-nez p3, :cond_24

    iget v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-ne v4, v6, :cond_24

    .line 420
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 458
    .local v0, action:Ljava/nio/charset/CodingErrorAction;
    .local v3, result:Ljava/nio/charset/CoderResult;
    :cond_13
    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 464
    :cond_18
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    .end local v0           #action:Ljava/nio/charset/CodingErrorAction;
    .end local v3           #result:Ljava/nio/charset/CoderResult;
    :cond_24
    :try_start_24
    invoke-virtual {p0, p1, p2}, Ljava/nio/charset/CharsetEncoder;->encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    :try_end_27
    .catch Ljava/nio/BufferOverflowException; {:try_start_24 .. :try_end_27} :catch_57
    .catch Ljava/nio/BufferUnderflowException; {:try_start_24 .. :try_end_27} :catch_5e

    move-result-object v3

    .line 432
    .restart local v3       #result:Ljava/nio/charset/CoderResult;
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v4, :cond_6b

    .line 433
    if-eqz p3, :cond_65

    move v4, v6

    :goto_2f
    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 434
    if-eqz p3, :cond_69

    .line 435
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 436
    .local v2, remaining:I
    if-lez v2, :cond_67

    .line 437
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 448
    .end local v2           #remaining:I
    :cond_3d
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 449
    .restart local v0       #action:Ljava/nio/charset/CodingErrorAction;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 450
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 454
    :cond_47
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v4, :cond_78

    .line 455
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    array-length v5, v5

    if-ge v4, v5, :cond_13

    .line 456
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 461
    .end local v0           #action:Ljava/nio/charset/CodingErrorAction;
    :goto_56
    return-object v4

    .line 427
    .end local v3           #result:Ljava/nio/charset/CoderResult;
    :catch_57
    move-exception v1

    .line 428
    .local v1, e:Ljava/nio/BufferOverflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 429
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    :catch_5e
    move-exception v1

    .line 430
    .local v1, e:Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/CoderMalfunctionError;

    invoke-direct {v4, v1}, Ljava/nio/charset/CoderMalfunctionError;-><init>(Ljava/lang/Exception;)V

    throw v4

    .end local v1           #e:Ljava/nio/BufferUnderflowException;
    .restart local v3       #result:Ljava/nio/charset/CoderResult;
    :cond_65
    move v4, v7

    .line 433
    goto :goto_2f

    .restart local v2       #remaining:I
    :cond_67
    move-object v4, v3

    .line 439
    goto :goto_56

    .end local v2           #remaining:I
    :cond_69
    move-object v4, v3

    .line 442
    goto :goto_56

    .line 444
    :cond_6b
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v4, :cond_3d

    .line 445
    if-eqz p3, :cond_76

    move v4, v6

    :goto_72
    iput v4, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    move-object v4, v3

    .line 446
    goto :goto_56

    :cond_76
    move v4, v7

    .line 445
    goto :goto_72

    .line 460
    .restart local v0       #action:Ljava/nio/charset/CodingErrorAction;
    :cond_78
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v4, :cond_18

    move-object v4, v3

    .line 461
    goto :goto_56
.end method

.method protected abstract encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
.end method

.method public final flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 5
    .parameter "out"

    .prologue
    .line 534
    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    if-eqz v1, :cond_f

    .line 535
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 537
    :cond_f
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 538
    .local v0, result:Ljava/nio/charset/CoderResult;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v0, v1, :cond_1a

    .line 539
    const/4 v1, 0x3

    iput v1, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 541
    :cond_1a
    return-object v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 3
    .parameter "out"

    .prologue
    .line 555
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 568
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 580
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 2
    .parameter "newReplacement"

    .prologue
    .line 591
    return-void
.end method

.method protected implReset()V
    .registers 1

    .prologue
    .line 599
    return-void
.end method

.method public isLegalReplacement([B)Z
    .registers 8
    .parameter "replacement"

    .prologue
    const/4 v5, 0x1

    .line 616
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v3, :cond_1b

    .line 617
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 618
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 619
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 621
    :cond_1b
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 622
    .local v0, in:Ljava/nio/ByteBuffer;
    array-length v3, p1

    int-to-float v3, v3

    iget-object v4, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 623
    .local v1, out:Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljava/nio/charset/CharsetEncoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 624
    .local v2, result:Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_3b

    move v3, v5

    :goto_3a
    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method public malformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public final maxBytesPerChar()F
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    return v0
.end method

.method public final onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .parameter "newAction"

    .prologue
    .line 663
    if-nez p1, :cond_a

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_a
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->malformAction:Ljava/nio/charset/CodingErrorAction;

    .line 667
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V

    .line 668
    return-object p0
.end method

.method public final onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .registers 4
    .parameter "newAction"

    .prologue
    .line 685
    if-nez p1, :cond_a

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAction == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_a
    iput-object p1, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    .line 689
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V

    .line 690
    return-object p0
.end method

.method public final replaceWith([B)Ljava/nio/charset/CharsetEncoder;
    .registers 5
    .parameter "replacement"

    .prologue
    .line 721
    if-nez p1, :cond_a

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_a
    array-length v0, p1

    if-eqz v0, :cond_15

    iget v0, p0, Ljava/nio/charset/CharsetEncoder;->maxBytes:F

    array-length v1, p1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    .line 725
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad replacement length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_2f
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-nez v0, :cond_52

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad replacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_52
    invoke-direct {p0, p1}, Ljava/nio/charset/CharsetEncoder;->uncheckedReplaceWith([B)V

    .line 731
    return-object p0
.end method

.method public final replacement()[B
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->replace:[B

    return-object v0
.end method

.method public final reset()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .prologue
    .line 748
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/charset/CharsetEncoder;->status:I

    .line 749
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->implReset()V

    .line 750
    return-object p0
.end method

.method public unmappableCharacterAction()Ljava/nio/charset/CodingErrorAction;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Ljava/nio/charset/CharsetEncoder;->unmapAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method
