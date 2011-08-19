.class public Lcom/google/android/music/dl/artwork/ArtDownloadService;
.super Landroid/app/Service;
.source "ArtDownloadService.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
.implements Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final NO_MEDIA_FILE:Ljava/lang/String; = ".nomedia"

.field private static final TAG:Ljava/lang/String; = "ArtDownloadService"


# instance fields
.field private mArtDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;

.field private mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

.field private mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "ArtDownloadService"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 37
    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 192
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$3;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/NetworkMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/dl/artwork/ArtDownloadService;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    return-object p1
.end method

.method private clearOrphanedFiles()V
    .locals 26

    .prologue
    .line 57
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v23

    .line 58
    .local v23, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 59
    .local v4, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v25, 0x0

    .line 60
    .local v25, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v24, 0x0

    .line 63
    .local v24, success:Z
    :try_start_0
    const-string v5, "ARTWORK"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "LocalLocation"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "LocalLocation"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 66
    .local v19, localFiles:Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashMap;

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, v17

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    .local v17, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 68
    .local v20, noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 70
    .local v21, path:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 71
    .local v15, id:J
    new-instance v13, Ljava/io/File;

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v13, f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v13           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v17           #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19           #localFiles:Landroid/database/Cursor;
    .end local v20           #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v21           #path:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 108
    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    :cond_0
    if-eqz v25, :cond_1

    .line 111
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_1
    throw v5

    .line 75
    .restart local v13       #f:Ljava/io/File;
    .restart local v15       #id:J
    .restart local v17       #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19       #localFiles:Landroid/database/Cursor;
    .restart local v20       #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21       #path:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v13           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v21           #path:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 79
    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    const/4 v4, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalArtworkCacheDir()Ljava/io/File;

    move-result-object v12

    .line 84
    .local v12, externalCacheDir:Ljava/io/File;
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getLocalArtworkCacheDir()Ljava/io/File;

    move-result-object v18

    .line 87
    .local v18, localCacheDir:Ljava/io/File;
    if-eqz v18, :cond_5

    if-eqz v12, :cond_4

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    :cond_4
    invoke-static/range {v17 .. v18}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 92
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 94
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 95
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v22, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 97
    .local v15, id:Ljava/lang/Long;
    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 100
    .end local v15           #id:Ljava/lang/Long;
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 102
    const-string v5, "ARTWORK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlbumId IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    const/16 v24, 0x1

    .line 107
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v22           #sb:Ljava/lang/StringBuilder;
    :cond_8
    if-eqz v4, :cond_9

    .line 108
    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    :cond_9
    if-eqz v25, :cond_a

    .line 111
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 114
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    .line 115
    return-void
.end method

.method private clearOrphanedFilesAsync()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->start()V

    .line 164
    return-void
.end method

.method private getExternalArtworkCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Ljava/io/File;

    const-string v2, "artwork"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLocalArtworkCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Ljava/io/File;

    const-string v2, "artwork"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startAsyncDownloads()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private static validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 9
    .parameter
    .parameter "fileOrDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    const-string v6, ".nomedia"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 132
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_4

    .line 133
    const-string v6, "ArtDownloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Neither file nor directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_4
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 136
    .local v2, file:Ljava/io/File;
    invoke-static {p0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtDownloader:Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 152
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 154
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 171
    return-void
.end method

.method public onDownloadQueueCompleted()V
    .locals 5

    .prologue
    .line 231
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v2}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-nez v2, :cond_2

    .line 239
    new-instance v2, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {v2, p0, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$DownloadQueueCompleteListener;)V

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 245
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, foundTopChoices:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->getAlbumsBeingListenedFor()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 248
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    .line 250
    const/4 v1, 0x1

    goto :goto_1

    .line 240
    .end local v1           #foundTopChoices:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->getCurrentNumberOfDownloads()I

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 253
    .restart local v1       #foundTopChoices:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 254
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 256
    :cond_4
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v0, 0x0

    .line 259
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/Store;->getAlbumsRequiringArtworkDownload(Ljava/util/Set;)Landroid/database/Cursor;

    move-result-object v0

    .line 261
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->addDownload(Ljava/lang/Long;)V

    goto :goto_2

    .line 264
    .end local v1           #foundTopChoices:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 266
    :catchall_1
    move-exception v2

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 264
    .restart local v1       #foundTopChoices:Z
    :cond_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    const-string v0, "com.google.android.music.SYNC_COMPLETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V

    .line 181
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V

    goto :goto_0
.end method

.method public onStreamabilityChanged(Z)V
    .locals 1
    .parameter "isStreamable"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->onDownloadQueueCompleted()V

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->shutdownNow()Ljava/util/List;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 226
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
