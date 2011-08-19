.class public final Lcom/ecareme/pixwe/media/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/DiskCache$Record;
    }
.end annotation


# static fields
.field private static final CHUNK_FILE_PREFIX:Ljava/lang/String; = "chunk_"

.field private static final CHUNK_SIZE:I = 0x100000

.field private static final INDEX_FILE_NAME:Ljava/lang/String; = "index"

.field private static final INDEX_HEADER_MAGIC:I = 0xcafe

.field private static final INDEX_HEADER_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DiskCache"


# instance fields
.field private final mCacheDirectoryPath:Ljava/lang/String;

.field private final mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/DiskCache$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInsertions:I

.field private mTailChunk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "cacheDirectoryName"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v2}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 44
    iput v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    .line 45
    iput v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    .line 48
    invoke-static {p1}, Lcom/ecareme/pixwe/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, cacheDirectoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, cacheDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, "DiskCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create cache directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iput-object v1, p0, Lcom/ecareme/pixwe/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->loadIndex()V

    .line 57
    return-void
.end method

.method private getChunkFile(I)Ljava/io/RandomAccessFile;
    .locals 9
    .parameter "chunk"

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, chunkFile:Ljava/io/RandomAccessFile;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v6

    .line 336
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    int-to-long v7, p1

    invoke-virtual {v5, v7, v8}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object v1, v0

    .line 335
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-nez v1, :cond_0

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "chunk_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, chunkFilePath:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #chunkFile:Ljava/io/RandomAccessFile;
    .local v2, chunkFile:Ljava/io/RandomAccessFile;
    move-object v1, v2

    .line 345
    .end local v2           #chunkFile:Ljava/io/RandomAccessFile;
    .restart local v1       #chunkFile:Ljava/io/RandomAccessFile;
    :goto_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v5

    .line 346
    :try_start_2
    iget-object v6, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    int-to-long v7, p1

    invoke-virtual {v6, v7, v8, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 345
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    .end local v3           #chunkFilePath:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 335
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 342
    .restart local v3       #chunkFilePath:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 343
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v5, "DiskCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to create or open the chunk file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method

.method private getIndexFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadIndex()V
    .locals 23

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, indexFilePath:Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 231
    .local v14, fileInput:Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/BufferedInputStream;

    const/16 v4, 0x400

    invoke-direct {v11, v14, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 232
    .local v11, bufferedInput:Ljava/io/BufferedInputStream;
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 235
    .local v12, dataInput:Ljava/io/DataInputStream;
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 236
    .local v19, magic:I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 237
    .local v22, version:I
    const/16 v21, 0x1

    .line 238
    .local v21, valid:Z
    const v4, 0xcafe

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_0

    .line 239
    const-string v4, "DiskCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Index file appears to be corrupt ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0xcafe

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v21, 0x0

    .line 242
    :cond_0
    if-eqz v21, :cond_1

    const/4 v4, 0x2

    move/from16 v0, v22

    move v1, v4

    if-eq v0, v1, :cond_1

    .line 244
    const-string v4, "DiskCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Index file version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v21, 0x0

    .line 247
    :cond_1
    if-eqz v21, :cond_2

    .line 248
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    .line 252
    :cond_2
    if-eqz v21, :cond_3

    .line 254
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 255
    .local v20, numEntries:I
    new-instance v4, Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v0, v4

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v11, v0

    .end local v11           #bufferedInput:Ljava/io/BufferedInputStream;
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 256
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    .end local v15           #i:I
    .end local v20           #numEntries:I
    :cond_3
    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 270
    if-nez v21, :cond_4

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 280
    new-instance v4, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v4}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 283
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v19           #magic:I
    .end local v21           #valid:Z
    .end local v22           #version:I
    :cond_5
    :goto_1
    return-void

    .line 258
    .restart local v12       #dataInput:Ljava/io/DataInputStream;
    .restart local v14       #fileInput:Ljava/io/FileInputStream;
    .restart local v15       #i:I
    .restart local v19       #magic:I
    .restart local v20       #numEntries:I
    .restart local v21       #valid:Z
    .restart local v22       #version:I
    :cond_6
    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v17

    .line 259
    .local v17, key:J
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 260
    .local v5, chunk:I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 261
    .local v6, offset:I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 262
    .local v7, size:I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 263
    .local v8, sizeOnDisk:I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 264
    .local v9, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v13, v0

    new-instance v4, Lcom/ecareme/pixwe/media/DiskCache$Record;

    invoke-direct/range {v4 .. v10}, Lcom/ecareme/pixwe/media/DiskCache$Record;-><init>(IIIIJ)V

    move-object v0, v13

    move-wide/from16 v1, v17

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 257
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 256
    .end local v5           #chunk:I
    .end local v6           #offset:I
    .end local v7           #size:I
    .end local v8           #sizeOnDisk:I
    .end local v9           #timestamp:J
    .end local v17           #key:J
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 274
    .end local v12           #dataInput:Ljava/io/DataInputStream;
    .end local v14           #fileInput:Ljava/io/FileInputStream;
    .end local v15           #i:I
    .end local v19           #magic:I
    .end local v20           #numEntries:I
    .end local v21           #valid:Z
    .end local v22           #version:I
    :catch_0
    move-exception v4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 280
    new-instance v4, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v4}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    goto :goto_1

    .line 276
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 277
    .local v13, e:Ljava/io/IOException;
    :try_start_5
    const-string v4, "DiskCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to read the index file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 280
    new-instance v4, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v4}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    goto :goto_1

    .line 278
    .end local v13           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v5, v0

    if-nez v5, :cond_7

    .line 280
    new-instance v5, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 282
    :cond_7
    throw v4
