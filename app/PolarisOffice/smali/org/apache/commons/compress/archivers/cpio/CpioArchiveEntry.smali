.class public Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
.super Ljava/lang/Object;
.source "CpioArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/cpio/CpioConstants;
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private final alignmentBoundary:I

.field private chksum:J

.field private final fileFormat:S

.field private filesize:J

.field private gid:J

.field private final headerSize:I

.field private inode:J

.field private maj:J

.field private min:J

.field private mode:J

.field private mtime:J

.field private name:Ljava/lang/String;

.field private nlink:J

.field private rmaj:J

.field private rmin:J

.field private uid:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "inputFile"
    .parameter "entryName"

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/io/File;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "size"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 273
    return-void
.end method

.method public constructor <init>(S)V
    .locals 4
    .parameter "format"

    .prologue
    const/16 v3, 0x6e

    const/4 v2, 0x4

    const-wide/16 v0, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    .line 166
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    .line 168
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    .line 170
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    .line 172
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    .line 174
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    .line 176
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    .line 178
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    .line 182
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    .line 184
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    .line 186
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    .line 188
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown header type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_1
    iput v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 208
    iput v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    .line 225
    :goto_0
    iput-short p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    .line 226
    return-void

    .line 211
    :pswitch_2
    iput v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 212
    iput v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_0

    .line 215
    :pswitch_3
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_0

    .line 219
    :pswitch_4
    const/16 v0, 0x1a

    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    .line 220
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(SLjava/io/File;Ljava/lang/String;)V
    .locals 6
    .parameter "format"
    .parameter "inputFile"
    .parameter "entryName"

    .prologue
    .line 336
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_0
    invoke-direct {p0, p1, p3, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;J)V

    .line 337
    const-wide/16 v0, 0x0

    .line 338
    .local v0, mode:J
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    .line 347
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setMode(J)V

    .line 348
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setTime(J)V

    .line 349
    return-void

    .line 336
    .end local v0           #mode:J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 340
    .restart local v0       #mode:J
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    goto :goto_1

    .line 343
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot determine type of file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .parameter "format"
    .parameter "name"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(S)V

    .line 258
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;J)V
    .locals 0
    .parameter "format"
    .parameter "name"
    .parameter "size"

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;-><init>(SLjava/lang/String;)V

    .line 297
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->setSize(J)V

    .line 298
    return-void
.end method

.method private checkNewFormat()V
    .locals 1

    .prologue
    .line 355
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 358
    :cond_0
    return-void
.end method

.method private checkOldFormat()V
    .locals 1

    .prologue
    .line 364
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 872
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 886
    :goto_0
    return v2

    .line 875
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    .line 876
    goto :goto_0

    .line 878
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    move-object v1, v0

    .line 879
    .local v1, other:Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 880
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 881
    goto :goto_0

    .line 883
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 884
    goto :goto_0

    :cond_4
    move v2, v5

    .line 886
    goto :goto_0
.end method

.method public getAlignmentBoundary()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    return v0
.end method

.method public getChksum()J
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 378
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    return-wide v0
.end method

.method public getDataPadCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    iget v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    if-nez v3, :cond_0

    move v3, v5

    .line 491
    :goto_0
    return v3

    .line 486
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    .line 487
    .local v1, size:J
    iget v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    int-to-long v3, v3

    rem-long v3, v1, v3

    long-to-int v0, v3

    .line 488
    .local v0, remain:I
    if-lez v0, :cond_1

    .line 489
    iget v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    sub-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v5

    .line 491
    goto :goto_0
.end method

.method public getDevice()J
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 391
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-wide v0
.end method

.method public getDeviceMaj()J
    .locals 2

    .prologue
    .line 403
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 404
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    return-wide v0
.end method

.method public getDeviceMin()J
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 415
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    return-wide v0
.end method

.method public getFormat()S
    .locals 1

    .prologue
    .line 434
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->fileFormat:S

    return v0
.end method

.method public getGID()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    return-wide v0
.end method

.method public getHeaderPadCount()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 470
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    if-nez v2, :cond_0

    move v2, v4

    .line 476
    :goto_0
    return v2

    .line 471
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 472
    .local v1, size:I
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    rem-int v0, v1, v2

    .line 473
    .local v0, remain:I
    if-lez v0, :cond_1

    .line 474
    iget v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->alignmentBoundary:I

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 476
    goto :goto_0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->headerSize:I

    return v0
