.class public Ljava/io/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 60
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .parameter "in"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 44
    iput-boolean v3, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 48
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 81
    if-nez p2, :cond_16

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 84
    :cond_16
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 86
    :try_start_18
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_2e} :catch_34

    .line 93
    iget-object v1, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    return-void

    .line 89
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/UnsupportedEncodingException;

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 6
    .parameter "in"
    .parameter "charset"

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 44
    iput-boolean v2, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 48
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 124
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 125
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 128
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .registers 5
    .parameter "in"
    .parameter "dec"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 44
    iput-boolean v1, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    .line 48
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    .line 108
    iput-object p1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 109
    iput-object p2, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 110
    iget-object v0, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 111
    return-void
.end method

.method private isOpen()Z
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-eqz v1, :cond_c

    .line 143
    iget-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 146
    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 147
    iget-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1b

    .line 148
    iget-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    .line 151
    :cond_1b
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/luni/util/HistoricalNamesUtil;->getHistoricalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 182
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_4
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v2

    if-nez v2, :cond_15

    .line 184
    new-instance v2, Ljava/io/IOException;

    const-string v3, "InputStreamReader is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v2

    .line 186
    :cond_15
    const/4 v2, 0x1

    :try_start_16
    new-array v0, v2, [C

    .line 187
    .local v0, buf:[C
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    if-eq v2, v4, :cond_25

    const/4 v2, 0x0

    aget-char v2, v0, v2

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_12

    return v2

    :cond_25
    move v2, v4

    goto :goto_23
.end method

.method public read([CII)I
    .registers 15
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 217
    iget-object v6, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 218
    :try_start_6
    invoke-direct {p0}, Ljava/io/InputStreamReader;->isOpen()Z

    move-result v7

    if-nez v7, :cond_17

    .line 219
    new-instance v7, Ljava/io/IOException;

    const-string v8, "InputStreamReader is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    :catchall_14
    move-exception v7

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v7

    .line 222
    :cond_17
    :try_start_17
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 223
    if-nez p3, :cond_20

    .line 224
    monitor-exit v6

    move v6, v8

    .line 287
    :goto_1f
    return v6

    .line 227
    :cond_20
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 228
    .local v2, out:Ljava/nio/CharBuffer;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 232
    .local v3, result:Ljava/nio/charset/CoderResult;
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_70

    move v0, v9

    .line 234
    .local v0, needInput:Z
    :goto_2f
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->hasRemaining()Z
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_14

    move-result v7

    if-eqz v7, :cond_45

    .line 236
    if-eqz v0, :cond_b0

    .line 238
    :try_start_37
    iget-object v7, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_73

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_14
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_72

    move-result v7

    if-le v7, p2, :cond_73

    .line 276
    :cond_45
    :goto_45
    :try_start_45
    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v7, :cond_60

    iget-boolean v7, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    if-eqz v7, :cond_60

    .line 277
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 278
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 279
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 281
    :cond_60
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 282
    new-instance v7, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v7

    .end local v0           #needInput:Z
    :cond_70
    move v0, v8

    .line 232
    goto :goto_2f

    .line 242
    .restart local v0       #needInput:Z
    :catch_72
    move-exception v7

    .line 246
    :cond_73
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    sub-int v4, v7, v8

    .line 247
    .local v4, to_read:I
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int v1, v7, v8

    .line 248
    .local v1, off:I
    iget-object v7, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 250
    .local v5, was_red:I
    if-ne v5, v10, :cond_a1

    .line 251
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/io/InputStreamReader;->endOfInput:Z

    goto :goto_45

    .line 253
    :cond_a1
    if-eqz v5, :cond_45

    .line 256
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    const/4 v0, 0x0

    .line 261
    .end local v1           #off:I
    .end local v4           #to_read:I
    .end local v5           #was_red:I
    :cond_b0
    iget-object v7, p0, Ljava/io/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 265
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ne v7, v8, :cond_e3

    .line 266
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 267
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 268
    iget-object v7, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    :cond_e3
    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 283
    :cond_e6
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 284
    new-instance v7, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v7

    .line 287
    :cond_f6
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v7

    sub-int/2addr v7, p2

    if-nez v7, :cond_102

    move v7, v10

    :goto_fe
    monitor-exit v6

    move v6, v7

    goto/16 :goto_1f

    :cond_102
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I
    :try_end_105
    .catchall {:try_start_45 .. :try_end_105} :catchall_14

    move-result v7

    sub-int/2addr v7, p2

    goto :goto_fe
.end method

.method public ready()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v1, p0, Ljava/io/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_4
    iget-object v2, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    if-nez v2, :cond_13

    .line 312
    new-instance v2, Ljava/io/IOException;

    const-string v3, "InputStreamReader is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v2

    .line 315
    :cond_13
    :try_start_13
    iget-object v2, p0, Ljava/io/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Ljava/io/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_10
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_20} :catch_29

    move-result v2

    if-lez v2, :cond_27

    :cond_23
    const/4 v2, 0x1

    :goto_24
    :try_start_24
    monitor-exit v1

    move v1, v2

    .line 317
    :goto_26
    return v1

    :cond_27
    move v2, v3

    .line 315
    goto :goto_24

    .line 316
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, e:Ljava/io/IOException;
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_10

    move v1, v3

    goto :goto_26
.end method
