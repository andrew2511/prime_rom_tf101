.class Lcom/google/android/music/sync/google/MusicDownstreamReader;
.super Lcom/google/android/music/sync/common/DownstreamReader;
.source "MusicDownstreamReader.java"


# instance fields
.field private mRemoteAccount:Ljava/lang/String;

.field private final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .parameter "fetchQueue"
    .parameter "queueCapacity"
    .parameter "context"
    .parameter
    .parameter "logTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p4, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/DownstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILjava/lang/String;)V

    .line 43
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    .line 44
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public processServerEntity(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .locals 11
    .parameter "serverEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 52
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 55
    .local v2, entityFromClient:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :try_start_0
    instance-of v7, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v7, :cond_3

    .line 56
    const-class v7, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/Track;

    iget-object v6, v7, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 57
    .local v6, remoteId:Ljava/lang/String;
    const-string v7, "MusicSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    const-string v7, "MusicSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reader has server track "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8}, Lcom/google/android/music/store/MusicFile;->readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    move-result-object v4

    .line 62
    .local v4, musicFile:Lcom/google/android/music/store/MusicFile;
    if-eqz v4, :cond_1

    .line 63
    invoke-static {v4}, Lcom/google/android/music/sync/google/model/Track;->parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 89
    .end local v4           #musicFile:Lcom/google/android/music/store/MusicFile;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    :try_start_1
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    new-instance v8, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;

    invoke-direct {v8, p1, v2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;-><init>(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :cond_2
    :goto_1
    return-void

    .line 65
    .end local v6           #remoteId:Ljava/lang/String;
    :cond_3
    :try_start_2
    instance-of v7, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v7, :cond_5

    .line 66
    const-class v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    iget-object v6, v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    .line 67
    .restart local v6       #remoteId:Ljava/lang/String;
    const-string v7, "MusicSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 68
    const-string v7, "MusicSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reader has server playlist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_4
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v5

    .line 71
    .local v5, playList:Lcom/google/android/music/store/PlayList;
    if-eqz v5, :cond_1

    .line 72
    invoke-static {v5}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v2

    goto :goto_0

    .line 74
    .end local v5           #playList:Lcom/google/android/music/store/PlayList;
    .end local v6           #remoteId:Ljava/lang/String;
    :cond_5
    instance-of v7, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v7, :cond_7

    .line 75
    const-class v7, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    iget-object v6, v7, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    .line 76
    .restart local v6       #remoteId:Ljava/lang/String;
    const-string v7, "MusicSyncAdapter"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 77
    const-string v7, "MusicSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reader has server plentry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_6
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v7, v6, v8}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v3

    .line 81
    .local v3, item:Lcom/google/android/music/store/PlayList$Item;
    if-eqz v3, :cond_1

    .line 82
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v2

    goto/16 :goto_0

    .line 85
    .end local v3           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v6           #remoteId:Ljava/lang/String;
    :cond_7
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v8, "Received a downstream server entity that is of unknown type.  Fatal error."

    invoke-direct {v7, v8}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7

    .line 94
    .restart local v6       #remoteId:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 95
    .local v1, e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    const-string v7, "MusicSyncAdapter"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    const-string v7, "MusicSyncAdapter"

    const-string v8, "Failed to put an entry into the merge queue.  Bailing."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 99
    .end local v1           #e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 100
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v7, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v8, "Interrupted while putting into merge queue: "

    invoke-direct {v7, v8, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