.end method

.method public getInode()J
    .locals 2

    .prologue
    .line 500
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    return-wide v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 582
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getTime()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()J
    .locals 4

    .prologue
    .line 509
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "TRAILER!!!"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x8000

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfLinks()J
    .locals 4

    .prologue
    .line 527
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    int-to-long v0, v0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    goto :goto_1
.end method

.method public getRemoteDevice()J
    .locals 2

    .prologue
    .line 541
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 542
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-wide v0
.end method

.method public getRemoteDeviceMaj()J
    .locals 2

    .prologue
    .line 554
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 555
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    return-wide v0
.end method

.method public getRemoteDeviceMin()J
    .locals 2

    .prologue
    .line 567
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 568
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 425
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 577
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    return-wide v0
.end method

.method public getUID()J
    .locals 2

    .prologue
    .line 591
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 862
    const/16 v0, 0x1f

    .line 863
    .local v0, prime:I
    const/4 v1, 0x1

    .line 864
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 865
    return v1

    .line 864
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBlockDevice()Z
    .locals 4

    .prologue
    .line 600
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x6000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharacterDevice()Z
    .locals 4

    .prologue
    .line 609
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x2000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 4

    .prologue
    .line 618
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetwork()Z
    .locals 4

    .prologue
    .line 627
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x9000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPipe()Z
    .locals 4

    .prologue
    .line 636
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegularFile()Z
    .locals 4

    .prologue
    .line 645
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSocket()Z
    .locals 4

    .prologue
    .line 654
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0xc000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 4

    .prologue
    .line 663
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    const-wide/32 v2, 0xf000

    and-long/2addr v0, v2

    const-wide/32 v2, 0xa000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChksum(J)V
    .locals 0
    .parameter "chksum"

    .prologue
    .line 674
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 675
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->chksum:J

    .line 676
    return-void
.end method

.method public setDevice(J)V
    .locals 0
    .parameter "device"

    .prologue
    .line 688
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 689
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    .line 690
    return-void
.end method

.method public setDeviceMaj(J)V
    .locals 0
    .parameter "maj"

    .prologue
    .line 699
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 700
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->maj:J

    .line 701
    return-void
.end method

.method public setDeviceMin(J)V
    .locals 0
    .parameter "min"

    .prologue
    .line 710
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 711
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->min:J

    .line 712
    return-void
.end method

.method public setGID(J)V
    .locals 0
    .parameter "gid"

    .prologue
    .line 735
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->gid:J

    .line 736
    return-void
.end method

.method public setInode(J)V
    .locals 0
    .parameter "inode"

    .prologue
    .line 745
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->inode:J

    .line 746
    return-void
.end method

.method public setMode(J)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 755
    const-wide/32 v2, 0xf000

    and-long v0, p1, v2

    .line 756
    .local v0, maskedMode:J
    long-to-int v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 767
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown mode. Full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " Masked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 773
    :sswitch_0
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mode:J

    .line 774
    return-void

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x9000 -> :sswitch_0
        0xa000 -> :sswitch_0
        0xc000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 783
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->name:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setNumberOfLinks(J)V
    .locals 0
    .parameter "nlink"

    .prologue
    .line 793
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->nlink:J

    .line 794
    return-void
.end method

.method public setRemoteDevice(J)V
    .locals 0
    .parameter "device"

    .prologue
    .line 806
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkOldFormat()V

    .line 807
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    .line 808
    return-void
.end method

.method public setRemoteDeviceMaj(J)V
    .locals 0
    .parameter "rmaj"

    .prologue
    .line 820
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 821
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmaj:J

    .line 822
    return-void
.end method

.method public setRemoteDeviceMin(J)V
    .locals 0
    .parameter "rmin"

    .prologue
    .line 834
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->checkNewFormat()V

    .line 835
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->rmin:J

    .line 836
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 721
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid entry size <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_1
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->filesize:J

    .line 726
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 845
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->mtime:J

    .line 846
    return-void
.end method

.method public setUID(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 855
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->uid:J

    .line 856
    return-void
.end method
