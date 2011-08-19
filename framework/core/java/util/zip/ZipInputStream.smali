.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private charBuf:[C

.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private nameBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .parameter "stream"

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 102
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 77
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 79
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 81
    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 83
    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 87
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    .line 89
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 91
    new-array v0, v4, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 93
    new-array v0, v4, [C

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 103
    if-nez p1, :cond_38

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_38
    return-void
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 364
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_c
    return-void
.end method

.method private readAndVerifyDataDescriptor(II)V
    .registers 11
    .parameter "inB"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v5, 0x0

    .line 197
    iget-boolean v1, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    if-eqz v1, :cond_64

    .line 198
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 199
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v5, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    .line 200
    .local v0, sig:I
    const v1, 0x8074b50

    if-eq v0, v1, :cond_35

    .line 201
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "unknown format (EXTSIG=%x)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_35
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/4 v3, 0x4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    .line 204
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0x8

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 205
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    const/16 v3, 0xc

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    .line 207
    .end local v0           #sig:I
    :cond_64
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7a

    .line 208
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_7a
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_8c

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_94

    .line 211
    :cond_8c
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_94
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 348
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_12

    iget v0, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    int-to-long v0, v0

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_a

    .line 117
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 118
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 120
    :cond_a
    return-void
.end method

.method public closeEntry()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 130
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v7, :cond_8

    .line 194
    :cond_7
    return-void

    .line 133
    :cond_8
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    instance-of v7, v7, Ljava/util/jar/JarEntry;

    if-eqz v7, :cond_20

    .line 134
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    check-cast v7, Ljava/util/jar/JarEntry;

    invoke-virtual {v7}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 135
    .local v6, temp:Ljava/util/jar/Attributes;
    if-eqz v6, :cond_20

    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 150
    .end local v6           #temp:Ljava/util/jar/Attributes;
    :cond_20
    const/4 v3, 0x0

    .line 152
    .local v3, failure:Ljava/lang/Exception;
    :try_start_21
    invoke-static {p0}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_6c

    .line 158
    :goto_24
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v7, v7, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6f

    .line 159
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalIn()I

    move-result v4

    .line 160
    .local v4, inB:I
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v5

    .line 165
    .local v5, out:I
    :goto_38
    iget v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    sub-int v0, v7, v4

    .line 167
    .local v0, diff:I
    if-eqz v0, :cond_4a

    .line 168
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v9, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v9, v0

    invoke-virtual {v7, v8, v9, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 172
    :cond_4a
    :try_start_4a
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipInputStream;->readAndVerifyDataDescriptor(II)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_74

    .line 179
    :cond_4d
    :goto_4d
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->reset()V

    .line 180
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/zip/ZipInputStream;->len:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    iput v7, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 181
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 182
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 184
    if-eqz v3, :cond_7

    .line 185
    instance-of v7, v3, Ljava/io/IOException;

    if-eqz v7, :cond_79

    .line 186
    check-cast v3, Ljava/io/IOException;

    .end local v3           #failure:Ljava/lang/Exception;
    throw v3

    .line 153
    .end local v0           #diff:I
    .end local v4           #inB:I
    .end local v5           #out:I
    .restart local v3       #failure:Ljava/lang/Exception;
    :catch_6c
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    move-object v3, v1

    goto :goto_24

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6f
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 163
    .restart local v4       #inB:I
    iget v5, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .restart local v5       #out:I
    goto :goto_38

    .line 173
    .restart local v0       #diff:I
    :catch_74
    move-exception v1

    .line 174
    .restart local v1       #e:Ljava/lang/Exception;
    if-nez v3, :cond_4d

    .line 175
    move-object v3, v1

    goto :goto_4d

    .line 187
    .end local v1           #e:Ljava/lang/Exception;
    :cond_79
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_80

    .line 188
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3           #failure:Ljava/lang/Exception;
    throw v3

    .line 190
    .restart local v3       #failure:Ljava/lang/Exception;
    :cond_80
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .line 191
    .local v2, error:Ljava/lang/AssertionError;
    invoke-virtual {v2, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 192
    throw v2
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3
    .parameter "name"

    .prologue
    .line 359
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 227
    const/16 v19, 0x0

    .line 284
    :goto_d
    return-object v19

    .line 230
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x4

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v16

    .line 232
    .local v16, hdr:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x2014b50

    cmp-long v19, v19, v21

    if-nez v19, :cond_46

    .line 233
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    .line 234
    const/16 v19, 0x0

    goto :goto_d

    .line 236
    :cond_46
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x4034b50

    cmp-long v19, v19, v21

    if-eqz v19, :cond_55

    .line 237
    const/16 v19, 0x0

    goto :goto_d

    .line 241
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1a

    invoke-static/range {v19 .. v22}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 243
    .local v18, version:I
    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a1

    .line 244
    new-instance v19, Ljava/util/zip/ZipException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot read local header version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 246
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x2

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v15

    .line 247
    .local v15, flags:S
    and-int/lit8 v19, v15, 0x8

    if-eqz v19, :cond_16d

    const/16 v19, 0x1

    :goto_b5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x6

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v12, v19, v20

    .line 249
    .local v12, ceTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x8

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v9, v19, v20

    .line 250
    .local v9, ceModDate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x4

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v6, v19, v20

    .line 251
    .local v6, ceCompressionMethod:I
    const-wide/16 v7, 0x0

    .local v7, ceCrc:J
    const-wide/16 v4, 0x0

    .local v4, ceCompressedSize:J
    const-wide/16 v10, -0x1

    .line 252
    .local v10, ceSize:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    move/from16 v19, v0

    if-nez v19, :cond_150

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xa

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v7, v19, v21

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0xe

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v4, v19, v21

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x12

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0xffffffffL

    and-long v10, v19, v21

    .line 257
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x16

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v17, v19, v20

    .line 258
    .local v17, nameLength:I
    if-nez v17, :cond_171

    .line 259
    new-instance v19, Ljava/util/zip/ZipException;

    const-string v20, "Entry is not named"

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 247
    .end local v4           #ceCompressedSize:J
    .end local v6           #ceCompressionMethod:I
    .end local v7           #ceCrc:J
    .end local v9           #ceModDate:I
    .end local v10           #ceSize:J
    .end local v12           #ceTime:I
    .end local v17           #nameLength:I
    :cond_16d
    const/16 v19, 0x0

    goto/16 :goto_b5

    .line 261
    .restart local v4       #ceCompressedSize:J
    .restart local v6       #ceCompressionMethod:I
    .restart local v7       #ceCrc:J
    .restart local v9       #ceModDate:I
    .restart local v10       #ceSize:J
    .restart local v12       #ceTime:I
    .restart local v17       #nameLength:I
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    move-object/from16 v19, v0

    const/16 v20, 0x18

    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v19 .. v21}, Lorg/apache/harmony/luni/platform/OSMemory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v19

    const v20, 0xffff

    and-int v14, v19, v20

    .line 263
    .local v14, extraLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1ad

    .line 264
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    .line 267
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->charBuf:[C

    .line 269
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->nameBuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->charBuf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move v0, v12

    move-object/from16 v1, v19

    iput v0, v1, Ljava/util/zip/ZipEntry;->time:I

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move v0, v9

    move-object/from16 v1, v19

    iput v0, v1, Ljava/util/zip/ZipEntry;->modDate:I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 274
    const-wide/16 v19, -0x1

    cmp-long v19, v10, v19

    if-eqz v19, :cond_23a

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 279
    :cond_23a
    if-lez v14, :cond_25b

    .line 280
    new-array v13, v14, [B

    .line 281
    .local v13, extraData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v13

    move/from16 v2, v20

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 284
    .end local v13           #extraData:[B
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    move-object/from16 v19, v0

    goto/16 :goto_d
.end method

.method public read([BII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 295
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    .line 296
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 298
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v4, :cond_16

    :cond_14
    move v4, v6

    .line 341
    :goto_15
    return v4

    .line 302
    :cond_16
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    if-nez v4, :cond_79

    .line 303
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    long-to-int v0, v4

    .line 304
    .local v0, csize:I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    if-lt v4, v0, :cond_27

    move v4, v6

    .line 305
    goto :goto_15

    .line 307
    :cond_27
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lt v4, v5, :cond_48

    .line 308
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 309
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-ne v4, v6, :cond_41

    .line 310
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->eof:Z

    move v4, v6

    .line 311
    goto :goto_15

    .line 313
    :cond_41
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 315
    :cond_48
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    if-le p3, v4, :cond_77

    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 316
    .local v3, toRead:I
    :goto_55
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v4, v0, v4

    if-ge v4, v3, :cond_5f

    .line 317
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    sub-int v3, v0, v4

    .line 319
    :cond_5f
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    .line 321
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    .line 322
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v3

    .line 323
    goto :goto_15

    .end local v3           #toRead:I
    :cond_77
    move v3, p3

    .line 315
    goto :goto_55

    .line 325
    .end local v0           #csize:I
    :cond_79
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 326
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->fill()V

    .line 327
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    if-lez v4, :cond_8f

    .line 328
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    .line 333
    :cond_8f
    :try_start_8f
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_94
    .catch Ljava/util/zip/DataFormatException; {:try_start_8f .. :try_end_94} :catch_a2

    move-result v2

    .line 337
    .local v2, read:I
    if-nez v2, :cond_ae

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_ae

    move v4, v6

    .line 338
    goto/16 :goto_15

    .line 334
    .end local v2           #read:I
    :catch_a2
    move-exception v4

    move-object v1, v4

    .line 335
    .local v1, e:Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 340
    .end local v1           #e:Ljava/util/zip/DataFormatException;
    .restart local v2       #read:I
    :cond_ae
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    move v4, v2

    .line 341
    goto/16 :goto_15
.end method
