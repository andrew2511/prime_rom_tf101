.class public Lcom/android/gallery3d/util/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/BlobCache$LookupRequest;
    }
.end annotation


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .parameter "path"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "reset"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    .line 121
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mBlobHeader:[B

    .line 122
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 418
    new-instance v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/android/gallery3d/util/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    .line 137
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 138
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 139
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 140
    iput p5, p0, Lcom/android/gallery3d/util/BlobCache;->mVersion:I

    .line 142
    if-nez p4, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/gallery3d/util/BlobCache;->resetCache(II)V

    .line 148
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->closeAll()V

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .locals 6
    .parameter "hashStart"

    .prologue
    const/16 v5, 0x400

    .line 359
    new-array v2, v5, [B

    .line 360
    .local v2, zero:[B
    iget-object v3, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    .local v0, count:I
    :goto_0
    if-lez v0, :cond_0

    .line 362
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 363
    .local v1, todo:I
    iget-object v3, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 364
    sub-int/2addr v0, v1

    .line 365
    goto :goto_0

    .line 366
    .end local v1           #todo:I
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 182
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 626
    if-nez p0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    .line 337
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 342
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->updateIndexHeader()V

    .line 344
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->setActiveVariables()V

    .line 345
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/BlobCache;->clearHash(I)V

    .line 346
    invoke-virtual {p0}, Lcom/android/gallery3d/util/BlobCache;->syncIndex()V

    .line 347
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/util/BlobCache$LookupRequest;)Z
    .locals 17
    .parameter "file"
    .parameter "offset"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/util/BlobCache;->mBlobHeader:[B

    move-object v8, v0

    .line 488
    .local v8, header:[B
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    .line 490
    .local v10, oldPosition:J
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v14, v0

    :try_start_0
    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 491
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v14

    const/16 v15, 0x14

    if-eq v14, v15, :cond_0

    .line 492
    const-string v14, "BlobCache"

    const-string v15, "cannot read blob header"

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v14

    .line 495
    :cond_0
    const/4 v14, 0x0

    :try_start_1
    invoke-static {v8, v14}, Lcom/android/gallery3d/util/BlobCache;->readLong([BI)J

    move-result-wide v5

    .line 496
    .local v5, blobKey:J
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->key:J

    move-wide v14, v0

    cmp-long v14, v5, v14

    if-eqz v14, :cond_1

    .line 497
    const-string v14, "BlobCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "blob key does not match: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 500
    :cond_1
    const/16 v14, 0x8

    :try_start_2
    invoke-static {v8, v14}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v12

    .line 501
    .local v12, sum:I
    const/16 v14, 0xc

    invoke-static {v8, v14}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v7

    .line 502
    .local v7, blobOffset:I
    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 503
    const-string v14, "BlobCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "blob offset does not match: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 504
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 506
    :cond_2
    const/16 v14, 0x10

    :try_start_3
    invoke-static {v8, v14}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v9

    .line 507
    .local v9, length:I
    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    move v14, v0

    sub-int v14, v14, p2

    const/16 v15, 0x14

    sub-int/2addr v14, v15

    if-le v9, v14, :cond_4

    .line 508
    :cond_3
    const-string v14, "BlobCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "invalid blob length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 509
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 511
    :cond_4
    :try_start_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    move-object v14, v0

    if-eqz v14, :cond_5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    move-object v14, v0

    array-length v14, v14

    if-ge v14, v9, :cond_6

    .line 512
    :cond_5
    new-array v14, v9, [B

    move-object v0, v14

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    .line 515
    :cond_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    move-object v4, v0

    .line 516
    .local v4, blob:[B
    move v0, v9

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->length:I

    .line 518
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v14

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14

    if-eq v14, v9, :cond_7

    .line 519
    const-string v14, "BlobCache"

    const-string v15, "cannot read blob data"

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 520
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 522
    :cond_7
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/util/BlobCache;->checkSum([BII)I

    move-result v14

    if-eq v14, v12, :cond_8

    .line 523
    const-string v14, "BlobCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "blob checksum does not match: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 524
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 526
    :cond_8
    const/4 v14, 0x1

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 527
    .end local v4           #blob:[B
    .end local v5           #blobKey:J
    .end local v7           #blobOffset:I
    .end local v9           #length:I
    .end local v12           #sum:I
    :catch_0
    move-exception v14

    move-object v13, v14

    .line 528
    .local v13, t:Ljava/lang/Throwable;
    :try_start_6
    const-string v14, "BlobCache"

    const-string v15, "getBlob failed."

    invoke-static {v14, v15, v13}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 529
    const/4 v14, 0x0

    .line 531
    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .end local v13           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v14
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .parameter "key"
    .parameter "data"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mBlobHeader:[B

    .line 396
    .local v0, header:[B
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/util/BlobCache;->checkSum([B)I

    move-result v1

    .line 397
    .local v1, sum:I
    invoke-static {v0, v4, p1, p2}, Lcom/android/gallery3d/util/BlobCache;->writeLong([BIJ)V

    .line 398
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 399
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 400
    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 401
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 402
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 404
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 405
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 406
    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    .line 407
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 408
    return-void
.end method

.method private loadIndex()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 192
    iget-object v6, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    .line 193
    .local v6, buf:[B
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 194
    const-string v0, "BlobCache"

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 276
    .end local v6           #buf:[B
    :goto_0
    return v0

    .line 198
    .restart local v6       #buf:[B
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_1

    .line 199
    const-string v0, "BlobCache"

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 200
    goto :goto_0

    .line 203
    :cond_1
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_2

    .line 204
    const-string v0, "BlobCache"

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 205
    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    .line 209
    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    .line 210
    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    .line 211
    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    .line 212
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    .line 214
    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v9

    .line 215
    .local v9, sum:I
    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/gallery3d/util/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 216
    const-string v0, "BlobCache"

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 217
    goto :goto_0

    .line 221
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 222
    const-string v0, "BlobCache"

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 223
    goto :goto_0

    .line 225
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 226
    const-string v0, "BlobCache"

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 227
    goto :goto_0

    .line 229
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_6

    .line 230
    const-string v0, "BlobCache"

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 234
    :cond_7
    const-string v0, "BlobCache"

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_8
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 238
    :cond_9
    const-string v0, "BlobCache"

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 239
    goto/16 :goto_0

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 243
    const-string v0, "BlobCache"

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 244
    goto/16 :goto_0

    .line 248
    :cond_b
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 249
    .local v8, magic:[B
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 250
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_c
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 254
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 258
    const-string v0, "BlobCache"

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_e
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/gallery3d/util/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 262
    const-string v0, "BlobCache"

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 263
    goto/16 :goto_0

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 273
    goto/16 :goto_0

    .line 274
    .end local v6           #buf:[B
    .end local v8           #magic:[B
    .end local v9           #sum:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 275
    .local v7, ex:Ljava/io/IOException;
    const-string v0, "BlobCache"

    const-string v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    .line 276
    goto/16 :goto_0
.end method

.method private lookupInternal(JI)Z
    .locals 9
    .parameter "key"
    .parameter "hashStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 545
    iget v6, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    int-to-long v6, v6

    rem-long v6, p1, v6

    long-to-int v4, v6

    .line 546
    .local v4, slot:I
    if-gez v4, :cond_0

    iget v6, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v6

    .line 547
    :cond_0
    move v5, v4

    .line 549
    .local v5, slotBegin:I
    :cond_1
    :goto_0
    mul-int/lit8 v6, v4, 0xc

    add-int v3, p3, v6

    .line 550
    .local v3, offset:I
    iget-object v6, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 551
    .local v0, candidateKey:J
    iget-object v6, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    .line 552
    .local v2, candidateOffset:I
    if-nez v2, :cond_2

    .line 553
    iput v3, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    move v6, v8

    .line 558
    :goto_1
    return v6

    .line 555
    :cond_2
    cmp-long v6, v0, p1

    if-nez v6, :cond_3

    .line 556
    iput v3, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    .line 557
    iput v2, p0, Lcom/android/gallery3d/util/BlobCache;->mFileOffset:I

    .line 558
    const/4 v6, 0x1

    goto :goto_1

    .line 560
    :cond_3
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    if-lt v4, v6, :cond_4

    .line 561
    const/4 v4, 0x0

    .line 563
    :cond_4
    if-ne v4, v5, :cond_1

    .line 564
    const-string v6, "BlobCache"

    const-string v7, "corrupted index: clear the slot."

    invoke-static {v6, v7}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v6, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v7, v4, 0xc

    add-int/2addr v7, p3

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7, v8}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 635
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 7
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 642
    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    .line 643
    .local v1, result:J
    const/4 v0, 0x6

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 644
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 643
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 646
    :cond_0
    return-wide v1
.end method

.method private resetCache(II)V
    .locals 9
    .parameter "maxEntries"
    .parameter "maxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 297
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 298
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 299
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    .line 301
    .local v0, buf:[B
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 302
    invoke-static {v0, v7, p1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 303
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 304
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 305
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 306
    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 307
    const/16 v1, 0x18

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 308
    invoke-virtual {p0, v0, v4, v8}, Lcom/android/gallery3d/util/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 316
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 317
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 318
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 319
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 320
    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 281
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 282
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 286
    iput v3, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    .line 287
    iput v3, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveHashStart:I

    .line 289
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 290
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveHashStart:I

    .line 294
    :goto_2
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 292
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/util/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    return-void
.end method

.method static writeInt([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 650
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 651
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 652
    shr-int/lit8 p2, p2, 0x8

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 5
    .parameter "buf"
    .parameter "offset"
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 657
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 658
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 659
    shr-long/2addr p2, v4

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2
    .parameter "data"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 616
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "nbytes"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 622
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public insert(J[B)V
    .locals 3
    .parameter "key"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->flipRegion()V

    .line 379
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/util/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 386
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/util/BlobCache;->insertInternal(J[BI)V

    .line 387
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->updateIndexHeader()V

    .line 388
    return-void
.end method

.method public lookup(Lcom/android/gallery3d/util/BlobCache$LookupRequest;)Z
    .locals 7
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 441
    iget-wide v2, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->key:J

    iget v4, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/gallery3d/util/BlobCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/android/gallery3d/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/util/BlobCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    .line 475
    :goto_0
    return v2

    .line 450
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    .line 453
    .local v0, insertOffset:I
    iget-wide v2, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->key:J

    iget v4, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/gallery3d/util/BlobCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcom/android/gallery3d/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/gallery3d/util/BlobCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxBytes:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/util/BlobCache;->mMaxEntries:I

    if-lt v2, v3, :cond_2

    :cond_1
    move v2, v6

    .line 459
    goto :goto_0

    .line 462
    :cond_2
    iput v0, p0, Lcom/android/gallery3d/util/BlobCache;->mSlotOffset:I

    .line 464
    :try_start_0
    iget-wide v2, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->key:J

    iget-object v4, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    iget v5, p1, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/gallery3d/util/BlobCache;->insertInternal(J[BI)V

    .line 465
    iget v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    .line 466
    iget-object v2, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x10

    iget v4, p0, Lcom/android/gallery3d/util/BlobCache;->mActiveEntries:I

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/util/BlobCache;->writeInt([BII)V

    .line 467
    invoke-direct {p0}, Lcom/android/gallery3d/util/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v6

    .line 471
    goto :goto_0

    .line 468
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 469
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BlobCache"

    const-string v3, "cannot copy over"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 475
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(J)[B
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    iput-wide p1, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->key:J

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    iput-object v1, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/util/BlobCache;->lookup(Lcom/android/gallery3d/util/BlobCache$LookupRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/util/BlobCache;->mLookupRequest:Lcom/android/gallery3d/util/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/android/gallery3d/util/BlobCache$LookupRequest;->buffer:[B

    .line 425
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 575
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
