.class public final Lcom/google/protobuf/micro/CodedInputStreamMicro;
.super Ljava/lang/Object;
.source "CodedInputStreamMicro.java"


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 454
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 457
    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 464
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    .line 465
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 466
    iput p2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    .line 468
    return-void
.end method

.method public static newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 68
    new-instance v0, Lcom/google/protobuf/micro/CodedInputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 550
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 551
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int v0, v1, v2

    .line 552
    .local v0, bufferEnd:I
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 554
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    .line 555
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    goto :goto_0
.end method

.method private refillBuffer(Z)Z
    .locals 5
    .parameter "mustSucceed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 601
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v1, v2, :cond_0

    .line 602
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-ne v1, v2, :cond_2

    .line 608
    if-eqz p1, :cond_1

    .line 609
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    :cond_1
    move v1, v3

    .line 638
    :goto_0
    return v1

    .line 615
    :cond_2
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 617
    iput v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 618
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v1, :cond_4

    move v1, v4

    :goto_1
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 619
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v1, v4, :cond_5

    .line 620
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_1

    .line 624
    :cond_5
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v1, v4, :cond_7

    .line 625
    iput v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 626
    if-eqz p1, :cond_6

    .line 627
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    :cond_6
    move v1, v3

    .line 629
    goto :goto_0

    .line 632
    :cond_7
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 633
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int v0, v1, v2

    .line 635
    .local v0, totalBytesRead:I
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    .line 636
    :cond_8
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->sizeLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 638
    :cond_9
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 103
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidEndTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 590
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .parameter "oldLimit"

    .prologue
    .line 567
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 568
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 569
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 534
    if-gez p1, :cond_0

    .line 535
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 537
    :cond_0
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 538
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 539
    .local v0, oldLimit:I
    if-le p1, v0, :cond_1

    .line 540
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v1

    throw v1

    .line 542
    :cond_1
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 544
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 546
    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V
    .locals 2
    .parameter "msg"
    .parameter "fieldNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 216
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 217
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    .line 218
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 220
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 221
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    .line 226
    .local v0, length:I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 227
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->pushLimit(I)I

    move-result v1

    .line 230
    .local v1, oldLimit:I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    .line 232
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 233
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->popLimit(I)V

    .line 235
    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 13
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    if-gez p1, :cond_0

    .line 663
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v10

    throw v10

    .line 666
    :cond_0
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v10, v11

    add-int/2addr v10, p1

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v10, v11, :cond_1

    .line 668
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 670
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v10

    throw v10

    .line 673
    :cond_1
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v10, v11

    if-gt p1, v10, :cond_3

    .line 675
    new-array v1, p1, [B

    .line 676
    .local v1, bytes:[B
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v1, v12, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v10, p1

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 761
    .end local p0
    :cond_2
    :goto_0
    return-object v1

    .line 679
    .end local v1           #bytes:[B
    .restart local p0
    :cond_3
    const/16 v10, 0x1000

    if-ge p1, v10, :cond_5

    .line 684
    new-array v1, p1, [B

    .line 685
    .restart local v1       #bytes:[B
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int v8, v10, v11

    .line 686
    .local v8, pos:I
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 692
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    .line 694
    :goto_1
    sub-int v10, p1, v8

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-le v10, v11, :cond_4

    .line 695
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    const/4 v11, 0x0

    iget v12, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    invoke-static {v10, v11, v1, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v8, v10

    .line 697
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 698
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    goto :goto_1

    .line 701
    :cond_4
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    const/4 v11, 0x0

    sub-int v12, p1, v8

    invoke-static {v10, v11, v1, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    sub-int v10, p1, v8

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    goto :goto_0

    .line 716
    .end local v1           #bytes:[B
    .end local v8           #pos:I
    :cond_5
    iget v6, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 717
    .local v6, originalBufferPos:I
    iget v7, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 720
    .local v7, originalBufferSize:I
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v11, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 721
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 722
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 725
    sub-int v10, v7, v6

    sub-int v9, p1, v10

    .line 728
    .local v9, sizeLeft:I
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 730
    .local v3, chunks:Ljava/util/Vector;
    :goto_2
    if-lez v9, :cond_9

    .line 731
    const/16 v10, 0x1000

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v2, v10, [B

    .line 732
    .local v2, chunk:[B
    const/4 v8, 0x0

    .line 733
    .restart local v8       #pos:I
    :goto_3
    array-length v10, v2

    if-ge v8, v10, :cond_8

    .line 734
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v10, :cond_6

    const/4 v10, -0x1

    move v5, v10

    .line 736
    .local v5, n:I
    :goto_4
    const/4 v10, -0x1

    if-ne v5, v10, :cond_7

    .line 737
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v10

    throw v10

    .line 734
    .end local v5           #n:I
    :cond_6
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    array-length v11, v2

    sub-int/2addr v11, v8

    invoke-virtual {v10, v2, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    move v5, v10

    goto :goto_4

    .line 739
    .restart local v5       #n:I
    :cond_7
    iget v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 740
    add-int/2addr v8, v5

    .line 741
    goto :goto_3

    .line 742
    .end local v5           #n:I
    :cond_8
    array-length v10, v2

    sub-int/2addr v9, v10

    .line 743
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 747
    .end local v2           #chunk:[B
    .end local v8           #pos:I
    :cond_9
    new-array v1, p1, [B

    .line 750
    .restart local v1       #bytes:[B
    sub-int v8, v7, v6

    .line 751
    .restart local v8       #pos:I
    iget-object v10, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    const/4 v11, 0x0

    invoke-static {v10, v6, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_5
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 755
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v2, v0

    .line 756
    .restart local v2       #chunk:[B
    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v1, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v10, v2

    add-int/2addr v8, v10

    .line 754
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 376
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 377
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 378
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    .line 379
    .local v3, b4:B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v13, 0xff

    .line 387
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 388
    .local v0, b1:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 389
    .local v1, b2:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 390
    .local v2, b3:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    .line 391
    .local v3, b4:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v4

    .line 392
    .local v4, b5:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v5

    .line 393
    .local v5, b6:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v6

    .line 394
    .local v6, b7:B
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v7

    .line 395
    .local v7, b8:B
    int-to-long v8, v0

    and-long/2addr v8, v13

    int-to-long v10, v1

    and-long/2addr v10, v13

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    and-long/2addr v10, v13

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    and-long/2addr v10, v13

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    and-long/2addr v10, v13

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    and-long/2addr v10, v13

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    and-long/2addr v10, v13

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    and-long/2addr v10, v13

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 293
    .local v2, tmp:B
    if-ltz v2, :cond_0

    move v3, v2

    .line 322
    :goto_0
    return v3

    .line 296
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    .line 297
    .local v1, result:I
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 298
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    :cond_1
    :goto_1
    move v3, v1

    .line 322
    goto :goto_0

    .line 300
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 302
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_1

    .line 304
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 305
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 306
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_1

    .line 308
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 310
    if-gez v2, :cond_1

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_6

    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_5

    move v3, v1

    .line 314
    goto :goto_0

    .line 312
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 317
    :cond_6
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    const/4 v3, 0x0

    .line 361
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 362
    .local v1, result:J
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 364
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 365
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 366
    return-wide v1

    .line 368
    :cond_0
    add-int/lit8 v3, v3, 0x7

    .line 369
    goto :goto_0

    .line 370
    .end local v0           #b:B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v4

    throw v4
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v1

    .line 198
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    .local v0, result:Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    move-object v2, v0

    .line 206
    .end local v0           #result:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawBytes(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    .line 85
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    goto :goto_0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public skipField(I)Z
    .locals 3
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidWireType()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move v0, v2

    .line 120
    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    move v0, v2

    .line 123
    goto :goto_0

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipMessage()V

    .line 126
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagFieldNumber(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move v0, v2

    .line 134
    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 147
    .local v0, tag:I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 772
    if-gez p1, :cond_0

    .line 773
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 776
    :cond_0
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v2, v3, :cond_1

    .line 778
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 780
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 783
    :cond_1
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    .line 785
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 803
    :cond_2
    return-void

    .line 788
    :cond_3
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int v1, v2, v3

    .line 789
    .local v1, pos:I
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 790
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 791
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 794
    :goto_0
    if-ge v1, p1, :cond_2

    .line 795
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v2, :cond_4

    const/4 v2, -0x1

    move v0, v2

    .line 796
    .local v0, n:I
    :goto_1
    if-gtz v0, :cond_5

    .line 797
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v2

    throw v2

    .line 795
    .end local v0           #n:I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    sub-int v3, p1, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v2, v2

    move v0, v2

    goto :goto_1

    .line 799
    .restart local v0       #n:I
    :cond_5
    add-int/2addr v1, v0

    .line 800
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    goto :goto_0
.end method
