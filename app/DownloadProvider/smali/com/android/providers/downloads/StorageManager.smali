.class Lcom/android/providers/downloads/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final sDownloadDataDirLowSpaceThreshold:J

.field private static final sMaxdownloadDataDirSize:J

.field private static sSingleton:Lcom/android/providers/downloads/StorageManager;


# instance fields
.field private mBytesDownloadedSinceLastCheckOnSpace:I

.field private mCleanupThread:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadDataDir:Ljava/io/File;

.field private final mExternalStorageDir:Ljava/io/File;

.field private mNumDownloadsSoFar:I

.field private final mSystemCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 104
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 92
    iput-object p1, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 96
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->trimDatabase()V

    return-void
.end method

.method private discardPurgeableFiles(IJ)J
    .locals 16
    .parameter "destination"
    .parameter "targetBytes"

    .prologue
    .line 315
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_0

    .line 316
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discardPurgeableFiles: destination = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", targetBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    const/4 v3, 0x5

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 322
    .local v10, destStr:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v7, v3

    .line 323
    .local v7, bindArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "( status = \'200\' AND destination = ? )"

    const-string v8, "lastmod"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 331
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 332
    const-wide/16 v3, 0x0

    .line 356
    :goto_1
    return-wide v3

    .line 319
    .end local v7           #bindArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #destStr:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_0

    .line 334
    .restart local v7       #bindArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #destStr:Ljava/lang/String;
    :cond_2
    const-wide/16 v14, 0x0

    .line 336
    .local v14, totalFreed:J
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    cmp-long v3, v14, p2

    if-gez v3, :cond_4

    .line 337
    new-instance v11, Ljava/io/File;

    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v11, file:Ljava/io/File;
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_3

    .line 339
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "purging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v14, v3

    .line 343
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 344
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 345
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 350
    .end local v11           #file:Ljava/io/File;
    .end local v12           #id:J
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 352
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_5

    .line 353
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purged files, freed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requested"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-wide v3, v14

    .line 356
    goto/16 :goto_1
.end method

