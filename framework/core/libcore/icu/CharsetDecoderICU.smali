.class public final Llibcore/icu/CharsetDecoderICU;
.super Ljava/nio/charset/CharsetDecoder;
.source "CharsetDecoderICU.java"


# static fields
.field private static final INPUT_HELD:I = 0x3

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_BYTES:I = 0x2

.field private static final MAX_CHARS_PER_BYTE:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[B

.field private allocatedOutput:[C

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[B

.field private outEnd:I

.field private output:[C

.field private savedInputHeldLen:I


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;FJ)V
    .registers 8
    .parameter "cs"
    .parameter "averageCharsPerByte"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 76
    const/high16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    .line 42
    iput-object v2, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    .line 43
    iput-object v2, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    .line 46
    iput-object v2, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    .line 47
    iput-object v2, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    .line 77
    iput-wide p3, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    .line 78
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    .line 273
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Llibcore/icu/CharsetDecoderICU;->savedInputHeldLen:I

    add-int/2addr v1, v2

    .line 291
    :goto_23
    return v1

    .line 276
    :cond_24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    .line 278
    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    if-eqz v1, :cond_35

    iget v1, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    iget-object v2, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    array-length v2, v2

    if-le v1, v2, :cond_3b

    .line 279
    :cond_35
    iget v1, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    new-array v1, v1, [B

    iput-object v1, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    .line 281
    :cond_3b
    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    iput-object v1, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 285
    .local v0, pos:I
    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    const/4 v2, 0x0

    iget v3, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    iget v1, p0, Llibcore/icu/CharsetDecoderICU;->savedInputHeldLen:I

    goto :goto_23
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 249
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    .line 250
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    .line 251
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :goto_20
    return v0

    .line 254
    :cond_21
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    .line 256
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    if-eqz v0, :cond_32

    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 257
    :cond_32
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    .line 259
    :cond_38
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    .line 264
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Llibcore/icu/CharsetDecoderICU;
    .registers 9
    .parameter "cs"
    .parameter "icuCanonicalName"

    .prologue
    const-wide/16 v5, 0x0

    .line 60
    const-wide/16 v0, 0x0

    .line 62
    .local v0, address:J
    :try_start_4
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->getAveCharsPerByte(J)F

    move-result v2

    .line 64
    .local v2, averageCharsPerByte:F
    new-instance v3, Llibcore/icu/CharsetDecoderICU;

    invoke-direct {v3, p0, v2, v0, v1}, Llibcore/icu/CharsetDecoderICU;-><init>(Ljava/nio/charset/Charset;FJ)V

    .line 65
    .local v3, result:Llibcore/icu/CharsetDecoderICU;
    const-wide/16 v0, 0x0

    .line 66
    invoke-direct {v3}, Llibcore/icu/CharsetDecoderICU;->updateCallback()V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1e

    .line 69
    cmp-long v4, v0, v5

    if-eqz v4, :cond_1d

    .line 70
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_1d
    return-object v3

    .line 69
    .end local v2           #averageCharsPerByte:F
    .end local v3           #result:Llibcore/icu/CharsetDecoderICU;
    :catchall_1e
    move-exception v4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_26

    .line 70
    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_26
    throw v4
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x3

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Llibcore/icu/CharsetDecoderICU;->savedInputHeldLen:I

    add-int/2addr v0, v1

    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    aget v0, v0, v3

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->savedInputHeldLen:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    .line 312
    return-void
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 296
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 297
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    iget-object v1, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    .line 303
    return-void

    .line 299
    :cond_1c
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    const/4 v1, 0x0

    iget-object v2, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_18
.end method

.method private updateCallback()V
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackDecode(JLjava/nio/charset/CharsetDecoder;)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    .line 117
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 120
    :cond_17
    return-void
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 225
    :goto_9
    return-object v0

    .line 198
    :cond_a
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 199
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 200
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 203
    :try_start_20
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    iget v3, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    iget-object v4, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    iget v5, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    iget-object v6, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->decode(J[BI[CI[IZ)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    .line 214
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_42

    .line 215
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_77

    .line 224
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 216
    :cond_42
    :try_start_42
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_58

    .line 217
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_77

    move-result-object v0

    .line 224
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 218
    :cond_58
    :try_start_58
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6e

    .line 219
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_77

    move-result-object v0

    .line 224
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 222
    :cond_6e
    :try_start_6e
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_77

    .line 224
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    goto :goto_9

    .line 224
    :catchall_77
    move-exception v0

    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-direct {p0, p2}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 240
    return-void

    .line 238
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7
    .parameter "out"

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 133
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    iget-object v2, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    iget v3, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    iget-object v4, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/icu/NativeConverter;->flushByteToChar(J[CI[I)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    .line 141
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 142
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2e

    .line 143
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_52

    .line 155
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 156
    invoke-virtual {p0}, Llibcore/icu/CharsetDecoderICU;->implReset()V

    :goto_2d
    return-object v0

    .line 144
    :cond_2e
    :try_start_2e
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4b

    .line 145
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_5a

    .line 146
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_52

    move-result-object v0

    .line 155
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 156
    invoke-virtual {p0}, Llibcore/icu/CharsetDecoderICU;->implReset()V

    goto :goto_2d

    .line 149
    :cond_4b
    :try_start_4b
    iget v0, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_52

    .line 155
    :catchall_52
    move-exception v0

    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 156
    invoke-virtual {p0}, Llibcore/icu/CharsetDecoderICU;->implReset()V

    throw v0

    .line 152
    :cond_5a
    :try_start_5a
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_52

    .line 155
    invoke-direct {p0, p1}, Llibcore/icu/CharsetDecoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 156
    invoke-virtual {p0}, Llibcore/icu/CharsetDecoderICU;->implReset()V

    goto :goto_2d
.end method

.method protected final implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 102
    invoke-direct {p0}, Llibcore/icu/CharsetDecoderICU;->updateCallback()V

    .line 103
    return-void
.end method

.method protected final implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 112
    invoke-direct {p0}, Llibcore/icu/CharsetDecoderICU;->updateCallback()V

    .line 113
    return-void
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .registers 6
    .parameter "newReplacement"

    .prologue
    .line 87
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-wide v1, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    invoke-static {v1, v2}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    if-le v0, v1, :cond_1a

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_1a
    invoke-direct {p0}, Llibcore/icu/CharsetDecoderICU;->updateCallback()V

    .line 93
    :cond_1d
    return-void
.end method

.method protected implReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    iget-wide v0, p0, Llibcore/icu/CharsetDecoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetByteToChar(J)V

    .line 162
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    aput v2, v0, v2

    .line 163
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 165
    iget-object v0, p0, Llibcore/icu/CharsetDecoderICU;->data:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 166
    iput v2, p0, Llibcore/icu/CharsetDecoderICU;->savedInputHeldLen:I

    .line 167
    iput-object v3, p0, Llibcore/icu/CharsetDecoderICU;->output:[C

    .line 168
    iput-object v3, p0, Llibcore/icu/CharsetDecoderICU;->input:[B

    .line 169
    iput-object v3, p0, Llibcore/icu/CharsetDecoderICU;->allocatedInput:[B

    .line 170
    iput-object v3, p0, Llibcore/icu/CharsetDecoderICU;->allocatedOutput:[C

    .line 171
    iput v2, p0, Llibcore/icu/CharsetDecoderICU;->ec:I

    .line 172
    iput v2, p0, Llibcore/icu/CharsetDecoderICU;->inEnd:I

    .line 173
    iput v2, p0, Llibcore/icu/CharsetDecoderICU;->outEnd:I

    .line 174
    return-void
.end method
