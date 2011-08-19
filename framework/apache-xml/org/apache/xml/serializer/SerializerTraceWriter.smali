.class final Lorg/apache/xml/serializer/SerializerTraceWriter;
.super Ljava/io/Writer;
.source "SerializerTraceWriter.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# instance fields
.field private buf:[B

.field private buf_length:I

.field private count:I

.field private final m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private final m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serializer/SerializerTrace;)V
    .registers 4
    .parameter "out"
    .parameter "tracer"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    .line 100
    iput-object p2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    .line 101
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 102
    return-void
.end method

.method private flushBuffer()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 116
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-lez v2, :cond_26

    .line 118
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    new-array v0, v2, [C

    .line 119
    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    if-ge v1, v2, :cond_18

    .line 120
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 122
    :cond_18
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_24

    .line 123
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v3, 0xc

    array-length v4, v0

    invoke-interface {v2, v3, v0, v5, v4}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    .line 129
    :cond_24
    iput v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    .line 131
    .end local v0           #chars:[C
    .end local v1           #i:I
    :cond_26
    return-void
.end method

.method private setBufferSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 81
    add-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    .line 82
    iput p1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 158
    :cond_9
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 159
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 144
    :cond_9
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 145
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, retval:Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    instance-of v1, v1, Lorg/apache/xml/serializer/WriterChain;

    if-eqz v1, :cond_f

    .line 338
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    .end local p0
    check-cast p0, Lorg/apache/xml/serializer/WriterChain;

    invoke-interface {p0}, Lorg/apache/xml/serializer/WriterChain;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 339
    :cond_f
    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    return-object v0
.end method

.method public write(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 184
    :cond_9
    iget v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v0, v1, :cond_12

    .line 185
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 187
    :cond_12
    const/16 v0, 0x80

    if-ge p1, v0, :cond_22

    .line 189
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 202
    :goto_21
    return-void

    .line 191
    :cond_22
    const/16 v0, 0x800

    if-ge p1, v0, :cond_45

    .line 193
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_21

    .line 198
    :cond_45
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v1, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_21
.end method

.method public write(Ljava/lang/String;)V
    .registers 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v4, :cond_9

    .line 275
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 284
    .local v2, length:I
    shl-int/lit8 v4, v2, 0x1

    add-int v3, v4, v2

    .line 286
    .local v3, lengthx3:I
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v3, v4, :cond_1d

    .line 293
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 294
    mul-int/lit8 v4, v3, 0x2

    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 297
    :cond_1d
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_27

    .line 299
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 302
    :cond_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    if-ge v1, v2, :cond_93

    .line 304
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, c:C
    const/16 v4, 0x80

    if-ge v0, v4, :cond_40

    .line 307
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 302
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 308
    :cond_40
    const/16 v4, 0x800

    if-ge v0, v4, :cond_63

    .line 310
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 311
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_3d

    .line 315
    :cond_63
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 316
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 317
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_3d

    .line 320
    .end local v0           #c:C
    :cond_93
    return-void
.end method

.method public write([CII)V
    .registers 11
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    if-eqz v4, :cond_9

    .line 220
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 223
    :cond_9
    shl-int/lit8 v4, p3, 0x1

    add-int v2, v4, p3

    .line 225
    .local v2, lengthx3:I
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    if-lt v2, v4, :cond_19

    .line 232
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 233
    mul-int/lit8 v4, v2, 0x2

    invoke-direct {p0, v4}, Lorg/apache/xml/serializer/SerializerTraceWriter;->setBufferSize(I)V

    .line 237
    :cond_19
    iget v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf_length:I

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_23

    .line 239
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerTraceWriter;->flushBuffer()V

    .line 242
    :cond_23
    add-int v3, p3, p2

    .line 243
    .local v3, n:I
    move v1, p2

    .local v1, i:I
    :goto_26
    if-ge v1, v3, :cond_8f

    .line 245
    aget-char v0, p1, v1

    .line 247
    .local v0, c:C
    const/16 v4, 0x80

    if-ge v0, v4, :cond_3c

    .line 248
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 243
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 249
    :cond_3c
    const/16 v4, 0x800

    if-ge v0, v4, :cond_5f

    .line 251
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 252
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_39

    .line 256
    :cond_5f
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 257
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 258
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->buf:[B

    iget v5, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/xml/serializer/SerializerTraceWriter;->count:I

    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_39

    .line 262
    .end local v0           #c:C
    :cond_8f
    return-void
.end method
