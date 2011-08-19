.class public final Llibcore/icu/CharsetEncoderICU;
.super Ljava/nio/charset/CharsetEncoder;
.source "CharsetEncoderICU.java"


# static fields
.field private static final DEFAULT_REPLACEMENTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final INPUT_HELD:I = 0x3

.field private static final INPUT_OFFSET:I = 0x0

.field private static final INVALID_CHARS:I = 0x2

.field private static final OUTPUT_OFFSET:I = 0x1


# instance fields
.field private allocatedInput:[C

.field private allocatedOutput:[B

.field private converterHandle:J

.field private data:[I

.field private ec:I

.field private inEnd:I

.field private input:[C

.field private outEnd:I

.field private output:[B

.field private savedInputHeldLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Llibcore/icu/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    .line 36
    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 37
    .local v0, questionMark:[B
    sget-object v1, Llibcore/icu/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "UTF-8"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Llibcore/icu/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Llibcore/icu/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    const-string v2, "US-ASCII"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;FF[BJ)V
    .registers 10
    .parameter "cs"
    .parameter "averageBytesPerChar"
    .parameter "maxBytesPerChar"
    .parameter "replacement"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    .line 56
    iput-object v2, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    .line 57
    iput-object v2, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    .line 60
    iput-object v2, p0, Llibcore/icu/CharsetEncoderICU;->allocatedInput:[C

    .line 61
    iput-object v2, p0, Llibcore/icu/CharsetEncoderICU;->allocatedOutput:[B

    .line 103
    iput-wide p5, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    .line 104
    return-void
.end method

.method private getArray(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 276
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    .line 278
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    :goto_20
    return v0

    .line 281
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    .line 283
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->allocatedOutput:[B

    if-eqz v0, :cond_32

    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->allocatedOutput:[B

    array-length v1, v1

    if-le v0, v1, :cond_38

    .line 284
    :cond_32
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    new-array v0, v0, [B

    iput-object v0, p0, Llibcore/icu/CharsetEncoderICU;->allocatedOutput:[B

    .line 286
    :cond_38
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->allocatedOutput:[B

    iput-object v0, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    .line 291
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private getArray(Ljava/nio/CharBuffer;)I
    .registers 6
    .parameter "in"

    .prologue
    .line 296
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 298
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    .line 299
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    .line 300
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    add-int/2addr v1, v2

    .line 318
    :goto_23
    return v1

    .line 303
    :cond_24
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    iput v1, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    .line 305
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->allocatedInput:[C

    if-eqz v1, :cond_35

    iget v1, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    iget-object v2, p0, Llibcore/icu/CharsetEncoderICU;->allocatedInput:[C

    array-length v2, v2

    if-le v1, v2, :cond_3b

    .line 306
    :cond_35
    iget v1, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    new-array v1, v1, [C

    iput-object v1, p0, Llibcore/icu/CharsetEncoderICU;->allocatedInput:[C

    .line 308
    :cond_3b
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->allocatedInput:[C

    iput-object v1, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    .line 311
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 312
    .local v0, pos:I
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    const/4 v2, 0x0

    iget v3, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 314
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    iget v1, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    goto :goto_23
.end method

.method private static makeReplacement(Ljava/lang/String;J)[B
    .registers 5
    .parameter "icuCanonicalName"
    .parameter "address"

    .prologue
    .line 93
    sget-object v1, Llibcore/icu/CharsetEncoderICU;->DEFAULT_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 94
    .local v0, replacement:[B
    if-eqz v0, :cond_12

    .line 95
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v1, p0

    .line 98
    :goto_11
    return-object v1

    .restart local p0
    :cond_12
    invoke-static {p1, p2}, Llibcore/icu/NativeConverter;->getSubstitutionBytes(J)[B

    move-result-object v1

    goto :goto_11
.end method

.method public static newInstance(Ljava/nio/charset/Charset;Ljava/lang/String;)Llibcore/icu/CharsetEncoderICU;
    .registers 11
    .parameter "cs"
    .parameter "icuCanonicalName"

    .prologue
    const-wide/16 v7, 0x0

    .line 74
    const-wide/16 v5, 0x0

    .line 76
    .local v5, address:J
    :try_start_4
    invoke-static {p1}, Llibcore/icu/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v5

    .line 77
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getAveBytesPerChar(J)F

    move-result v2

    .line 78
    .local v2, averageBytesPerChar:F
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    int-to-float v3, v1

    .line 79
    .local v3, maxBytesPerChar:F
    invoke-static {p1, v5, v6}, Llibcore/icu/CharsetEncoderICU;->makeReplacement(Ljava/lang/String;J)[B

    move-result-object v4

    .line 80
    .local v4, replacement:[B
    new-instance v0, Llibcore/icu/CharsetEncoderICU;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Llibcore/icu/CharsetEncoderICU;-><init>(Ljava/nio/charset/Charset;FF[BJ)V

    .line 81
    .local v0, result:Llibcore/icu/CharsetEncoderICU;
    const-wide/16 v5, 0x0

    .line 82
    invoke-direct {v0}, Llibcore/icu/CharsetEncoderICU;->updateCallback()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_28

    .line 85
    cmp-long v1, v5, v7

    if-eqz v1, :cond_27

    .line 86
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_27
    return-object v0

    .line 85
    .end local v0           #result:Llibcore/icu/CharsetEncoderICU;
    .end local v2           #averageBytesPerChar:F
    .end local v3           #maxBytesPerChar:F
    .end local v4           #replacement:[B
    :catchall_28
    move-exception v1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_30

    .line 86
    invoke-static {v5, v6}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    :cond_30
    throw v1
.end method

.method private setPosition(Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 337
    :goto_18
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    .line 339
    return-void

    .line 333
    :cond_1c
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    const/4 v1, 0x0

    iget-object v2, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_18
.end method

.method private setPosition(Ljava/nio/CharBuffer;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 362
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget-object v2, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    add-int v0, v1, v2

    .line 363
    .local v0, len:I
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 364
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    .line 368
    iget-object v1, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_29

    iget v1, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    if-gtz v1, :cond_33

    .line 369
    :cond_29
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget v2, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 375
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    .line 377
    return-void
.end method

.method private updateCallback()V
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p0}, Llibcore/icu/NativeConverter;->setCallbackEncode(JLjava/nio/charset/CharsetEncoder;)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    .line 143
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 144
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 146
    :cond_17
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Llibcore/icu/CharsetEncoderICU;->canEncode(I)Z

    move-result v0

    return v0
.end method

.method public canEncode(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    .line 253
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1, p1}, Llibcore/icu/NativeConverter;->canEncode(JI)Z

    move-result v0

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 11
    .parameter "in"
    .parameter "out"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 209
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 244
    :goto_a
    return-object v0

    .line 212
    :cond_b
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->getArray(Ljava/nio/CharBuffer;)I

    move-result v1

    aput v1, v0, v3

    .line 213
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 214
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 216
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    aput v3, v0, v4

    .line 221
    :try_start_25
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Llibcore/icu/CharsetEncoderICU;->input:[C

    iget v3, p0, Llibcore/icu/CharsetEncoderICU;->inEnd:I

    iget-object v4, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    iget v5, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    iget-object v6, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Llibcore/icu/NativeConverter;->encode(J[CI[BI[IZ)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    .line 229
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 231
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4f

    .line 232
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_84

    .line 243
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 244
    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 233
    :cond_4f
    :try_start_4f
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_65

    .line 234
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_84

    move-result-object v0

    .line 243
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 244
    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 235
    :cond_65
    :try_start_65
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7b

    .line 237
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_84

    move-result-object v0

    .line 243
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 244
    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 240
    :cond_7b
    :try_start_7b
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_84

    .line 243
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 244
    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    goto :goto_a

    .line 243
    :catchall_84
    move-exception v0

    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/CharBuffer;)V

    .line 244
    invoke-direct {p0, p2}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

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
    .line 263
    :try_start_0
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->closeConverter(J)V

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 266
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 268
    return-void

    .line 266
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7
    .parameter "out"

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->getArray(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    .line 159
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    iget-object v2, p0, Llibcore/icu/CharsetEncoderICU;->output:[B

    iget v3, p0, Llibcore/icu/CharsetEncoderICU;->outEnd:I

    iget-object v4, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    invoke-static {v0, v1, v2, v3, v4}, Llibcore/icu/NativeConverter;->flushCharToByte(J[BI[I)I

    move-result v0

    iput v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    .line 166
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 167
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2e

    .line 168
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_52

    .line 179
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 180
    invoke-virtual {p0}, Llibcore/icu/CharsetEncoderICU;->implReset()V

    :goto_2d
    return-object v0

    .line 169
    :cond_2e
    :try_start_2e
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4b

    .line 170
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_5a

    .line 171
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_52

    move-result-object v0

    .line 179
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 180
    invoke-virtual {p0}, Llibcore/icu/CharsetEncoderICU;->implReset()V

    goto :goto_2d

    .line 174
    :cond_4b
    :try_start_4b
    iget v0, p0, Llibcore/icu/CharsetEncoderICU;->ec:I

    invoke-static {v0}, Llibcore/icu/ErrorCode;->throwException(I)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_52

    .line 179
    :catchall_52
    move-exception v0

    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 180
    invoke-virtual {p0}, Llibcore/icu/CharsetEncoderICU;->implReset()V

    throw v0

    .line 177
    :cond_5a
    :try_start_5a
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_52

    .line 179
    invoke-direct {p0, p1}, Llibcore/icu/CharsetEncoderICU;->setPosition(Ljava/nio/ByteBuffer;)V

    .line 180
    invoke-virtual {p0}, Llibcore/icu/CharsetEncoderICU;->implReset()V

    goto :goto_2d
.end method

.method protected implOnMalformedInput(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 128
    invoke-direct {p0}, Llibcore/icu/CharsetEncoderICU;->updateCallback()V

    .line 129
    return-void
.end method

.method protected implOnUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)V
    .registers 2
    .parameter "newAction"

    .prologue
    .line 138
    invoke-direct {p0}, Llibcore/icu/CharsetEncoderICU;->updateCallback()V

    .line 139
    return-void
.end method

.method protected implReplaceWith([B)V
    .registers 6
    .parameter "newReplacement"

    .prologue
    .line 113
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 114
    array-length v0, p1

    iget-wide v1, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    invoke-static {v1, v2}, Llibcore/icu/NativeConverter;->getMaxBytesPerChar(J)I

    move-result v1

    if-le v0, v1, :cond_19

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of replacement Bytes are greater than max bytes per char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_19
    invoke-direct {p0}, Llibcore/icu/CharsetEncoderICU;->updateCallback()V

    .line 119
    :cond_1c
    return-void
.end method

.method protected implReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-wide v0, p0, Llibcore/icu/CharsetEncoderICU;->converterHandle:J

    invoke-static {v0, v1}, Llibcore/icu/NativeConverter;->resetCharToByte(J)V

    .line 190
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    aput v2, v0, v2

    .line 191
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 193
    iget-object v0, p0, Llibcore/icu/CharsetEncoderICU;->data:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 194
    iput v2, p0, Llibcore/icu/CharsetEncoderICU;->savedInputHeldLen:I

    .line 195
    return-void
.end method
