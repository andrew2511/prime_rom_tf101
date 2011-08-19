.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BZip2CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    }
.end annotation


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final GREATER_ICOST:I = 0xf

.field private static final INCS:[I = null

.field private static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private allowableBlockSize:I

.field private blockCRC:I

.field private blockRandomised:Z

.field private final blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private combinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

.field private firstAttempt:Z

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private origPtr:I

.field private out:Ljava/io/OutputStream;

.field private runLength:I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x45t 0x4t 0x0t 0x0t
        0xd0t 0xct 0x0t 0x0t
        0x71t 0x26t 0x0t 0x0t
        0x54t 0x73t 0x0t 0x0t
        0xfdt 0x59t 0x1t 0x0t
        0xf8t 0xdt 0x4t 0x0t
        0xe9t 0x29t 0xct 0x0t
        0xbct 0x7dt 0x24t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .parameter "out"
    .parameter "blockSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 336
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 420
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    const/16 v0, 0x9

    if-le p2, v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "blockSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    iput p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    .line 430
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 431
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->init()V

    .line 432
    return-void
.end method

.method private blockSort()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1390
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    mul-int/lit8 v3, v3, 0x1e

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    .line 1391
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    .line 1392
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    .line 1393
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1394
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSort()V

    .line 1396
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    if-le v3, v4, :cond_0

    .line 1397
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->randomiseBlock()V

    .line 1398
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    .line 1399
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    .line 1400
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSort()V

    .line 1403
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1404
    .local v0, fmap:[I
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    .line 1405
    const/4 v1, 0x0

    .local v1, i:I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .local v2, lastShadow:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 1406
    aget v3, v0, v1

    if-nez v3, :cond_2

    .line 1407
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    .line 1413
    :cond_1
    return-void

    .line 1405
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private bsFinishedWithStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    if-lez v1, :cond_0

    .line 702
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shr-int/lit8 v0, v1, 0x18

    .line 703
    .local v0, ch:I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 704
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 705
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    goto :goto_0

    .line 707
    .end local v0           #ch:I
    :cond_0
    return-void
.end method

.method private bsPutInt(I)V
    .locals 2
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 729
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 730
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 731
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 732
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 733
    return-void
.end method

.method private bsPutUByte(I)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 726
    return-void
.end method

.method private bsW(II)V
    .locals 4
    .parameter "n"
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 711
    .local v2, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 712
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 714
    .local v0, bsBuffShadow:I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 715
    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 716
    shl-int/lit8 v0, v0, 0x8

    .line 717
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 720
    :cond_0
    const/16 v3, 0x20

    sub-int/2addr v3, v1

    sub-int/2addr v3, p1

    shl-int v3, p2, v3

    or-int/2addr v3, v0

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 721
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 722
    return-void
.end method

.method public static chooseBlockSize(J)I
    .locals 4
    .parameter "inputLength"

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private endBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x59

    const/4 v2, 0x1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    .line 574
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 575
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 578
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 615
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSort()V

    .line 596
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 597
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 598
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 599
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 600
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 601
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 604
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 607
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    if-eqz v0, :cond_1

    .line 608
    invoke-direct {p0, v2, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 614
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->moveToFrontCodeAndSend()V

    goto :goto_0

    .line 610
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    goto :goto_1
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 625
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 626
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 627
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 628
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 629
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 631
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 632
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsFinishedWithStream()V

    .line 633
    return-void
.end method

.method private generateMTFValues()V
    .locals 22

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    move v9, v0

    .line 1717
    .local v9, lastShadow:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object v3, v0

    .line 1718
    .local v3, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v7, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1719
    .local v7, inUse:[Z
    iget-object v2, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1720
    .local v2, block:[B
    iget-object v5, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 1721
    .local v5, fmap:[I
    iget-object v13, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1722
    .local v13, sfmap:[C
    iget-object v11, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 1723
    .local v11, mtfFreq:[I
    move-object v0, v3

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    move-object/from16 v16, v0

    .line 1724
    .local v16, unseqToSeq:[B
    move-object v0, v3

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    move-object/from16 v18, v0

    .line 1727
    .local v18, yy:[B
    const/4 v12, 0x0

    .line 1728
    .local v12, nInUseShadow:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v20, 0x100

    move v0, v6

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 1729
    aget-boolean v20, v7, v6

    if-eqz v20, :cond_0

    .line 1730
    move v0, v12

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v6

    .line 1731
    add-int/lit8 v12, v12, 0x1

    .line 1728
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1734
    :cond_1
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    .line 1736
    add-int/lit8 v4, v12, 0x1

    .line 1738
    .local v4, eob:I
    move v6, v4

    :goto_1
    if-ltz v6, :cond_2

    .line 1739
    const/16 v20, 0x0

    aput v20, v11, v6

    .line 1738
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1742
    :cond_2
    move v6, v12

    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_3

    .line 1743
    move v0, v6

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v6

    goto :goto_2

    .line 1746
    :cond_3
    const/16 v17, 0x0

    .line 1747
    .local v17, wr:I
    const/16 v19, 0x0

    .line 1749
    .local v19, zPend:I
    const/4 v6, 0x0

    :goto_3
    if-gt v6, v9, :cond_9

    .line 1750
    aget v20, v5, v6

    aget-byte v20, v2, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget-byte v10, v16, v20

    .line 1751
    .local v10, ll_i:B
    const/16 v20, 0x0

    aget-byte v14, v18, v20

    .line 1752
    .local v14, tmp:B
    const/4 v8, 0x0

    .line 1754
    .local v8, j:I
    :goto_4
    if-eq v10, v14, :cond_4

    .line 1755
    add-int/lit8 v8, v8, 0x1

    .line 1756
    move v15, v14

    .line 1757
    .local v15, tmp2:B
    aget-byte v14, v18, v8

    .line 1758
    aput-byte v15, v18, v8

    goto :goto_4

    .line 1760
    .end local v15           #tmp2:B
    :cond_4
    const/16 v20, 0x0

    aput-byte v14, v18, v20

    .line 1762
    if-nez v8, :cond_5

    .line 1763
    add-int/lit8 v19, v19, 0x1

    .line 1749
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1765
    :cond_5
    if-lez v19, :cond_8

    .line 1766
    add-int/lit8 v19, v19, -0x1

    .line 1768
    :goto_6
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_6

    .line 1769
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1770
    add-int/lit8 v17, v17, 0x1

    .line 1771
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1778
    :goto_7
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 1779
    const/16 v20, 0x2

    sub-int v20, v19, v20

    shr-int/lit8 v19, v20, 0x1

    goto :goto_6

    .line 1773
    :cond_6
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1774
    add-int/lit8 v17, v17, 0x1

    .line 1775
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_7

    .line 1784
    :cond_7
    const/16 v19, 0x0

    .line 1786
    :cond_8
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1787
    add-int/lit8 v17, v17, 0x1

    .line 1788
    add-int/lit8 v20, v8, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_5

    .line 1792
    .end local v8           #j:I
    .end local v10           #ll_i:B
    .end local v14           #tmp:B
    :cond_9
    if-lez v19, :cond_b

    .line 1793
    add-int/lit8 v19, v19, -0x1

    .line 1795
    :goto_8
    and-int/lit8 v20, v19, 0x1

    if-nez v20, :cond_a

    .line 1796
    const/16 v20, 0x0

    aput-char v20, v13, v17

    .line 1797
    add-int/lit8 v17, v17, 0x1

    .line 1798
    const/16 v20, 0x0

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    .line 1805
    :goto_9
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 1806
    const/16 v20, 0x2

    sub-int v20, v19, v20

    shr-int/lit8 v19, v20, 0x1

    goto :goto_8

    .line 1800
    :cond_a
    const/16 v20, 0x1

    aput-char v20, v13, v17

    .line 1801
    add-int/lit8 v17, v17, 0x1

    .line 1802
    const/16 v20, 0x1

    aget v21, v11, v20

    add-int/lit8 v21, v21, 0x1

    aput v21, v11, v20

    goto :goto_9

    .line 1813
    :cond_b
    move v0, v4

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v13, v17

    .line 1814
    aget v20, v11, v4

    add-int/lit8 v20, v20, 0x1

    aput v20, v11, v4

    .line 1815
    add-int/lit8 v20, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1816
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .locals 4
    .parameter "code"
    .parameter "length"
    .parameter "minLen"
    .parameter "maxLen"
    .parameter "alphaSize"

    .prologue
    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, vec:I
    move v1, p2

    .local v1, n:I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 690
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_1

    .line 691
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v1, :cond_0

    .line 692
    aput v2, p0, v0

    .line 693
    add-int/lit8 v2, v2, 0x1

    .line 690
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 696
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V
    .locals 11
    .parameter "len"
    .parameter "freq"
    .parameter "dat"
    .parameter "alphaSize"
    .parameter "maxLen"

    .prologue
    .line 172
    iget-object v0, p2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 173
    .local v0, heap:[I
    iget-object v6, p2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 174
    .local v6, weight:[I
    iget-object v3, p2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 176
    .local v3, parent:[I
    move p2, p3

    .local p2, i:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 177
    add-int/lit8 v1, p2, 0x1

    aget v2, p1, p2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    shl-int/lit8 v2, v2, 0x8

    aput v2, v6, v1

    goto :goto_0

    :cond_0
    aget v2, p1, p2

    goto :goto_1

    .line 180
    :cond_1
    const/4 p1, 0x1

    .end local p2           #i:I
    .local p1, tooLong:Z
    :goto_2
    if-eqz p1, :cond_f

    .line 181
    const/4 v5, 0x0

    .line 183
    .end local p1           #tooLong:Z
    .local v5, tooLong:Z
    move v1, p3

    .line 184
    .local v1, nNodes:I
    const/4 p2, 0x0

    .line 185
    .local p2, nHeap:I
    const/4 p1, 0x0

    const/4 v2, 0x0

    aput v2, v0, p1

    .line 186
    const/4 p1, 0x0

    const/4 v2, 0x0

    aput v2, v6, p1

    .line 187
    const/4 p1, 0x0

    const/4 v2, -0x2

    aput v2, v3, p1

    .line 189
    const/4 p1, 0x1

    .local p1, i:I
    :goto_3
    if-gt p1, p3, :cond_11

    .line 190
    const/4 v2, -0x1

    aput v2, v3, p1

    .line 191
    add-int/lit8 p2, p2, 0x1

    .line 192
    aput p1, v0, p2

    .line 194
    move v4, p2

    .line 195
    .local v4, zz:I
    aget v2, v0, v4

    .line 196
    .local v2, tmp:I
    :goto_4
    aget v7, v6, v2

    shr-int/lit8 v8, v4, 0x1

    aget v8, v0, v8

    aget v8, v6, v8

    if-ge v7, v8, :cond_2

    .line 197
    shr-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    aput v7, v0, v4

    .line 198
    shr-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 200
    :cond_2
    aput v2, v0, v4

    .line 189
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 287
    .local v1, weight_tmp:I
    .local v2, nNodes:I
    .local p1, nHeap:I
    .local p2, tmp:I
    :cond_3
    aput p2, v0, v4

    move p2, p1

    .line 203
    .end local v1           #weight_tmp:I
    .end local v4           #zz:I
    .end local p1           #nHeap:I
    .local p2, nHeap:I
    :goto_5
    const/4 p1, 0x1

    if-le p2, p1, :cond_b

    .line 204
    const/4 p1, 0x1

    aget p1, v0, p1

    .line 205
    .local p1, n1:I
    const/4 v1, 0x1

    aget v4, v0, p2

    aput v4, v0, v1

    .line 206
    add-int/lit8 v1, p2, -0x1

    .line 208
    .end local p2           #nHeap:I
    .local v1, nHeap:I
    const/4 v4, 0x0

    .line 209
    .local v4, yy:I
    const/4 v7, 0x1

    .line 210
    .local v7, zz:I
    const/4 p2, 0x1

    aget p2, v0, p2

    .line 213
    .local p2, tmp:I
    :goto_6
    shl-int/lit8 v4, v7, 0x1

    .line 215
    if-le v4, v1, :cond_6

    .line 232
    :cond_4
    aput p2, v0, v7

    .line 234
    const/4 p2, 0x1

    aget p2, v0, p2

    .line 235
    .local p2, n2:I
    const/4 v4, 0x1

    aget v7, v0, v1

    .end local v4           #yy:I
    .end local v7           #zz:I
    aput v7, v0, v4

    .line 236
    add-int/lit8 v1, v1, -0x1

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, yy:I
    const/4 v8, 0x1

    .line 240
    .local v8, zz:I
    const/4 v4, 0x1

    aget v4, v0, v4

    .line 243
    .local v4, tmp:I
    :goto_7
    shl-int/lit8 v7, v8, 0x1

    .line 245
    if-le v7, v1, :cond_8

    .line 262
    :cond_5
    aput v4, v0, v8

    .line 263
    add-int/lit8 v2, v2, 0x1

    .line 264
    aput v2, v3, p2

    aput v2, v3, p1

    .line 266
    aget p1, v6, p1

    .line 267
    .local p1, weight_n1:I
    aget p2, v6, p2

    .line 268
    .local p2, weight_n2:I
    and-int/lit16 v4, p1, -0x100

    and-int/lit16 v7, p2, -0x100

    add-int/2addr v4, v7

    and-int/lit16 v7, p1, 0xff

    and-int/lit16 v8, p2, 0xff

    if-le v7, v8, :cond_a

    .end local v4           #tmp:I
    .end local v7           #yy:I
    .end local v8           #zz:I
    and-int/lit16 p1, p1, 0xff

    .end local p1           #weight_n1:I
    :goto_8
    add-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v4

    aput p1, v6, v2

    .line 275
    const/4 p1, -0x1

    aput p1, v3, v2

    .line 276
    add-int/lit8 p1, v1, 0x1

    .line 277
    .end local v1           #nHeap:I
    .local p1, nHeap:I
    aput v2, v0, p1

    .line 279
    const/4 p2, 0x0

    .line 280
    .local p2, tmp:I
    move v4, p1

    .line 281
    .local v4, zz:I
    aget p2, v0, v4

    .line 282
    aget v1, v6, p2

    .line 283
    .local v1, weight_tmp:I
    :goto_9
    shr-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    aget v7, v6, v7

    if-ge v1, v7, :cond_3

    .line 284
    shr-int/lit8 v7, v4, 0x1

    aget v7, v0, v7

    aput v7, v0, v4

    .line 285
    shr-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 219
    .local v1, nHeap:I
    .local v4, yy:I
    .local v7, zz:I
    .local p1, n1:I
    :cond_6
    if-ge v4, v1, :cond_7

    add-int/lit8 v8, v4, 0x1

    aget v8, v0, v8

    aget v8, v6, v8

    aget v9, v0, v4

    aget v9, v6, v9

    if-ge v8, v9, :cond_7

    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 224
    :cond_7
    aget v8, v6, p2

    aget v9, v0, v4

    aget v9, v6, v9

    if-lt v8, v9, :cond_4

    .line 228
    aget v8, v0, v4

    aput v8, v0, v7

    .line 229
    move v7, v4

    goto :goto_6

    .line 249
    .local v4, tmp:I
    .local v7, yy:I
    .restart local v8       #zz:I
    .local p2, n2:I
    :cond_8
    if-ge v7, v1, :cond_9

    add-int/lit8 v9, v7, 0x1

    aget v9, v0, v9

    aget v9, v6, v9

    aget v10, v0, v7

    aget v10, v6, v10

    if-ge v9, v10, :cond_9

    .line 251
    add-int/lit8 v7, v7, 0x1

    .line 254
    :cond_9
    aget v9, v6, v4

    aget v10, v0, v7

    aget v10, v6, v10

    if-lt v9, v10, :cond_5

    .line 258
    aget v9, v0, v7

    aput v9, v0, v8

    .line 259
    move v8, v7

    goto :goto_7

    .line 268
    .end local v4           #tmp:I
    .end local v7           #yy:I
    .end local v8           #zz:I
    .local p1, weight_n1:I
    .local p2, weight_n2:I
    :cond_a
    and-int/lit16 p1, p2, 0xff

    goto :goto_8

    .line 291
    .end local v1           #nHeap:I
    .end local p1           #weight_n1:I
    .local p2, nHeap:I
    :cond_b
    const/4 p1, 0x1

    .local p1, i:I
    move v2, v5

    .end local v5           #tooLong:Z
    .end local p2           #nHeap:I
    .local v2, tooLong:Z
    :goto_a
    if-gt p1, p3, :cond_d

    .line 292
    const/4 p2, 0x0

    .line 293
    .local p2, j:I
    move v1, p1

    .line 295
    .local v1, k:I
    :goto_b
    aget v1, v3, v1

    .local v1, parent_k:I
    if-ltz v1, :cond_c

    .line 296
    move v1, v1

    .line 297
    .local v1, k:I
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 300
    .local v1, parent_k:I
    :cond_c
    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-byte v4, p2

    aput-byte v4, p0, v1

    .line 301
    .end local v1           #parent_k:I
    if-le p2, p4, :cond_10

    .line 302
    const/4 p2, 0x1

    .line 291
    .end local v2           #tooLong:Z
    .local p2, tooLong:Z
    :goto_c
    add-int/lit8 p1, p1, 0x1

    move v2, p2

    .end local p2           #tooLong:Z
    .restart local v2       #tooLong:Z
    goto :goto_a

    .line 306
    :cond_d
    if-eqz v2, :cond_e

    .line 307
    const/4 p1, 0x1

    :goto_d
    if-ge p1, p3, :cond_e

    .line 308
    aget p2, v6, p1

    shr-int/lit8 p2, p2, 0x8

    .line 309
    .local p2, j:I
    shr-int/lit8 p2, p2, 0x1

    add-int/lit8 p2, p2, 0x1

    .line 310
    shl-int/lit8 p2, p2, 0x8

    aput p2, v6, p1

    .line 307
    .end local p2           #j:I
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_e
    move p1, v2

    .line 313
    .end local v2           #tooLong:Z
    .local p1, tooLong:Z
    goto/16 :goto_2

    .line 314
    :cond_f
    return-void

    .restart local v2       #tooLong:Z
    .local p1, i:I
    .restart local p2       #j:I
    :cond_10
    move p2, v2

    .end local v2           #tooLong:Z
    .local p2, tooLong:Z
    goto :goto_c

    .local v1, nNodes:I
    .restart local v5       #tooLong:Z
    .local p2, nHeap:I
    :cond_11
    move v2, v1

    .end local v1           #nNodes:I
    .local v2, nNodes:I
    goto/16 :goto_5
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 545
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 547
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 550
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 551
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 554
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 555
    return-void
.end method

.method private initBlock()V
    .locals 4

    .prologue
    .line 559
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 560
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 563
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 564
    .local v1, inUse:[Z
    const/16 v0, 0x100

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 565
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_0

    .line 569
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    const v3, 0x186a0

    mul-int/2addr v2, v3

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    .line 570
    return-void
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)V
    .locals 30
    .parameter "dataShadow"
    .parameter "loSt"
    .parameter "hiSt"
    .parameter "dSt"

    .prologue
    .line 1420
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_ll:[I

    move-object/from16 v21, v0

    .line 1421
    .local v21, stack_ll:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_hh:[I

    move-object/from16 v20, v0

    .line 1422
    .local v20, stack_hh:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->stack_dd:[I

    move-object/from16 v19, v0

    .line 1423
    .local v19, stack_dd:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    move-object v8, v0

    .line 1424
    .local v8, fmap:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    move-object v5, v0

    .line 1426
    .local v5, block:[B
    const/16 v27, 0x0

    aput p2, v21, v27

    .line 1427
    const/16 v27, 0x0

    aput p3, v20, v27

    .line 1428
    const/16 v27, 0x0

    aput p4, v19, v27

    .line 1430
    const/16 v18, 0x1

    .local v18, sp:I
    :cond_0
    :goto_0
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_2

    .line 1431
    aget v12, v21, v18

    .line 1432
    .local v12, lo:I
    aget v11, v20, v18

    .line 1433
    .local v11, hi:I
    aget v6, v19, v18

    .line 1435
    .local v6, d:I
    sub-int v27, v11, v12

    const/16 v28, 0x14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    const/16 v27, 0xa

    move v0, v6

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 1436
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v11

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1520
    .end local v6           #d:I
    .end local v11           #hi:I
    .end local v12           #lo:I
    :cond_2
    return-void

    .line 1440
    .restart local v6       #d:I
    .restart local v11       #hi:I
    .restart local v12       #lo:I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 1441
    .local v7, d1:I
    aget v27, v8, v12

    add-int v27, v27, v7

    aget-byte v27, v5, v27

    aget v28, v8, v11

    add-int v28, v28, v7

    aget-byte v28, v5, v28

    add-int v29, v12, v11

    ushr-int/lit8 v29, v29, 0x1

    aget v29, v8, v29

    add-int v29, v29, v7

    aget-byte v29, v5, v29

    invoke-static/range {v27 .. v29}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->med3(BBB)B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1444
    .local v16, med:I
    move/from16 v25, v12

    .line 1445
    .local v25, unLo:I
    move/from16 v23, v11

    .line 1446
    .local v23, unHi:I
    move v13, v12

    .line 1447
    .local v13, ltLo:I
    move v9, v11

    .local v9, gtHi:I
    move v14, v13

    .end local v13           #ltLo:I
    .local v14, ltLo:I
    move/from16 v26, v25

    .line 1450
    .end local v25           #unLo:I
    .local v26, unLo:I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 1451
    aget v27, v8, v26

    add-int v27, v27, v7

    aget-byte v27, v5, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    sub-int v17, v27, v16

    .line 1453
    .local v17, n:I
    if-nez v17, :cond_4

    .line 1454
    aget v22, v8, v26

    .line 1455
    .local v22, temp:I
    add-int/lit8 v25, v26, 0x1

    .end local v26           #unLo:I
    .restart local v25       #unLo:I
    aget v27, v8, v14

    aput v27, v8, v26

    .line 1456
    add-int/lit8 v13, v14, 0x1

    .end local v14           #ltLo:I
    .restart local v13       #ltLo:I
    aput v22, v8, v14

    .end local v22           #temp:I
    :goto_2
    move v14, v13

    .end local v13           #ltLo:I
    .restart local v14       #ltLo:I
    move/from16 v26, v25

    .line 1462
    .end local v25           #unLo:I
    .restart local v26       #unLo:I
    goto :goto_1

    .line 1457
    :cond_4
    if-gez v17, :cond_b

    .line 1458
    add-int/lit8 v25, v26, 0x1

    .end local v26           #unLo:I
    .restart local v25       #unLo:I
    move v13, v14

    .end local v14           #ltLo:I
    .restart local v13       #ltLo:I
    goto :goto_2

    .line 1464
    .end local v9           #gtHi:I
    .end local v13           #ltLo:I
    .end local v17           #n:I
    .end local v23           #unHi:I
    .end local v25           #unLo:I
    .local v10, gtHi:I
    .restart local v14       #ltLo:I
    .local v24, unHi:I
    .restart local v26       #unLo:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v24

    if-gt v0, v1, :cond_6

    .line 1465
    aget v27, v8, v24

    add-int v27, v27, v7

    aget-byte v27, v5, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    sub-int v17, v27, v16

    .line 1467
    .restart local v17       #n:I
    if-nez v17, :cond_5

    .line 1468
    aget v22, v8, v24

    .line 1469
    .restart local v22       #temp:I
    add-int/lit8 v23, v24, -0x1

    .end local v24           #unHi:I
    .restart local v23       #unHi:I
    aget v27, v8, v10

    aput v27, v8, v24

    .line 1470
    add-int/lit8 v9, v10, -0x1

    .end local v10           #gtHi:I
    .restart local v9       #gtHi:I
    aput v22, v8, v10

    .end local v22           #temp:I
    :goto_4
    move v10, v9

    .end local v9           #gtHi:I
    .restart local v10       #gtHi:I
    move/from16 v24, v23

    .line 1476
    .end local v23           #unHi:I
    .restart local v24       #unHi:I
    goto :goto_3

    .line 1471
    :cond_5
    if-lez v17, :cond_6

    .line 1472
    add-int/lit8 v23, v24, -0x1

    .end local v24           #unHi:I
    .restart local v23       #unHi:I
    move v9, v10

    .end local v10           #gtHi:I
    .restart local v9       #gtHi:I
    goto :goto_4

    .line 1478
    .end local v9           #gtHi:I
    .end local v17           #n:I
    .end local v23           #unHi:I
    .restart local v10       #gtHi:I
    .restart local v24       #unHi:I
    :cond_6
    move/from16 v0, v26

    move/from16 v1, v24

    if-gt v0, v1, :cond_7

    .line 1479
    aget v22, v8, v26

    .line 1480
    .restart local v22       #temp:I
    add-int/lit8 v25, v26, 0x1

    .end local v26           #unLo:I
    .restart local v25       #unLo:I
    aget v27, v8, v24

    aput v27, v8, v26

    .line 1481
    add-int/lit8 v23, v24, -0x1

    .end local v24           #unHi:I
    .restart local v23       #unHi:I
    aput v22, v8, v24

    move v9, v10

    .end local v10           #gtHi:I
    .restart local v9       #gtHi:I
    move/from16 v26, v25

    .line 1482
    .end local v25           #unLo:I
    .restart local v26       #unLo:I
    goto :goto_1

    .line 1487
    .end local v9           #gtHi:I
    .end local v22           #temp:I
    .end local v23           #unHi:I
    .restart local v10       #gtHi:I
    .restart local v24       #unHi:I
    :cond_7
    if-ge v10, v14, :cond_8

    .line 1488
    aput v12, v21, v18

    .line 1489
    aput v11, v20, v18

    .line 1490
    aput v7, v19, v18

    .line 1491
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1493
    :cond_8
    sub-int v27, v14, v12

    sub-int v28, v26, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    sub-int v27, v14, v12

    move/from16 v17, v27

    .line 1495
    .restart local v17       #n:I
    :goto_5
    sub-int v27, v26, v17

    move-object v0, v8

    move v1, v12

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->vswap([IIII)V

    .line 1496
    sub-int v27, v11, v10

    sub-int v28, v10, v24

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    sub-int v27, v11, v10

    move/from16 v15, v27

    .line 1498
    .local v15, m:I
    :goto_6
    sub-int v27, v11, v15

    add-int/lit8 v27, v27, 0x1

    move-object v0, v8

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v15

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->vswap([IIII)V

    .line 1500
    add-int v27, v12, v26

    sub-int v27, v27, v14

    const/16 v28, 0x1

    sub-int v17, v27, v28

    .line 1501
    sub-int v27, v10, v24

    sub-int v27, v11, v27

    add-int/lit8 v15, v27, 0x1

    .line 1503
    aput v12, v21, v18

    .line 1504
    aput v17, v20, v18

    .line 1505
    aput v6, v19, v18

    .line 1506
    add-int/lit8 v18, v18, 0x1

    .line 1508
    add-int/lit8 v27, v17, 0x1

    aput v27, v21, v18

    .line 1509
    const/16 v27, 0x1

    sub-int v27, v15, v27

    aput v27, v20, v18

    .line 1510
    aput v7, v19, v18

    .line 1511
    add-int/lit8 v18, v18, 0x1

    .line 1513
    aput v15, v21, v18

    .line 1514
    aput v11, v20, v18

    .line 1515
    aput v6, v19, v18

    .line 1516
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1493
    .end local v15           #m:I
    .end local v17           #n:I
    :cond_9
    sub-int v27, v26, v14

    move/from16 v17, v27

    goto :goto_5

    .line 1496
    .restart local v17       #n:I
    :cond_a
    sub-int v27, v10, v24

    move/from16 v15, v27

    goto :goto_6

    .end local v10           #gtHi:I
    .end local v17           #n:I
    .end local v24           #unHi:I
    .restart local v9       #gtHi:I
    .restart local v23       #unHi:I
    :cond_b
    move v10, v9

    .end local v9           #gtHi:I
    .restart local v10       #gtHi:I
    move/from16 v24, v23

    .end local v23           #unHi:I
    .restart local v24       #unHi:I
    goto/16 :goto_3
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)Z
    .locals 26
    .parameter "dataShadow"
    .parameter "lo"
    .parameter "hi"
    .parameter "d"

    .prologue
    .line 1193
    sub-int v24, p3, p2

    add-int/lit8 v3, v24, 0x1

    .line 1194
    .local v3, bigN:I
    const/16 v24, 0x2

    move v0, v3

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 1195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    const/16 v24, 0x1

    .line 1372
    :goto_0
    return v24

    .line 1195
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 1198
    :cond_1
    const/4 v8, 0x0

    .line 1199
    .local v8, hp:I
    :goto_1
    sget-object v24, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    aget v24, v24, v8

    move/from16 v0, v24

    move v1, v3

    if-ge v0, v1, :cond_2

    .line 1200
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1203
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    move-object v6, v0

    .line 1204
    .local v6, fmap:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->quadrant:[C

    move-object/from16 v18, v0

    .line 1205
    .local v18, quadrant:[C
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    move-object v4, v0

    .line 1206
    .local v4, block:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    move v15, v0

    .line 1207
    .local v15, lastShadow:I
    add-int/lit8 v14, v15, 0x1

    .line 1208
    .local v14, lastPlus1:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    move v5, v0

    .line 1209
    .local v5, firstAttemptShadow:Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v22, v0

    .line 1210
    .local v22, workLimitShadow:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v21, v0

    .line 1215
    .local v21, workDoneShadow:I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_19

    .line 1216
    sget-object v24, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->INCS:[I

    aget v7, v24, v8

    .line 1217
    .local v7, h:I
    add-int v24, p2, v7

    const/16 v25, 0x1

    sub-int v16, v24, v25

    .line 1219
    .local v16, mj:I
    add-int v9, p2, v7

    .local v9, i:I
    :cond_4
    move v0, v9

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    .line 1221
    const/4 v13, 0x3

    .local v13, k:I
    :goto_2
    move v0, v9

    move/from16 v1, p3

    if-gt v0, v1, :cond_18

    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_18

    .line 1222
    aget v19, v6, v9

    .line 1223
    .local v19, v:I
    add-int v20, v19, p4

    .line 1224
    .local v20, vd:I
    move v12, v9

    .line 1236
    .local v12, j:I
    const/16 v17, 0x0

    .line 1237
    .local v17, onceRunned:Z
    const/4 v2, 0x0

    .line 1240
    .local v2, a:I
    :goto_3
    if-eqz v17, :cond_6

    .line 1241
    aput v2, v6, v12

    .line 1242
    sub-int/2addr v12, v7

    move v0, v12

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 1361
    :cond_5
    aput v19, v6, v12

    .line 1221
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1246
    :cond_6
    const/16 v17, 0x1

    .line 1249
    :cond_7
    sub-int v24, v12, v7

    aget v2, v6, v24

    .line 1250
    add-int v10, v2, p4

    .line 1251
    .local v10, i1:I
    move/from16 v11, v20

    .line 1255
    .local v11, i2:I
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 1256
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1257
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 1258
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 1259
    add-int/lit8 v24, v10, 0x5

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x5

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1260
    add-int/lit8 v10, v10, 0x6

    aget-byte v24, v4, v10

    add-int/lit8 v11, v11, 0x6

    aget-byte v25, v4, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 1261
    move/from16 v23, v15

    .line 1262
    .local v23, x:I
    :goto_4
    if-lez v23, :cond_5

    .line 1263
    add-int/lit8 v23, v23, -0x4

    .line 1265
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 1266
    aget-char v24, v18, v10

    aget-char v25, v18, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1267
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 1268
    add-int/lit8 v24, v10, 0x1

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x1

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 1269
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1270
    add-int/lit8 v24, v10, 0x2

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x2

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 1271
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1272
    add-int/lit8 v24, v10, 0x3

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x3

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 1273
    add-int/lit8 v10, v10, 0x4

    if-lt v10, v14, :cond_8

    .line 1274
    sub-int/2addr v10, v14

    .line 1276
    :cond_8
    add-int/lit8 v11, v11, 0x4

    if-lt v11, v14, :cond_9

    .line 1277
    sub-int/2addr v11, v14

    .line 1279
    :cond_9
    add-int/lit8 v21, v21, 0x1

    .line 1280
    goto :goto_4

    .line 1281
    :cond_a
    add-int/lit8 v24, v10, 0x3

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x3

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1286
    :cond_b
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1291
    :cond_c
    add-int/lit8 v24, v10, 0x2

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x2

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1296
    :cond_d
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1301
    :cond_e
    add-int/lit8 v24, v10, 0x1

    aget-char v24, v18, v24

    add-int/lit8 v25, v11, 0x1

    aget-char v25, v18, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1306
    :cond_f
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1311
    :cond_10
    aget-char v24, v18, v10

    aget-char v25, v18, v11

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1316
    :cond_11
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1326
    .end local v23           #x:I
    :cond_12
    aget-byte v24, v4, v10

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aget-byte v25, v4, v11

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1332
    :cond_13
    add-int/lit8 v24, v10, 0x5

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x5

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1337
    :cond_14
    add-int/lit8 v24, v10, 0x4

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x4

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1342
    :cond_15
    add-int/lit8 v24, v10, 0x3

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x3

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1347
    :cond_16
    add-int/lit8 v24, v10, 0x2

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x2

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1352
    :cond_17
    add-int/lit8 v24, v10, 0x1

    aget-byte v24, v4, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    add-int/lit8 v25, v11, 0x1

    aget-byte v25, v4, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    goto/16 :goto_3

    .line 1364
    .end local v2           #a:I
    .end local v10           #i1:I
    .end local v11           #i2:I
    .end local v12           #j:I
    .end local v17           #onceRunned:Z
    .end local v19           #v:I
    .end local v20           #vd:I
    :cond_18
    if-eqz v5, :cond_4

    move v0, v9

    move/from16 v1, p3

    if-gt v0, v1, :cond_4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 1371
    .end local v7           #h:I
    .end local v9           #i:I
    .end local v13           #k:I
    .end local v16           #mj:I
    :cond_19
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    .line 1372
    if-eqz v5, :cond_1a

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    const/16 v24, 0x1

    goto/16 :goto_0

    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method private mainSort()V
    .locals 40

    .prologue
    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object v15, v0

    .line 1524
    .local v15, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_runningOrder:[I

    move-object/from16 v31, v0

    .line 1525
    .local v31, runningOrder:[I
    iget-object v14, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_copy:[I

    .line 1526
    .local v14, copy:[I
    iget-object v10, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mainSort_bigDone:[Z

    .line 1527
    .local v10, bigDone:[Z
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->ftab:[I

    move-object/from16 v19, v0

    .line 1528
    .local v19, ftab:[I
    iget-object v11, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1529
    .local v11, block:[B
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    move-object/from16 v17, v0

    .line 1530
    .local v17, fmap:[I
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->quadrant:[C

    move-object/from16 v29, v0

    .line 1531
    .local v29, quadrant:[C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    move/from16 v26, v0

    .line 1532
    .local v26, lastShadow:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workLimit:I

    move/from16 v36, v0

    .line 1533
    .local v36, workLimitShadow:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->firstAttempt:Z

    move/from16 v16, v0

    .line 1536
    .local v16, firstAttemptShadow:Z
    const v24, 0x10001

    .local v24, i:I
    :goto_0
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_0

    .line 1537
    const/16 v37, 0x0

    aput v37, v19, v24

    goto :goto_0

    .line 1545
    :cond_0
    const/16 v24, 0x0

    :goto_1
    const/16 v37, 0x14

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 1546
    add-int v37, v26, v24

    add-int/lit8 v37, v37, 0x2

    add-int/lit8 v38, v26, 0x1

    rem-int v38, v24, v38

    add-int/lit8 v38, v38, 0x1

    aget-byte v38, v11, v38

    aput-byte v38, v11, v37

    .line 1545
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1548
    :cond_1
    add-int/lit8 v37, v26, 0x14

    add-int/lit8 v24, v37, 0x1

    :goto_2
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_2

    .line 1549
    const/16 v37, 0x0

    aput-char v37, v29, v24

    goto :goto_2

    .line 1551
    :cond_2
    const/16 v37, 0x0

    add-int/lit8 v38, v26, 0x1

    aget-byte v38, v11, v38

    aput-byte v38, v11, v37

    .line 1555
    const/16 v37, 0x0

    aget-byte v37, v11, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 1556
    .local v12, c1:I
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_3

    .line 1557
    add-int/lit8 v37, v24, 0x1

    aget-byte v37, v11, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move v13, v0

    .line 1558
    .local v13, c2:I
    shl-int/lit8 v37, v12, 0x8

    add-int v37, v37, v13

    aget v38, v19, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v19, v37

    .line 1559
    move v12, v13

    .line 1556
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1562
    .end local v13           #c2:I
    :cond_3
    const/16 v24, 0x1

    :goto_4
    const/high16 v37, 0x1

    move/from16 v0, v24

    move/from16 v1, v37

    if-gt v0, v1, :cond_4

    .line 1563
    aget v37, v19, v24

    const/16 v38, 0x1

    sub-int v38, v24, v38

    aget v38, v19, v38

    add-int v37, v37, v38

    aput v37, v19, v24

    .line 1562
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1565
    :cond_4
    const/16 v37, 0x1

    aget-byte v37, v11, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 1566
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 1567
    add-int/lit8 v37, v24, 0x2

    aget-byte v37, v11, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move v13, v0

    .line 1568
    .restart local v13       #c2:I
    shl-int/lit8 v37, v12, 0x8

    add-int v37, v37, v13

    aget v38, v19, v37

    const/16 v39, 0x1

    sub-int v38, v38, v39

    aput v38, v19, v37

    aput v24, v17, v38

    .line 1569
    move v12, v13

    .line 1566
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 1572
    .end local v13           #c2:I
    :cond_5
    add-int/lit8 v37, v26, 0x1

    aget-byte v37, v11, v37

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    shl-int/lit8 v37, v37, 0x8

    const/16 v38, 0x1

    aget-byte v38, v11, v38

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    add-int v37, v37, v38

    aget v38, v19, v37

    const/16 v39, 0x1

    sub-int v38, v38, v39

    aput v38, v19, v37

    aput v26, v17, v38

    .line 1578
    const/16 v24, 0x100

    :goto_6
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_6

    .line 1579
    const/16 v37, 0x0

    aput-boolean v37, v10, v24

    .line 1580
    aput v24, v31, v24

    goto :goto_6

    .line 1583
    :cond_6
    const/16 v21, 0x16c

    .local v21, h:I
    :cond_7
    const/16 v37, 0x1

    move/from16 v0, v21

    move/from16 v1, v37

    if-eq v0, v1, :cond_a

    .line 1584
    div-int/lit8 v21, v21, 0x3

    .line 1585
    move/from16 v24, v21

    :goto_7
    const/16 v37, 0xff

    move/from16 v0, v24

    move/from16 v1, v37

    if-gt v0, v1, :cond_7

    .line 1586
    aget v35, v31, v24

    .line 1587
    .local v35, vv:I
    add-int/lit8 v37, v35, 0x1

    shl-int/lit8 v37, v37, 0x8

    aget v37, v19, v37

    shl-int/lit8 v38, v35, 0x8

    aget v38, v19, v38

    sub-int v5, v37, v38

    .line 1588
    .local v5, a:I
    const/16 v37, 0x1

    sub-int v7, v21, v37

    .line 1589
    .local v7, b:I
    move/from16 v25, v24

    .line 1590
    .local v25, j:I
    sub-int v37, v25, v21

    aget v30, v31, v37

    .local v30, ro:I
    :goto_8
    add-int/lit8 v37, v30, 0x1

    shl-int/lit8 v37, v37, 0x8

    aget v37, v19, v37

    shl-int/lit8 v38, v30, 0x8

    aget v38, v19, v38

    sub-int v37, v37, v38

    move/from16 v0, v37

    move v1, v5

    if-le v0, v1, :cond_8

    .line 1592
    aput v30, v31, v25

    .line 1593
    sub-int v25, v25, v21

    .line 1594
    move/from16 v0, v25

    move v1, v7

    if-gt v0, v1, :cond_9

    .line 1598
    :cond_8
    aput v35, v31, v25

    .line 1585
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 1590
    :cond_9
    sub-int v37, v25, v21

    aget v30, v31, v37

    goto :goto_8

    .line 1605
    .end local v5           #a:I
    .end local v7           #b:I
    .end local v25           #j:I
    .end local v30           #ro:I
    .end local v35           #vv:I
    :cond_a
    const/16 v24, 0x0

    :goto_9
    const/16 v37, 0xff

    move/from16 v0, v24

    move/from16 v1, v37

    if-gt v0, v1, :cond_b

    .line 1609
    aget v34, v31, v24

    .line 1618
    .local v34, ss:I
    const/16 v25, 0x0

    .restart local v25       #j:I
    :goto_a
    const/16 v37, 0xff

    move/from16 v0, v25

    move/from16 v1, v37

    if-gt v0, v1, :cond_e

    .line 1619
    shl-int/lit8 v37, v34, 0x8

    add-int v32, v37, v25

    .line 1620
    .local v32, sb:I
    aget v20, v19, v32

    .line 1621
    .local v20, ftab_sb:I
    const/high16 v37, 0x20

    and-int v37, v37, v20

    const/high16 v38, 0x20

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_d

    .line 1622
    const v37, -0x200001

    and-int v27, v20, v37

    .line 1623
    .local v27, lo:I
    add-int/lit8 v37, v32, 0x1

    aget v37, v19, v37

    const v38, -0x200001

    and-int v37, v37, v38

    const/16 v38, 0x1

    sub-int v22, v37, v38

    .line 1624
    .local v22, hi:I
    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 1625
    const/16 v37, 0x2

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v27

    move/from16 v3, v22

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;III)V

    .line 1626
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->workDone:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, v36

    if-le v0, v1, :cond_c

    .line 1685
    .end local v20           #ftab_sb:I
    .end local v22           #hi:I
    .end local v25           #j:I
    .end local v27           #lo:I
    .end local v32           #sb:I
    .end local v34           #ss:I
    :cond_b
    return-void

    .line 1631
    .restart local v20       #ftab_sb:I
    .restart local v22       #hi:I
    .restart local v25       #j:I
    .restart local v27       #lo:I
    .restart local v32       #sb:I
    .restart local v34       #ss:I
    :cond_c
    const/high16 v37, 0x20

    or-int v37, v37, v20

    aput v37, v19, v32

    .line 1618
    .end local v22           #hi:I
    .end local v27           #lo:I
    :cond_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 1639
    .end local v20           #ftab_sb:I
    .end local v32           #sb:I
    :cond_e
    const/16 v25, 0x0

    :goto_b
    const/16 v37, 0xff

    move/from16 v0, v25

    move/from16 v1, v37

    if-gt v0, v1, :cond_f

    .line 1640
    shl-int/lit8 v37, v25, 0x8

    add-int v37, v37, v34

    aget v37, v19, v37

    const v38, -0x200001

    and-int v37, v37, v38

    aput v37, v14, v25

    .line 1639
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1643
    :cond_f
    shl-int/lit8 v37, v34, 0x8

    aget v37, v19, v37

    const v38, -0x200001

    and-int v25, v37, v38

    add-int/lit8 v37, v34, 0x1

    shl-int/lit8 v37, v37, 0x8

    aget v37, v19, v37

    const v38, -0x200001

    and-int v23, v37, v38

    .local v23, hj:I
    :goto_c
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 1644
    aget v18, v17, v25

    .line 1645
    .local v18, fmap_j:I
    aget-byte v37, v11, v18

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 1646
    aget-boolean v37, v10, v12

    if-nez v37, :cond_10

    .line 1647
    aget v37, v14, v12

    if-nez v18, :cond_11

    move/from16 v38, v26

    :goto_d
    aput v38, v17, v37

    .line 1648
    aget v37, v14, v12

    add-int/lit8 v37, v37, 0x1

    aput v37, v14, v12

    .line 1643
    :cond_10
    add-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 1647
    :cond_11
    const/16 v38, 0x1

    sub-int v38, v18, v38

    goto :goto_d

    .line 1652
    .end local v18           #fmap_j:I
    :cond_12
    const/16 v25, 0x100

    :goto_e
    add-int/lit8 v25, v25, -0x1

    if-ltz v25, :cond_13

    .line 1653
    shl-int/lit8 v37, v25, 0x8

    add-int v37, v37, v34

    aget v38, v19, v37

    const/high16 v39, 0x20

    or-int v38, v38, v39

    aput v38, v19, v37

    goto :goto_e

    .line 1663
    :cond_13
    const/16 v37, 0x1

    aput-boolean v37, v10, v34

    .line 1665
    const/16 v37, 0xff

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_16

    .line 1666
    shl-int/lit8 v37, v34, 0x8

    aget v37, v19, v37

    const v38, -0x200001

    and-int v9, v37, v38

    .line 1667
    .local v9, bbStart:I
    add-int/lit8 v37, v34, 0x1

    shl-int/lit8 v37, v37, 0x8

    aget v37, v19, v37

    const v38, -0x200001

    and-int v37, v37, v38

    sub-int v8, v37, v9

    .line 1668
    .local v8, bbSize:I
    const/16 v33, 0x0

    .line 1670
    .local v33, shifts:I
    :goto_f
    shr-int v37, v8, v33

    const v38, 0xfffe

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    .line 1671
    add-int/lit8 v33, v33, 0x1

    goto :goto_f

    .line 1674
    :cond_14
    const/16 v25, 0x0

    :goto_10
    move/from16 v0, v25

    move v1, v8

    if-ge v0, v1, :cond_16

    .line 1675
    add-int v37, v9, v25

    aget v6, v17, v37

    .line 1676
    .local v6, a2update:I
    shr-int v37, v25, v33

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v28, v0

    .line 1677
    .local v28, qVal:C
    aput-char v28, v29, v6

    .line 1678
    const/16 v37, 0x14

    move v0, v6

    move/from16 v1, v37

    if-ge v0, v1, :cond_15

    .line 1679
    add-int v37, v6, v26

    add-int/lit8 v37, v37, 0x1

    aput-char v28, v29, v37

    .line 1674
    :cond_15
    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 1605
    .end local v6           #a2update:I
    .end local v8           #bbSize:I
    .end local v9           #bbStart:I
    .end local v28           #qVal:C
    .end local v33           #shifts:I
    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9
.end method

.method private static med3(BBB)B
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1385
    if-ge p0, p1, :cond_2

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-ge p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    move v0, p1

    goto :goto_0

    :cond_3
    if-le p0, p2, :cond_4

    move v0, p2

    goto :goto_0

    :cond_4
    move v0, p0

    goto :goto_0
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    const/16 v0, 0x18

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->origPtr:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1177
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->generateMTFValues()V

    .line 1178
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues()V

    .line 1179
    return-void
.end method

.method private randomiseBlock()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1688
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v2, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 1689
    .local v2, inUse:[Z
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1690
    .local v0, block:[B
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1692
    .local v4, lastShadow:I
    const/16 v1, 0x100

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1693
    aput-boolean v10, v2, v1

    goto :goto_0

    .line 1695
    :cond_0
    const/4 v5, 0x0

    .line 1696
    .local v5, rNToGo:I
    const/4 v6, 0x0

    .line 1697
    .local v6, rTPos:I
    const/4 v1, 0x0

    const/4 v3, 0x1

    .local v3, j:I
    :goto_1
    if-gt v1, v4, :cond_3

    .line 1698
    if-nez v5, :cond_1

    .line 1699
    invoke-static {v6}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v7

    int-to-char v5, v7

    .line 1700
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x200

    if-ne v6, v7, :cond_1

    .line 1701
    const/4 v6, 0x0

    .line 1705
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 1706
    aget-byte v7, v0, v3

    if-ne v5, v9, :cond_2

    move v8, v9

    :goto_2
    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 1709
    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    aput-boolean v9, v2, v7

    .line 1697
    move v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v8, v10

    .line 1706
    goto :goto_2

    .line 1712
    :cond_3
    iput-boolean v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockRandomised:Z

    .line 1713
    return-void
.end method

.method private sendMTFValues()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 737
    .local v1, len:[[B
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    add-int/lit8 v0, v7, 0x2

    .line 739
    .local v0, alphaSize:I
    const/4 v5, 0x6

    .local v5, t:I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 740
    aget-object v2, v1, v5

    .line 741
    .local v2, len_t:[B
    move v6, v0

    .local v6, v:I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 742
    const/16 v7, 0xf

    aput-byte v7, v2, v6

    goto :goto_0

    .line 748
    .end local v2           #len_t:[B
    .end local v6           #v:I
    :cond_1
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0xc8

    if-ge v7, v8, :cond_2

    const/4 v7, 0x2

    move v3, v7

    .line 752
    .local v3, nGroups:I
    :goto_1
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues0(II)V

    .line 757
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues1(II)I

    move-result v4

    .line 760
    .local v4, nSelectors:I
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues2(II)V

    .line 763
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues3(II)V

    .line 766
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues4()V

    .line 769
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues5(II)V

    .line 772
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues6(II)V

    .line 775
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues7(I)V

    .line 776
    return-void

    .line 748
    .end local v3           #nGroups:I
    .end local v4           #nSelectors:I
    :cond_2
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x258

    if-ge v7, v8, :cond_3

    const/4 v7, 0x3

    move v3, v7

    goto :goto_1

    :cond_3
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x4b0

    if-ge v7, v8, :cond_4

    const/4 v7, 0x4

    move v3, v7

    goto :goto_1

    :cond_4
    iget v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v8, 0x960

    if-ge v7, v8, :cond_5

    const/4 v7, 0x5

    move v3, v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    move v3, v7

    goto :goto_1
.end method

.method private sendMTFValues0(II)V
    .locals 13
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 779
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 780
    .local v5, len:[[B
    iget-object v12, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v7, v12, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 782
    .local v7, mtfFreq:[I
    iget v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 783
    .local v9, remF:I
    const/4 v4, 0x0

    .line 785
    .local v4, gs:I
    move v8, p1

    .local v8, nPart:I
    :goto_0
    if-lez v8, :cond_3

    .line 786
    div-int v10, v9, v8

    .line 787
    .local v10, tFreq:I
    const/4 v12, 0x1

    sub-int v2, v4, v12

    .line 788
    .local v2, ge:I
    const/4 v1, 0x0

    .line 790
    .local v1, aFreq:I
    const/4 v12, 0x1

    sub-int v0, p2, v12

    .local v0, a:I
    move v3, v2

    .end local v2           #ge:I
    .local v3, ge:I
    :goto_1
    if-ge v1, v10, :cond_0

    if-ge v3, v0, :cond_0

    .line 791
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ge:I
    .restart local v2       #ge:I
    aget v12, v7, v2

    add-int/2addr v1, v12

    move v3, v2

    .end local v2           #ge:I
    .restart local v3       #ge:I
    goto :goto_1

    .line 794
    :cond_0
    if-le v3, v4, :cond_4

    if-eq v8, p1, :cond_4

    const/4 v12, 0x1

    if-eq v8, v12, :cond_4

    sub-int v12, p1, v8

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    .line 796
    add-int/lit8 v2, v3, -0x1

    .end local v3           #ge:I
    .restart local v2       #ge:I
    aget v12, v7, v3

    sub-int/2addr v1, v12

    .line 799
    :goto_2
    const/4 v12, 0x1

    sub-int v12, v8, v12

    aget-object v6, v5, v12

    .line 800
    .local v6, len_np:[B
    move v11, p2

    .local v11, v:I
    :goto_3
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    .line 801
    if-lt v11, v4, :cond_1

    if-gt v11, v2, :cond_1

    .line 802
    const/4 v12, 0x0

    aput-byte v12, v6, v11

    goto :goto_3

    .line 804
    :cond_1
    const/16 v12, 0xf

    aput-byte v12, v6, v11

    goto :goto_3

    .line 808
    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 809
    sub-int/2addr v9, v1

    .line 785
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 811
    .end local v0           #a:I
    .end local v1           #aFreq:I
    .end local v2           #ge:I
    .end local v6           #len_np:[B
    .end local v10           #tFreq:I
    .end local v11           #v:I
    :cond_3
    return-void

    .restart local v0       #a:I
    .restart local v1       #aFreq:I
    .restart local v3       #ge:I
    .restart local v10       #tFreq:I
    :cond_4
    move v2, v3

    .end local v3           #ge:I
    .restart local v2       #ge:I
    goto :goto_2
.end method

.method private sendMTFValues1(II)I
    .locals 41
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object v15, v0

    .line 815
    .local v15, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    move-object/from16 v31, v0

    .line 816
    .local v31, rfreq:[[I
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    move-object/from16 v16, v0

    .line 817
    .local v16, fave:[I
    iget-object v7, v15, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 818
    .local v7, cost:[S
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v35, v0

    .line 819
    .local v35, sfmap:[C
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    move-object/from16 v34, v0

    .line 820
    .local v34, selector:[B
    move-object v0, v15

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    move-object/from16 v22, v0

    .line 821
    .local v22, len:[[B
    const/16 v37, 0x0

    aget-object v23, v22, v37

    .line 822
    .local v23, len_0:[B
    const/16 v37, 0x1

    aget-object v24, v22, v37

    .line 823
    .local v24, len_1:[B
    const/16 v37, 0x2

    aget-object v25, v22, v37

    .line 824
    .local v25, len_2:[B
    const/16 v37, 0x3

    aget-object v26, v22, v37

    .line 825
    .local v26, len_3:[B
    const/16 v37, 0x4

    aget-object v27, v22, v37

    .line 826
    .local v27, len_4:[B
    const/16 v37, 0x5

    aget-object v28, v22, v37

    .line 827
    .local v28, len_5:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v29, v0

    .line 829
    .local v29, nMTFShadow:I
    const/16 v30, 0x0

    .line 831
    .local v30, nSelectors:I
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_0
    const/16 v37, 0x4

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 832
    move/from16 v36, p1

    .local v36, t:I
    :cond_0
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_1

    .line 833
    const/16 v37, 0x0

    aput v37, v16, v36

    .line 834
    aget-object v33, v31, v36

    .line 835
    .local v33, rfreqt:[I
    move/from16 v19, p2

    .local v19, i:I
    :goto_1
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_0

    .line 836
    const/16 v37, 0x0

    aput v37, v33, v19

    goto :goto_1

    .line 840
    .end local v19           #i:I
    .end local v33           #rfreqt:[I
    :cond_1
    const/16 v30, 0x0

    .line 842
    const/16 v18, 0x0

    .local v18, gs:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_a

    .line 850
    add-int/lit8 v37, v18, 0x32

    const/16 v38, 0x1

    sub-int v37, v37, v38

    const/16 v38, 0x1

    sub-int v38, v29, v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 852
    .local v17, ge:I
    const/16 v37, 0x6

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 855
    const/4 v8, 0x0

    .line 856
    .local v8, cost0:S
    const/4 v9, 0x0

    .line 857
    .local v9, cost1:S
    const/4 v10, 0x0

    .line 858
    .local v10, cost2:S
    const/4 v11, 0x0

    .line 859
    .local v11, cost3:S
    const/4 v12, 0x0

    .line 860
    .local v12, cost4:S
    const/4 v13, 0x0

    .line 862
    .local v13, cost5:S
    move/from16 v19, v18

    .restart local v19       #i:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 863
    aget-char v20, v35, v19

    .line 864
    .local v20, icv:I
    aget-byte v37, v23, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v8

    move/from16 v0, v37

    int-to-short v0, v0

    move v8, v0

    .line 865
    aget-byte v37, v24, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v9

    move/from16 v0, v37

    int-to-short v0, v0

    move v9, v0

    .line 866
    aget-byte v37, v25, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v10

    move/from16 v0, v37

    int-to-short v0, v0

    move v10, v0

    .line 867
    aget-byte v37, v26, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v11

    move/from16 v0, v37

    int-to-short v0, v0

    move v11, v0

    .line 868
    aget-byte v37, v27, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v12

    move/from16 v0, v37

    int-to-short v0, v0

    move v12, v0

    .line 869
    aget-byte v37, v28, v20

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    add-int v37, v37, v13

    move/from16 v0, v37

    int-to-short v0, v0

    move v13, v0

    .line 862
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 872
    .end local v20           #icv:I
    :cond_2
    const/16 v37, 0x0

    aput-short v8, v7, v37

    .line 873
    const/16 v37, 0x1

    aput-short v9, v7, v37

    .line 874
    const/16 v37, 0x2

    aput-short v10, v7, v37

    .line 875
    const/16 v37, 0x3

    aput-short v11, v7, v37

    .line 876
    const/16 v37, 0x4

    aput-short v12, v7, v37

    .line 877
    const/16 v37, 0x5

    aput-short v13, v7, v37

    .line 896
    .end local v8           #cost0:S
    .end local v9           #cost1:S
    .end local v10           #cost2:S
    .end local v11           #cost3:S
    .end local v12           #cost4:S
    .end local v13           #cost5:S
    :cond_3
    const/4 v6, -0x1

    .line 897
    .local v6, bt:I
    move/from16 v36, p1

    const v5, 0x3b9ac9ff

    .local v5, bc:I
    :cond_4
    :goto_4
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_8

    .line 898
    aget-short v14, v7, v36

    .line 899
    .local v14, cost_t:I
    if-ge v14, v5, :cond_4

    .line 900
    move v5, v14

    .line 901
    move/from16 v6, v36

    goto :goto_4

    .line 880
    .end local v5           #bc:I
    .end local v6           #bt:I
    .end local v14           #cost_t:I
    .end local v19           #i:I
    :cond_5
    move/from16 v36, p1

    :goto_5
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_6

    .line 881
    const/16 v37, 0x0

    aput-short v37, v7, v36

    goto :goto_5

    .line 884
    :cond_6
    move/from16 v19, v18

    .restart local v19       #i:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 885
    aget-char v20, v35, v19

    .line 886
    .restart local v20       #icv:I
    move/from16 v36, p1

    :goto_7
    add-int/lit8 v36, v36, -0x1

    if-ltz v36, :cond_7

    .line 887
    aget-short v37, v7, v36

    aget-object v38, v22, v36

    aget-byte v38, v38, v20

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    int-to-short v0, v0

    move/from16 v37, v0

    aput-short v37, v7, v36

    goto :goto_7

    .line 884
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 905
    .end local v20           #icv:I
    .restart local v5       #bc:I
    .restart local v6       #bt:I
    :cond_8
    aget v37, v16, v6

    add-int/lit8 v37, v37, 0x1

    aput v37, v16, v6

    .line 906
    move v0, v6

    int-to-byte v0, v0

    move/from16 v37, v0

    aput-byte v37, v34, v30

    .line 907
    add-int/lit8 v30, v30, 0x1

    .line 912
    aget-object v32, v31, v6

    .line 913
    .local v32, rfreq_bt:[I
    move/from16 v19, v18

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    .line 914
    aget-char v37, v35, v19

    aget v38, v32, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v32, v37

    .line 913
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 917
    :cond_9
    add-int/lit8 v18, v17, 0x1

    .line 918
    goto/16 :goto_2

    .line 923
    .end local v5           #bc:I
    .end local v6           #bt:I
    .end local v17           #ge:I
    .end local v19           #i:I
    .end local v32           #rfreq_bt:[I
    :cond_a
    const/16 v36, 0x0

    :goto_9
    move/from16 v0, v36

    move/from16 v1, p1

    if-ge v0, v1, :cond_b

    .line 924
    aget-object v37, v22, v36

    aget-object v38, v31, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, p2

    move/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V

    .line 923
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 831
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 928
    .end local v18           #gs:I
    .end local v36           #t:I
    :cond_c
    return v30
.end method

.method private sendMTFValues2(II)V
    .locals 10
    .parameter "nGroups"
    .parameter "nSelectors"

    .prologue
    const/4 v9, 0x0

    .line 934
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 935
    .local v0, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 937
    .local v4, pos:[B
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 938
    int-to-byte v7, v1

    aput-byte v7, v4, v1

    goto :goto_0

    .line 941
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 942
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    aget-byte v3, v7, v1

    .line 943
    .local v3, ll_i:B
    aget-byte v5, v4, v9

    .line 944
    .local v5, tmp:B
    const/4 v2, 0x0

    .line 946
    .local v2, j:I
    :goto_2
    if-eq v3, v5, :cond_1

    .line 947
    add-int/lit8 v2, v2, 0x1

    .line 948
    move v6, v5

    .line 949
    .local v6, tmp2:B
    aget-byte v5, v4, v2

    .line 950
    aput-byte v6, v4, v2

    goto :goto_2

    .line 953
    .end local v6           #tmp2:B
    :cond_1
    aput-byte v5, v4, v9

    .line 954
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    int-to-byte v8, v2

    aput-byte v8, v7, v1

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 956
    .end local v2           #j:I
    .end local v3           #ll_i:B
    .end local v5           #tmp:B
    :cond_2
    return-void
.end method

.method private sendMTFValues3(II)V
    .locals 10
    .parameter "nGroups"
    .parameter "alphaSize"

    .prologue
    .line 959
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 960
    .local v0, code:[[I
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v3, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 962
    .local v3, len:[[B
    const/4 v7, 0x0

    .local v7, t:I
    :goto_0
    if-ge v7, p1, :cond_3

    .line 963
    const/16 v6, 0x20

    .line 964
    .local v6, minLen:I
    const/4 v5, 0x0

    .line 965
    .local v5, maxLen:I
    aget-object v4, v3, v7

    .line 966
    .local v4, len_t:[B
    move v1, p2

    .local v1, i:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 967
    aget-byte v8, v4, v1

    and-int/lit16 v2, v8, 0xff

    .line 968
    .local v2, l:I
    if-le v2, v5, :cond_1

    .line 969
    move v5, v2

    .line 971
    :cond_1
    if-ge v2, v6, :cond_0

    .line 972
    move v6, v2

    goto :goto_1

    .line 979
    .end local v2           #l:I
    :cond_2
    aget-object v8, v0, v7

    aget-object v9, v3, v7

    invoke-static {v8, v9, v6, v5, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbAssignCodes([I[BIII)V

    .line 962
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 981
    .end local v1           #i:I
    .end local v4           #len_t:[B
    .end local v5           #maxLen:I
    .end local v6           #minLen:I
    :cond_3
    return-void
.end method

.method private sendMTFValues4()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x1

    .line 984
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 985
    .local v4, inUse:[Z
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v5, v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 987
    .local v5, inUse16:[Z
    const/16 v2, 0x10

    .local v2, i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 988
    aput-boolean v11, v5, v2

    .line 989
    mul-int/lit8 v3, v2, 0x10

    .line 990
    .local v3, i16:I
    const/16 v6, 0x10

    .local v6, j:I
    :cond_1
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 991
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_1

    .line 992
    aput-boolean v9, v5, v2

    goto :goto_0

    .line 997
    .end local v3           #i16:I
    .end local v6           #j:I
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_4

    .line 998
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_3

    move v8, v9

    :goto_2
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 997
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v8, v11

    .line 998
    goto :goto_2

    .line 1001
    :cond_4
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1002
    .local v7, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1003
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1005
    .local v0, bsBuffShadow:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_8

    .line 1006
    aget-boolean v8, v5, v2

    if-eqz v8, :cond_7

    .line 1007
    mul-int/lit8 v3, v2, 0x10

    .line 1008
    .restart local v3       #i16:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_4
    if-ge v6, v10, :cond_7

    .line 1010
    :goto_5
    const/16 v8, 0x8

    if-lt v1, v8, :cond_5

    .line 1011
    shr-int/lit8 v8, v0, 0x18

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write(I)V

    .line 1012
    shl-int/lit8 v0, v0, 0x8

    .line 1013
    add-int/lit8 v1, v1, -0x8

    goto :goto_5

    .line 1015
    :cond_5
    add-int v8, v3, v6

    aget-boolean v8, v4, v8

    if-eqz v8, :cond_6

    .line 1016
    const/16 v8, 0x20

    sub-int/2addr v8, v1

    sub-int/2addr v8, v9

    shl-int v8, v9, v8

    or-int/2addr v0, v8

    .line 1018
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1008
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1005
    .end local v3           #i16:I
    .end local v6           #j:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1023
    :cond_8
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1024
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1025
    return-void
.end method

.method private sendMTFValues5(II)V
    .locals 10
    .parameter "nGroups"
    .parameter "nSelectors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 1029
    const/4 v7, 0x3

    invoke-direct {p0, v7, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1030
    const/16 v7, 0xf

    invoke-direct {p0, v7, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1032
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1033
    .local v5, outShadow:Ljava/io/OutputStream;
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v6, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1035
    .local v6, selectorMtf:[B
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1036
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1038
    .local v0, bsBuffShadow:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 1039
    const/4 v4, 0x0

    .local v4, j:I
    aget-byte v7, v6, v3

    and-int/lit16 v2, v7, 0xff

    .local v2, hj:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 1041
    :goto_2
    if-lt v1, v9, :cond_0

    .line 1042
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1043
    shl-int/lit8 v0, v0, 0x8

    .line 1044
    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    .line 1046
    :cond_0
    const/16 v7, 0x20

    sub-int/2addr v7, v1

    sub-int/2addr v7, v8

    shl-int v7, v8, v7

    or-int/2addr v0, v7

    .line 1047
    add-int/lit8 v1, v1, 0x1

    .line 1039
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1051
    :cond_1
    :goto_3
    if-lt v1, v9, :cond_2

    .line 1052
    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1053
    shl-int/lit8 v0, v0, 0x8

    .line 1054
    add-int/lit8 v1, v1, -0x8

    goto :goto_3

    .line 1057
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1060
    .end local v2           #hj:I
    .end local v4           #j:I
    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1061
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1062
    return-void
.end method

.method private sendMTFValues6(II)V
    .locals 12
    .parameter "nGroups"
    .parameter "alphaSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v4, v9, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1067
    .local v4, len:[[B
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1069
    .local v7, outShadow:Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1070
    .local v1, bsLiveShadow:I
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1072
    .local v0, bsBuffShadow:I
    const/4 v8, 0x0

    .local v8, t:I
    :goto_0
    if-ge v8, p1, :cond_7

    .line 1073
    aget-object v5, v4, v8

    .line 1074
    .local v5, len_t:[B
    const/4 v9, 0x0

    aget-byte v9, v5, v9

    and-int/lit16 v2, v9, 0xff

    .line 1077
    .local v2, curr:I
    :goto_1
    const/16 v9, 0x8

    if-lt v1, v9, :cond_0

    .line 1078
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1079
    shl-int/lit8 v0, v0, 0x8

    .line 1080
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 1082
    :cond_0
    const/16 v9, 0x20

    sub-int/2addr v9, v1

    const/4 v10, 0x5

    sub-int/2addr v9, v10

    shl-int v9, v2, v9

    or-int/2addr v0, v9

    .line 1083
    add-int/lit8 v1, v1, 0x5

    .line 1085
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, p2, :cond_6

    .line 1086
    aget-byte v9, v5, v3

    and-int/lit16 v6, v9, 0xff

    .line 1087
    .local v6, lti:I
    :goto_3
    if-ge v2, v6, :cond_3

    .line 1089
    :goto_4
    const/16 v9, 0x8

    if-lt v1, v9, :cond_1

    .line 1090
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1091
    shl-int/lit8 v0, v0, 0x8

    .line 1092
    add-int/lit8 v1, v1, -0x8

    goto :goto_4

    .line 1094
    :cond_1
    const/4 v9, 0x2

    const/16 v10, 0x20

    sub-int/2addr v10, v1

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1095
    add-int/lit8 v1, v1, 0x2

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1107
    :cond_2
    const/4 v9, 0x3

    const/16 v10, 0x20

    sub-int/2addr v10, v1

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 1108
    add-int/lit8 v1, v1, 0x2

    .line 1110
    add-int/lit8 v2, v2, -0x1

    .line 1100
    :cond_3
    if-le v2, v6, :cond_4

    .line 1102
    :goto_5
    const/16 v9, 0x8

    if-lt v1, v9, :cond_2

    .line 1103
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1104
    shl-int/lit8 v0, v0, 0x8

    .line 1105
    add-int/lit8 v1, v1, -0x8

    goto :goto_5

    .line 1114
    :cond_4
    :goto_6
    const/16 v9, 0x8

    if-lt v1, v9, :cond_5

    .line 1115
    shr-int/lit8 v9, v0, 0x18

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 1116
    shl-int/lit8 v0, v0, 0x8

    .line 1117
    add-int/lit8 v1, v1, -0x8

    goto :goto_6

    .line 1120
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1085
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1072
    .end local v6           #lti:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1124
    .end local v2           #curr:I
    .end local v3           #i:I
    .end local v5           #len_t:[B
    :cond_7
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1125
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1126
    return-void
.end method

.method private sendMTFValues7(I)V
    .locals 21
    .parameter "nSelectors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    move-object v6, v0

    .line 1130
    .local v6, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1131
    .local v9, len:[[B
    iget-object v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1132
    .local v4, code:[[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    move-object v13, v0

    .line 1133
    .local v13, outShadow:Ljava/io/OutputStream;
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1134
    .local v15, selector:[B
    move-object v0, v6

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    move-object/from16 v17, v0

    .line 1135
    .local v17, sfmap:[C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    move v12, v0

    .line 1137
    .local v12, nMTFShadow:I
    const/4 v14, 0x0

    .line 1139
    .local v14, selCtr:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    move v3, v0

    .line 1140
    .local v3, bsLiveShadow:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    move v2, v0

    .line 1142
    .local v2, bsBuffShadow:I
    const/4 v8, 0x0

    .local v8, gs:I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 1143
    add-int/lit8 v19, v8, 0x32

    const/16 v20, 0x1

    sub-int v19, v19, v20

    const/16 v20, 0x1

    sub-int v20, v12, v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1144
    .local v7, ge:I
    aget-byte v19, v15, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1145
    .local v16, selector_selCtr:I
    aget-object v5, v4, v16

    .line 1146
    .local v5, code_selCtr:[I
    aget-object v10, v9, v16

    .line 1148
    .local v10, len_selCtr:[B
    :goto_1
    if-gt v8, v7, :cond_1

    .line 1149
    aget-char v18, v17, v8

    .line 1155
    .local v18, sfmap_i:I
    :goto_2
    const/16 v19, 0x8

    move v0, v3

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 1156
    shr-int/lit8 v19, v2, 0x18

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1157
    shl-int/lit8 v2, v2, 0x8

    .line 1158
    add-int/lit8 v3, v3, -0x8

    goto :goto_2

    .line 1160
    :cond_0
    aget-byte v19, v10, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move v11, v0

    .line 1161
    .local v11, n:I
    aget v19, v5, v18

    const/16 v20, 0x20

    sub-int v20, v20, v3

    sub-int v20, v20, v11

    shl-int v19, v19, v20

    or-int v2, v2, v19

    .line 1162
    add-int/2addr v3, v11

    .line 1164
    add-int/lit8 v8, v8, 0x1

    .line 1165
    goto :goto_1

    .line 1167
    .end local v11           #n:I
    .end local v18           #sfmap_i:I
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .line 1168
    add-int/lit8 v14, v14, 0x1

    .line 1169
    goto :goto_0

    .line 1171
    .end local v5           #code_selCtr:[I
    .end local v7           #ge:I
    .end local v10           #len_selCtr:[B
    .end local v16           #selector_selCtr:I
    :cond_2
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1172
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1173
    return-void
.end method

.method private static vswap([IIII)V
    .locals 4
    .parameter "fmap"
    .parameter "p1"
    .parameter "p2"
    .parameter "n"

    .prologue
    .line 1376
    add-int/2addr p3, p1

    move v1, p2

    .end local p2
    .local v1, p2:I
    move v0, p1

    .line 1377
    .end local p1
    .local v0, p1:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1378
    aget v2, p0, v0

    .line 1379
    .local v2, t:I
    add-int/lit8 p1, v0, 0x1

    .end local v0           #p1:I
    .restart local p1
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1380
    add-int/lit8 p2, v1, 0x1

    .end local v1           #p2:I
    .restart local p2
    aput v2, p0, v1

    move v1, p2

    .end local p2
    .restart local v1       #p2:I
    move v0, p1

    .line 1381
    .end local p1
    .restart local v0       #p1:I
    goto :goto_0

    .line 1382
    .end local v2           #t:I
    :cond_0
    return-void
.end method

.method private write0(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 665
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-eq v0, v2, :cond_2

    .line 666
    and-int/lit16 p1, p1, 0xff

    .line 667
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-ne v0, p1, :cond_1

    .line 668
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    .line 669
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 670
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 676
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 677
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    goto :goto_0

    .line 680
    :cond_2
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 681
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    goto :goto_0
.end method

.method private writeRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 444
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 446
    .local v4, lastShadow:I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    if-ge v4, v6, :cond_0

    .line 447
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 448
    .local v2, currentCharShadow:I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 449
    .local v3, dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v2

    .line 450
    int-to-byte v1, v2

    .line 452
    .local v1, ch:B
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 453
    .local v5, runLengthShadow:I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(II)V

    .line 455
    packed-switch v5, :pswitch_data_0

    .line 477
    add-int/lit8 v5, v5, -0x4

    .line 478
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v7, v6, v5

    .line 479
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 480
    .local v0, block:[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 481
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 482
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 483
    add-int/lit8 v6, v4, 0x5

    aput-byte v1, v0, v6

    .line 484
    add-int/lit8 v6, v4, 0x6

    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 485
    add-int/lit8 v6, v4, 0x5

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 495
    .end local v0           #block:[B
    .end local v1           #ch:B
    .end local v2           #currentCharShadow:I
    .end local v3           #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5           #runLengthShadow:I
    :goto_0
    return-void

    .line 457
    .restart local v1       #ch:B
    .restart local v2       #currentCharShadow:I
    .restart local v3       #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v5       #runLengthShadow:I
    :pswitch_0
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 458
    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 462
    :pswitch_1
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x2

    aput-byte v1, v6, v7

    .line 463
    iget-object v6, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v7, v4, 0x3

    aput-byte v1, v6, v7

    .line 464
    add-int/lit8 v6, v4, 0x2

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 469
    .restart local v0       #block:[B
    add-int/lit8 v6, v4, 0x2

    aput-byte v1, v0, v6

    .line 470
    add-int/lit8 v6, v4, 0x3

    aput-byte v1, v0, v6

    .line 471
    add-int/lit8 v6, v4, 0x4

    aput-byte v1, v0, v6

    .line 472
    add-int/lit8 v6, v4, 0x3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 491
    .end local v0           #block:[B
    .end local v1           #ch:B
    .end local v2           #currentCharShadow:I
    .end local v3           #dataShadow:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v5           #runLengthShadow:I
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 492
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 493
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 524
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 525
    .local v0, outShadow:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 526
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 528
    .end local v0           #outShadow:Ljava/io/OutputStream;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V

    .line 502
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 503
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 509
    :try_start_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    if-lez v0, :cond_0

    .line 510
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 512
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 513
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endCompression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 517
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 520
    :cond_1
    return-void

    .line 516
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 517
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 532
    .local v0, outShadow:Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 535
    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    .line 441
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 5
    .parameter "buf"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    if-gez p2, :cond_0

    .line 645
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_0
    if-gez p3, :cond_1

    .line 648
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") < 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 650
    :cond_1
    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 651
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "offs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") + len("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") > buf.length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-nez v2, :cond_3

    .line 656
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 659
    :cond_3
    add-int v0, p2, p3

    .local v0, hi:I
    move v1, p2

    .end local p2
    .local v1, offs:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 660
    add-int/lit8 p2, v1, 0x1

    .end local v1           #offs:I
    .restart local p2
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    move v1, p2

    .end local p2
    .restart local v1       #offs:I
    goto :goto_0

    .line 662
    :cond_4
    return-void
.end method
