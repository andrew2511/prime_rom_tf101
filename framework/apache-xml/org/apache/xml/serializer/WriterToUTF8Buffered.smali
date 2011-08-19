.class final Lorg/apache/xml/serializer/WriterToUTF8Buffered;
.super Ljava/io/Writer;
.source "WriterToUTF8Buffered.java"

# interfaces
.implements Lorg/apache/xml/serializer/WriterChain;


# static fields
.field private static final BYTES_MAX:I = 0x4000

.field private static final CHARS_MAX:I = 0x1555


# instance fields
.field private count:I

.field private final m_inputChars:[C

.field private final m_os:Ljava/io/OutputStream;

.field private final m_outputBytes:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    .line 86
    const/16 v0, 0x4003

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    .line 90
    const/16 v0, 0x1557

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 95
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
    .line 481
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 482
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 483
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
    .line 466
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 467
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 468
    return-void
.end method

.method public flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 445
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    if-lez v0, :cond_10

    .line 447
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 449
    iput v3, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 451
    :cond_10
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x0

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
    .line 138
    iget v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_9

    .line 139
    invoke-virtual {p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 141
    :cond_9
    const/16 v0, 0x80

    if-ge p1, v0, :cond_19

    .line 143
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 164
    :goto_18
    return-void

    .line 145
    :cond_19
    const/16 v0, 0x800

    if-ge p1, v0, :cond_3c

    .line 147
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18

    .line 150
    :cond_3c
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_70

    .line 152
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18

    .line 158
    :cond_70
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x12

    add-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget-object v0, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    iget v1, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_18
.end method

.method public write(Ljava/lang/String;)V
    .registers 29
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 323
    .local v16, length:I
    mul-int/lit8 v17, v16, 0x3

    .line 325
    .local v17, lengthx3:I
    const/16 v23, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_a1

    .line 328
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 330
    const/16 v23, 0x4000

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_a1

    .line 336
    const/16 v21, 0x0

    .line 337
    .local v21, start:I
    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x1555

    move/from16 v20, v0

    .line 339
    .local v20, split:I
    move/from16 v0, v16

    rem-int/lit16 v0, v0, 0x1555

    move/from16 v23, v0

    if-lez v23, :cond_9e

    .line 340
    add-int/lit8 v9, v20, 0x1

    .line 343
    .local v9, chunks:I
    :goto_33
    const/4 v12, 0x0

    .line 344
    .local v12, end_chunk:I
    const/4 v8, 0x1

    .local v8, chunk:I
    :goto_35
    if-gt v8, v9, :cond_1d6

    .line 346
    move/from16 v22, v12

    .line 347
    .local v22, start_chunk:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int/lit8 v12, v23, 0x0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move v2, v12

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 349
    sub-int v15, v12, v22

    .line 354
    .local v15, len_chunk:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x1

    sub-int v24, v15, v24

    aget-char v6, v23, v24

    .line 355
    .local v6, c:C
    const v23, 0xd800

    move v0, v6

    move/from16 v1, v23

    if-lt v0, v1, :cond_89

    const v23, 0xdbff

    move v0, v6

    move/from16 v1, v23

    if-gt v0, v1, :cond_89

    .line 359
    add-int/lit8 v12, v12, -0x1

    .line 360
    add-int/lit8 v15, v15, -0x1

    .line 361
    if-ne v8, v9, :cond_89

    .line 371
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    .line 344
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 342
    .end local v6           #c:C
    .end local v8           #chunk:I
    .end local v9           #chunks:I
    .end local v12           #end_chunk:I
    .end local v15           #len_chunk:I
    .end local v22           #start_chunk:I
    :cond_9e
    move/from16 v9, v20

    .restart local v9       #chunks:I
    goto :goto_33

    .line 378
    .end local v9           #chunks:I
    .end local v20           #split:I
    .end local v21           #start:I
    :cond_a1
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v16

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_inputChars:[C

    move-object v7, v0

    .line 380
    .local v7, chars:[C
    move/from16 v19, v16

    .line 381
    .local v19, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    move-object v5, v0

    .line 382
    .local v5, buf_loc:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move v10, v0

    .line 383
    .local v10, count_loc:I
    const/4 v14, 0x0

    .local v14, i:I
    move v11, v10

    .line 391
    .end local v10           #count_loc:I
    .local v11, count_loc:I
    :goto_cb
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_e5

    aget-char v6, v7, v14

    .restart local v6       #c:C
    const/16 v23, 0x80

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_e5

    .line 392
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    move v0, v6

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 391
    add-int/lit8 v14, v14, 0x1

    move v11, v10

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    goto :goto_cb

    .line 394
    .end local v6           #c:C
    :cond_e5
    :goto_e5
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_1d1

    .line 397
    aget-char v6, v7, v14

    .line 399
    .restart local v6       #c:C
    const/16 v23, 0x80

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_ff

    .line 400
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    move v0, v6

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 394
    :goto_fb
    add-int/lit8 v14, v14, 0x1

    move v11, v10

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    goto :goto_e5

    .line 401
    :cond_ff
    const/16 v23, 0x800

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_12a

    .line 403
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    shr-int/lit8 v23, v6, 0x6

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 404
    add-int/lit8 v11, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    and-int/lit8 v23, v6, 0x3f

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v10

    move v10, v11

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    goto :goto_fb

    .line 413
    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    :cond_12a
    const v23, 0xd800

    move v0, v6

    move/from16 v1, v23

    if-lt v0, v1, :cond_19a

    const v23, 0xdbff

    move v0, v6

    move/from16 v1, v23

    if-gt v0, v1, :cond_19a

    .line 416
    move v13, v6

    .line 417
    .local v13, high:C
    add-int/lit8 v14, v14, 0x1

    .line 418
    aget-char v18, v7, v14

    .line 420
    .local v18, low:C
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    add-int/lit8 v23, v13, 0x40

    shr-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 421
    add-int/lit8 v11, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    add-int/lit8 v23, v13, 0x40

    shr-int/lit8 v23, v23, 0x2

    and-int/lit8 v23, v23, 0x3f

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v10

    .line 422
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    shr-int/lit8 v23, v18, 0x6

    and-int/lit8 v23, v23, 0xf

    shl-int/lit8 v24, v13, 0x4

    and-int/lit8 v24, v24, 0x30

    add-int v23, v23, v24

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 423
    add-int/lit8 v11, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    and-int/lit8 v23, v18, 0x3f

    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v10

    move v10, v11

    .line 424
    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    goto/16 :goto_fb

    .line 427
    .end local v10           #count_loc:I
    .end local v13           #high:C
    .end local v18           #low:C
    .restart local v11       #count_loc:I
    :cond_19a
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    shr-int/lit8 v23, v6, 0xc

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0xe0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    .line 428
    add-int/lit8 v11, v10, 0x1

    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    shr-int/lit8 v23, v6, 0x6

    and-int/lit8 v23, v23, 0x3f

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v10

    .line 429
    add-int/lit8 v10, v11, 0x1

    .end local v11           #count_loc:I
    .restart local v10       #count_loc:I
    and-int/lit8 v23, v6, 0x3f

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v5, v11

    goto/16 :goto_fb

    .line 433
    .end local v6           #c:C
    .end local v10           #count_loc:I
    .restart local v11       #count_loc:I
    :cond_1d1
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 435
    .end local v5           #buf_loc:[B
    .end local v7           #chars:[C
    .end local v11           #count_loc:I
    .end local v14           #i:I
    .end local v19           #n:I
    :cond_1d6
    return-void
.end method

.method public write([CII)V
    .registers 28
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    mul-int/lit8 v15, p3, 0x3

    .line 188
    .local v15, lengthx3:I
    const/16 v20, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_84

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->flushBuffer()V

    .line 193
    const/16 v20, 0x4000

    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_84

    .line 202
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x1555

    move/from16 v18, v0

    .line 204
    .local v18, split:I
    move/from16 v0, p3

    rem-int/lit16 v0, v0, 0x1555

    move/from16 v20, v0

    if-lez v20, :cond_7e

    .line 205
    add-int/lit8 v7, v18, 0x1

    .line 208
    .local v7, chunks:I
    :goto_2b
    move/from16 v10, p2

    .line 209
    .local v10, end_chunk:I
    const/4 v6, 0x1

    .local v6, chunk:I
    :goto_2e
    if-gt v6, v7, :cond_19e

    .line 211
    move/from16 v19, v10

    .line 212
    .local v19, start_chunk:I
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    add-int v10, p2, v20

    .line 217
    const/16 v20, 0x1

    sub-int v20, v10, v20

    aget-char v5, p1, v20

    .line 218
    .local v5, c:C
    const/16 v20, 0x1

    sub-int v20, v10, v20

    aget-char v13, p1, v20

    .line 219
    .local v13, ic:I
    const v20, 0xd800

    move v0, v5

    move/from16 v1, v20

    if-lt v0, v1, :cond_6f

    const v20, 0xdbff

    move v0, v5

    move/from16 v1, v20

    if-gt v0, v1, :cond_6f

    .line 225
    add-int v20, p2, p3

    move v0, v10

    move/from16 v1, v20

    if-ge v0, v1, :cond_81

    .line 228
    add-int/lit8 v10, v10, 0x1

    .line 243
    :cond_6f
    :goto_6f
    sub-int v14, v10, v19

    .line 244
    .local v14, len_chunk:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->write([CII)V

    .line 209
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 207
    .end local v5           #c:C
    .end local v6           #chunk:I
    .end local v7           #chunks:I
    .end local v10           #end_chunk:I
    .end local v13           #ic:I
    .end local v14           #len_chunk:I
    .end local v19           #start_chunk:I
    :cond_7e
    move/from16 v7, v18

    .restart local v7       #chunks:I
    goto :goto_2b

    .line 238
    .restart local v5       #c:C
    .restart local v6       #chunk:I
    .restart local v10       #end_chunk:I
    .restart local v13       #ic:I
    .restart local v19       #start_chunk:I
    :cond_81
    add-int/lit8 v10, v10, -0x1

    goto :goto_6f

    .line 252
    .end local v5           #c:C
    .end local v6           #chunk:I
    .end local v7           #chunks:I
    .end local v10           #end_chunk:I
    .end local v13           #ic:I
    .end local v18           #split:I
    .end local v19           #start_chunk:I
    :cond_84
    add-int v17, p3, p2

    .line 253
    .local v17, n:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->m_outputBytes:[B

    move-object v4, v0

    .line 254
    .local v4, buf_loc:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    move v8, v0

    .line 255
    .local v8, count_loc:I
    move/from16 v12, p2

    .local v12, i:I
    move v9, v8

    .line 263
    .end local v8           #count_loc:I
    .local v9, count_loc:I
    :goto_93
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_ad

    aget-char v5, p1, v12

    .restart local v5       #c:C
    const/16 v20, 0x80

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_ad

    .line 264
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    move v0, v5

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 263
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    goto :goto_93

    .line 266
    .end local v5           #c:C
    :cond_ad
    :goto_ad
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_199

    .line 269
    aget-char v5, p1, v12

    .line 271
    .restart local v5       #c:C
    const/16 v20, 0x80

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_c7

    .line 272
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    move v0, v5

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 266
    :goto_c3
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    goto :goto_ad

    .line 273
    :cond_c7
    const/16 v20, 0x800

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_f2

    .line 275
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    shr-int/lit8 v20, v5, 0x6

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0xc0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 276
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    and-int/lit8 v20, v5, 0x3f

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v8

    move v8, v9

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    goto :goto_c3

    .line 285
    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    :cond_f2
    const v20, 0xd800

    move v0, v5

    move/from16 v1, v20

    if-lt v0, v1, :cond_162

    const v20, 0xdbff

    move v0, v5

    move/from16 v1, v20

    if-gt v0, v1, :cond_162

    .line 288
    move v11, v5

    .line 289
    .local v11, high:C
    add-int/lit8 v12, v12, 0x1

    .line 290
    aget-char v16, p1, v12

    .line 292
    .local v16, low:C
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    add-int/lit8 v20, v11, 0x40

    shr-int/lit8 v20, v20, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 293
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    add-int/lit8 v20, v11, 0x40

    shr-int/lit8 v20, v20, 0x2

    and-int/lit8 v20, v20, 0x3f

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v8

    .line 294
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    shr-int/lit8 v20, v16, 0x6

    and-int/lit8 v20, v20, 0xf

    shl-int/lit8 v21, v11, 0x4

    and-int/lit8 v21, v21, 0x30

    add-int v20, v20, v21

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 295
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    and-int/lit8 v20, v16, 0x3f

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v8

    move v8, v9

    .line 296
    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    goto/16 :goto_c3

    .line 299
    .end local v8           #count_loc:I
    .end local v11           #high:C
    .end local v16           #low:C
    .restart local v9       #count_loc:I
    :cond_162
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    shr-int/lit8 v20, v5, 0xc

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0xe0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    .line 300
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    shr-int/lit8 v20, v5, 0x6

    and-int/lit8 v20, v20, 0x3f

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v8

    .line 301
    add-int/lit8 v8, v9, 0x1

    .end local v9           #count_loc:I
    .restart local v8       #count_loc:I
    and-int/lit8 v20, v5, 0x3f

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v4, v9

    goto/16 :goto_c3

    .line 305
    .end local v5           #c:C
    .end local v8           #count_loc:I
    .restart local v9       #count_loc:I
    :cond_199
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/WriterToUTF8Buffered;->count:I

    .line 307
    .end local v4           #buf_loc:[B
    .end local v9           #count_loc:I
    .end local v12           #i:I
    .end local v17           #n:I
    :cond_19e
    return-void
.end method
