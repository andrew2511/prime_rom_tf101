.class Lcom/google/android/music/sync/google/MusicDownstreamMerger;
.super Lcom/google/android/music/sync/common/DownstreamMerger;
.source "MusicDownstreamMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mProtocolState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAccount:I

.field private final mStore:Lcom/google/android/music/store/Store;

.field private mUpdateRecentItemsIncrementally:Z

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .parameter "mergeQueue"
    .parameter "maxBlockSize"
    .parameter "context"
    .parameter
    .parameter "logTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;",
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
    .line 58
    .local p4, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/DownstreamMerger;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILjava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    .line 59
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mRemoteAccount:I

    .line 60
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    .line 61
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    .line 62
    const-class v0, Landroid/accounts/Account;

    const-string v1, "account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mAccount:Landroid/accounts/Account;

    .line 63
    iput-object p3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p5}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUseVerboseLogging:Z

    .line 65
    return-void
.end method

.method private saveLastModifiedTimeIfLatest(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .locals 5
    .parameter "serverEntity"

    .prologue
    .line 75
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v2, :cond_1

    .line 76
    const-class v2, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/sync/google/model/Track;

    iget-wide v0, v2, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 77
    .local v0, serverLastModTime:J
    const-class v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_track_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_track_version"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v0           #serverLastModTime:J
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_2

    .line 82
    const-class v2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    iget-wide v0, v2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    .line 84
    .restart local v0       #serverLastModTime:J
    const-class v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_playlist_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_playlist_version"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v0           #serverLastModTime:J
    :cond_2
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_0

    .line 90
    const-class v2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    iget-wide v0, v2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    .line 92
    .restart local v0       #serverLastModTime:J
    const-class v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_plentry_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_plentry_version"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onEndMergeBlock(Z)V
    .locals 8
    .parameter "isBlockMergeSuccessful"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 114
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/google/android/music/sync/google/ClientSyncState;->newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "remote_account"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteAccount(I)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "merger_track_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "merger_playlist_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlaylistVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "merger_plentry_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlentryVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "etag_track"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagTrack(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "etag_playlist"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagPlaylist(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v4

    const-class v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v6, "etag_playlist_entry"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagPlaylistEntry(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->build()Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->set(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Lcom/google/android/music/sync/google/ClientSyncState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 139
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 140
    iput-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    .line 145
    :cond_1
    const-string v1, "MusicSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const-string v1, "MusicSyncAdapter"

    const-string v2, "Merger: End of block."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    if-eqz p1, :cond_3

    .line 149
    iget-boolean v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/store/RecentItemsManager;->countRecentItems(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_5

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    .line 162
    :cond_3
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_1
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "Unable to set the sync state: "

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v0           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 139
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 140
    iput-object v7, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    if-eqz p1, :cond_4

    .line 142
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    :cond_4
    throw v1

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItemsAsync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onStartMergeBlock()V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUseVerboseLogging:Z

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mTag:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mRemoteAccount:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    .line 72
    return-void
.end method

.method public processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .locals 2
    .parameter "serverEntity"
    .parameter "clientEntity"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z

    move-result v0

    .line 104
    .local v0, processSuccessful:Z
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->saveLastModifiedTimeIfLatest(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V

    .line 109
    :cond_0
    return-void
.end method