.method private declared-synchronized findSpace(Ljava/io/File;JI)V
    .locals 6
    .parameter "root"
    .parameter "targetBytes"
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    const/4 v2, 0x4

    if-eq p4, v2, :cond_2

    if-nez p4, :cond_3

    .line 190
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc7

    const-string v4, "external media not mounted"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 196
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 197
    .local v0, bytesAvailable:J
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 202
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 203
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J

    move-result-wide v0

    .line 205
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System cache dir (\'/cache\') is running low on space.space available (in bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J

    move-result-wide v0

    .line 227
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_7

    .line 229
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloads data dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running low on space. space available (in b): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_5
    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    .line 239
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and unable to free any more"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 218
    :cond_6
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0xc6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "space in the filesystem rooted at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is below 10% availability. stopping this download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 231
    :cond_7
    cmp-long v2, v0, p2

    if-gez v2, :cond_5

    .line 233
    sget-wide v2, Lcom/android/providers/downloads/StorageManager;->sDownloadDataDirLowSpaceThreshold:J

    invoke-direct {p0, p4, v2, v3}, Lcom/android/providers/downloads/StorageManager;->discardPurgeableFiles(IJ)J

    .line 234
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V

    .line 235
    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/StorageManager;->getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method private getAvailableBytesInDownloadsDataDir(Ljava/io/File;)J
    .locals 10
    .parameter "root"

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 251
    .local v0, files:[Ljava/io/File;
    sget-wide v3, Lcom/android/providers/downloads/StorageManager;->sMaxdownloadDataDirSize:J

    .line 252
    .local v3, space:J
    if-nez v0, :cond_0

    move-wide v5, v3

    .line 262
    .end local v3           #space:J
    .local v5, space:J
    :goto_0
    return-wide v5

    .line 255
    .end local v5           #space:J
    .restart local v3       #space:J
    :cond_0
    array-length v2, v0

    .line 256
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 257
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_1
    sget-boolean v7, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v7, :cond_2

    .line 260
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "available space (in bytes) in downloads data dir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v5, v3

    .line 262
    .end local v3           #space:J
    .restart local v5       #space:J
    goto :goto_0
.end method

.method private getAvailableBytesInFileSystemAtGivenRoot(Ljava/io/File;)J
    .locals 9
    .parameter "root"

    .prologue
    .line 266
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 268
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    sub-long v0, v5, v7

    .line 269
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v5, v0

    .line 270
    .local v2, size:J
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 271
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    return-wide v2
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    const-class v0, Lcom/android/providers/downloads/StorageManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/providers/downloads/StorageManager;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/StorageManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;

    .line 88
    :cond_0
    sget-object v1, Lcom/android/providers/downloads/StorageManager;->sSingleton:Lcom/android/providers/downloads/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized incrementBytesDownloadedSinceLastCheckOnSpace(J)I
    .locals 2
    .parameter "val"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 467
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeSpuriousFiles()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 367
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "DownloadManager"

    const-string v1, "in removeSpuriousFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v9, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 373
    .local v11, listOfFiles:[Ljava/io/File;
    if-eqz v11, :cond_1

    .line 374
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 377
    if-eqz v11, :cond_2

    .line 378
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 416
    :cond_3
    return-void

    .line 383
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 387
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 388
    :cond_5
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 389
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, filename:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 391
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_6

    .line 392
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in removeSpuriousFiles, preserving file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    .end local v8           #filename:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 400
    :cond_8
    if-eqz v6, :cond_9

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 406
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lost+found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dlpkgfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 411
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_b

    .line 412
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting spurious file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private declared-synchronized resetBytesDownloadedSinceLastCheckOnSpace()V
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startThreadToCleanupDatabaseAndPurgeFileSystem()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/providers/downloads/StorageManager$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/StorageManager$1;-><init>(Lcom/android/providers/downloads/StorageManager;)V

    iput-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    .line 126
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mCleanupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private trimDatabase()V
    .locals 11

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "DownloadManager"

    const-string v1, "in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    const/4 v7, 0x0

    .line 429
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 433
    if-nez v7, :cond_2

    .line 436
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    if-eqz v7, :cond_1

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    sub-int v10, v0, v1

    .line 441
    .local v10, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 442
    .local v6, columnId:I
    :goto_1
    if-lez v10, :cond_3

    .line 443
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 445
    .local v8, downloadUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 459
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :cond_3
    if-eqz v7, :cond_1

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 449
    .restart local v6       #columnId:I
    .restart local v8       #downloadUri:Landroid/net/Uri;
    .restart local v10       #numDelete:I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 450
    goto :goto_1

    .line 452
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v10           #numDelete:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 456
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimDatabase failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    if-eqz v7, :cond_1

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 459
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method getDownloadDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    return-object v0
.end method

.method declared-synchronized incrementNumDownloadsSoFar()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/downloads/StorageManager;->mNumDownloadsSoFar:I

    rem-int/lit16 v0, v0, 0xfa

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;
    .locals 5
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 279
    packed-switch p2, :pswitch_data_0

    .line 298
    :pswitch_0
    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    :goto_0
    return-object v1

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 287
    :pswitch_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, base:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create external downloads directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    .line 294
    goto :goto_0

    .line 301
    .end local v0           #base:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected value for destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method verifySpace(ILjava/lang/String;J)V
    .locals 4
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/providers/downloads/StorageManager;->resetBytesDownloadedSinceLastCheckOnSpace()V

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, dir:Ljava/io/File;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in verifySpace, destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 171
    :cond_2
    :goto_0
    if-nez v0, :cond_5

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid combination of destination: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    .line 157
    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    .line 160
    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mExternalStorageDir:Ljava/io/File;

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mDownloadDataDir:Ljava/io/File;

    goto :goto_0

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager;->mSystemCacheDir:Ljava/io/File;

    goto :goto_0

    .line 175
    :cond_5
    invoke-direct {p0, v0, p3, p4, p1}, Lcom/android/providers/downloads/StorageManager;->findSpace(Ljava/io/File;JI)V

    .line 176
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    .locals 2
    .parameter "destination"
    .parameter "path"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p3, p4}, Lcom/android/providers/downloads/StorageManager;->incrementBytesDownloadedSinceLastCheckOnSpace(J)I

    move-result v0

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    goto :goto_0
.end method