.end method

.method private shutdown()V
    .locals 6

    .prologue
    .line 203
    iget-object v4, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v4

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 211
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 203
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v3

    .line 215
    :try_start_1
    iget-object v4, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 214
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :cond_1
    return-void

    .line 206
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mChunkFiles:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v3, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 208
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "DiskCache"

    const-string v5, "Unable to close chunk file"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 214
    .restart local v2       #size:I
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private writeIndex()V
    .locals 15

    .prologue
    .line 286
    const/4 v10, 0x0

    .line 287
    .local v10, tempFile:Ljava/io/File;
    iget-object v11, p0, Lcom/ecareme/pixwe/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    .line 288
    .local v11, tempFilePath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->getIndexFilePath()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, indexFilePath:Ljava/lang/String;
    :try_start_0
    const-string v12, "DiskCache"

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 296
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v3, fileOutput:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    invoke-direct {v0, v3, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 298
    .local v0, bufferedOutput:Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    .local v1, dataOutput:Ljava/io/DataOutputStream;
    iget-object v12, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/LongSparseArray;->size()I

    move-result v8

    .line 302
    .local v8, numRecords:I
    const v12, 0xcafe

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    iget v12, p0, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 305
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 325
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    .end local v0           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v1           #dataOutput:Ljava/io/DataOutputStream;
    .end local v3           #fileOutput:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v8           #numRecords:I
    :goto_1
    return-void

    .line 291
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 292
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "DiskCache"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to create or tempFile "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 309
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bufferedOutput:Ljava/io/BufferedOutputStream;
    .restart local v1       #dataOutput:Ljava/io/DataOutputStream;
    .restart local v3       #fileOutput:Ljava/io/FileOutputStream;
    .restart local v4       #i:I
    .restart local v8       #numRecords:I
    :cond_0
    :try_start_2
    iget-object v12, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v12, v4}, Lcom/ecareme/pixwe/media/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 310
    .local v6, key:J
    iget-object v12, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v12, v4}, Lcom/ecareme/pixwe/media/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ecareme/pixwe/media/DiskCache$Record;

    .line 311
    .local v9, record:Lcom/ecareme/pixwe/media/DiskCache$Record;
    invoke-virtual {v1, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 312
    iget v12, v9, Lcom/ecareme/pixwe/media/DiskCache$Record;->chunk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 313
    iget v12, v9, Lcom/ecareme/pixwe/media/DiskCache$Record;->offset:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    iget v12, v9, Lcom/ecareme/pixwe/media/DiskCache$Record;->size:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 315
    iget v12, v9, Lcom/ecareme/pixwe/media/DiskCache$Record;->sizeOnDisk:I

    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 316
    iget-wide v12, v9, Lcom/ecareme/pixwe/media/DiskCache$Record;->timestamp:J

    invoke-virtual {v1, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 326
    .end local v0           #bufferedOutput:Ljava/io/BufferedOutputStream;
    .end local v1           #dataOutput:Ljava/io/DataOutputStream;
    .end local v3           #fileOutput:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v6           #key:J
    .end local v8           #numRecords:I
    .end local v9           #record:Lcom/ecareme/pixwe/media/DiskCache$Record;
    :catch_1
    move-exception v12

    move-object v2, v12

    .line 328
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v12, "DiskCache"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to write the index file "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->writeIndex()V

    .line 199
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->shutdown()V

    .line 200
    return-void
.end method

.method public delete(J)V
    .locals 2
    .parameter "key"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->remove(J)V

    .line 171
    monitor-exit v0

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteAll()V
    .locals 6

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->shutdown()V

    .line 181
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mCacheDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, cacheDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, cacheFiles:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 188
    :cond_0
    return-void

    .line 185
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v1, v2, v4

    .line 186
    .local v1, cacheFile:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->shutdown()V

    .line 62
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    .line 193
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/DiskCache;->writeIndex()V

    .line 195
    :cond_0
    return-void
.end method

.method public get(JJ)[B
    .locals 10
    .parameter "key"
    .parameter "timestamp"

    .prologue
    const/4 v9, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, record:Lcom/ecareme/pixwe/media/DiskCache$Record;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v6

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v5, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/ecareme/pixwe/media/DiskCache$Record;

    move-object v4, v0

    .line 67
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz v4, :cond_1

    .line 72
    iget-wide v5, v4, Lcom/ecareme/pixwe/media/DiskCache$Record;->timestamp:J

    cmp-long v5, v5, p3

    if-gez v5, :cond_0

    .line 73
    const-string v5, "DiskCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "File has been updated to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " since the last time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/ecareme/pixwe/media/DiskCache$Record;->timestamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 74
    const-string v7, " stored in cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 89
    :goto_0
    return-object v5

    .line 67
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 78
    :cond_0
    :try_start_2
    iget v5, v4, Lcom/ecareme/pixwe/media/DiskCache$Record;->chunk:I

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 79
    .local v1, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v1, :cond_1

    .line 80
    iget v5, v4, Lcom/ecareme/pixwe/media/DiskCache$Record;->size:I

    new-array v2, v5, [B

    .line 81
    .local v2, data:[B
    iget v5, v4, Lcom/ecareme/pixwe/media/DiskCache$Record;->offset:I

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 82
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v2

    .line 83
    goto :goto_0

    .line 85
    .end local v1           #chunkFile:Ljava/io/RandomAccessFile;
    .end local v2           #data:[B
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 86
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "DiskCache"

    const-string v6, "Unable to read from chunk file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    move-object v5, v9

    .line 89
    goto :goto_0
.end method

.method public isDataAvailable(JJ)Z
    .locals 5
    .parameter "key"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, record:Lcom/ecareme/pixwe/media/DiskCache$Record;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ecareme/pixwe/media/DiskCache$Record;

    move-object v1, v0

    .line 94
    monitor-exit v3

    .line 97
    if-nez v1, :cond_0

    move v2, v4

    .line 105
    :goto_0
    return v2

    .line 94
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 100
    :cond_0
    iget-wide v2, v1, Lcom/ecareme/pixwe/media/DiskCache$Record;->timestamp:J

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    move v2, v4

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    iget v2, v1, Lcom/ecareme/pixwe/media/DiskCache$Record;->size:I

    if-nez v2, :cond_2

    move v2, v4

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public put(J[BJ)V
    .locals 17
    .parameter "key"
    .parameter "data"
    .parameter "timestamp"

    .prologue
    .line 110
    const/4 v15, 0x0

    .line 111
    .local v15, record:Lcom/ecareme/pixwe/media/DiskCache$Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v4, v0

    monitor-enter v4

    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/ecareme/pixwe/media/DiskCache$Record;

    move-object v15, v0

    .line 111
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-eqz v15, :cond_1

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    iget v5, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->sizeOnDisk:I

    if-gt v4, v5, :cond_1

    .line 116
    iget v5, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->chunk:I

    .line 118
    .local v5, currentChunk:I
    :try_start_1
    iget v4, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->chunk:I

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v13

    .line 119
    .local v13, chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v13, :cond_1

    .line 120
    iget v4, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->offset:I

    int-to-long v9, v4

    invoke-virtual {v13, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 121
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v11, v0

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v12, v0

    new-instance v4, Lcom/ecareme/pixwe/media/DiskCache$Record;

    iget v6, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->offset:I

    move-object/from16 v0, p3

    array-length v0, v0

    move v7, v0

    iget v8, v15, Lcom/ecareme/pixwe/media/DiskCache$Record;->sizeOnDisk:I

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/ecareme/pixwe/media/DiskCache$Record;-><init>(IIIIJ)V

    move-object v0, v12

    move-wide/from16 v1, p1

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 122
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 131
    .end local v5           #currentChunk:I
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 111
    .end local v13           #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 122
    .restart local v5       #currentChunk:I
    .restart local v13       #chunkFile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 135
    .end local v5           #currentChunk:I
    .end local v13           #chunkFile:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 136
    .local v14, e:Ljava/lang/Exception;
    const-string v4, "DiskCache"

    const-string v5, "Unable to read from chunk file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v14           #e:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    move v7, v0

    .line 141
    .local v7, chunk:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;->getChunkFile(I)Ljava/io/RandomAccessFile;

    move-result-object v13

    .line 142
    .restart local v13       #chunkFile:Ljava/io/RandomAccessFile;
    if-eqz v13, :cond_3

    .line 144
    :try_start_7
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v8, v9

    .line 145
    .local v8, offset:I
    int-to-long v9, v8

    invoke-virtual {v13, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 146
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v4, v0

    monitor-enter v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 148
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mIndexMap:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v5, v0

    new-instance v6, Lcom/ecareme/pixwe/media/DiskCache$Record;

    move-object/from16 v0, p3

    array-length v0, v0

    move v9, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move v10, v0

    move-wide/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/ecareme/pixwe/media/DiskCache$Record;-><init>(IIIIJ)V

    move-object v0, v5

    move-wide/from16 v1, p1

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 147
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 150
    :try_start_9
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    add-int/2addr v4, v8

    const/high16 v5, 0x10

    if-le v4, v5, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mTailChunk:I

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/DiskCache;->mNumInsertions:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 162
    .end local v8           #offset:I
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 163
    .local v14, e:Ljava/io/IOException;
    const-string v4, "DiskCache"

    const-string v5, "Unable to write new entry to chunk file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    .end local v14           #e:Ljava/io/IOException;
    .restart local v8       #offset:I
    :catchall_2
    move-exception v5

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 166
    .end local v8           #offset:I
    :cond_3
    const-string v4, "DiskCache"

    const-string v5, "getChunkFile() returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
