.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field extra:[B

.field mLocalHeaderRelOffset:J

.field modDate:I

.field name:Ljava/lang/String;

.field nameLength:I

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 47
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 51
    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 52
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 73
    if-nez p1, :cond_1e

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_44

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_44
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 5
    .parameter "ze"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 47
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 51
    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 52
    iput-wide v1, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 309
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 310
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 311
    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 312
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 313
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 314
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 315
    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 316
    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 317
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 318
    iget v0, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 319
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 320
    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;)V
    .registers 16
    .parameter "hdrBuf"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v11, 0xffffffffL

    const-wide/16 v7, -0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 47
    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 51
    iput v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 52
    iput-wide v7, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 353
    array-length v6, p1

    invoke-static {p2, p1, v10, v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 355
    array-length v6, p1

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v10, v6, v7}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v3

    .line 357
    .local v3, it:Llibcore/io/BufferIterator;
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v5

    .line 358
    .local v5, sig:I
    int-to-long v6, v5

    const-wide/32 v8, 0x2014b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3b

    .line 359
    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "Central Directory Entry not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 362
    :cond_3b
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Llibcore/io/BufferIterator;->seek(I)V

    .line 363
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 364
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 365
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 368
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 369
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 370
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 372
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v6

    iput v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    .line 373
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v2

    .line 374
    .local v2, extraLength:I
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readShort()S

    move-result v1

    .line 377
    .local v1, commentLength:I
    const/16 v6, 0x2a

    invoke-virtual {v3, v6}, Llibcore/io/BufferIterator;->seek(I)V

    .line 378
    invoke-virtual {v3}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v11

    iput-wide v6, p0, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    .line 380
    iget v6, p0, Ljava/util/zip/ZipEntry;->nameLength:I

    new-array v4, v6, [B

    .line 381
    .local v4, nameBytes:[B
    array-length v6, v4

    invoke-static {p2, v4, v10, v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 382
    new-instance v6, Ljava/lang/String;

    array-length v7, v4

    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v10, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 386
    if-lez v1, :cond_a8

    .line 387
    new-array v0, v1, [B

    .line 388
    .local v0, commentBytes:[B
    invoke-static {p2, v0, v10, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 389
    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    sget-object v8, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v10, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 392
    .end local v0           #commentBytes:[B
    :cond_a8
    if-lez v2, :cond_b3

    .line 393
    new-array v6, v2, [B

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 394
    iget-object v6, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-static {p2, v6, v10, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 396
    :cond_b3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 327
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 328
    .local v1, result:Ljava/util/zip/ZipEntry;
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_16

    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v2, p0

    :goto_13
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_15
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_15} :catch_18

    .line 329
    return-object v1

    .line 328
    .restart local p0
    :cond_16
    const/4 v2, 0x0

    goto :goto_13

    .line 330
    .end local v1           #result:Ljava/util/zip/ZipEntry;
    .end local p0
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 331
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getExtra()[B
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 148
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .registers 8

    .prologue
    .line 158
    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 159
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 160
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 161
    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v1, v1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v1, v1, 0x7bc

    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    and-int/lit8 v3, v3, 0x1f

    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x1f

    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 164
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 166
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    :goto_41
    return-wide v1

    :cond_42
    const-wide/16 v1, -0x1

    goto :goto_41
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 4
    .parameter "comment"

    .prologue
    .line 186
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_e

    .line 187
    :cond_b
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 191
    return-void

    .line 189
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setCompressedSize(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 200
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    .line 201
    return-void
.end method

.method public setCrc(J)V
    .registers 6
    .parameter "value"

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 213
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 217
    return-void

    .line 215
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtra([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 228
    if-eqz p1, :cond_8

    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_b

    .line 229
    :cond_8
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 233
    return-void

    .line 231
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMethod(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 245
    if-eqz p1, :cond_1f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1f

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1f
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    .line 249
    return-void
.end method

.method public setSize(J)V
    .registers 6
    .parameter "value"

    .prologue
    .line 260
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 261
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 265
    return-void

    .line 263
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTime(J)V
    .registers 9
    .parameter "value"

    .prologue
    const/16 v5, 0x7bc

    const/4 v4, 0x1

    .line 275
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 276
    .local v0, cal:Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 277
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 278
    .local v1, year:I
    if-ge v1, v5, :cond_1e

    .line 279
    const/16 v2, 0x21

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 280
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 289
    :goto_1d
    return-void

    .line 282
    :cond_1e
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 283
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 284
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x9

    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    .line 285
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 286
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    .line 287
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    or-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    goto :goto_1d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method
