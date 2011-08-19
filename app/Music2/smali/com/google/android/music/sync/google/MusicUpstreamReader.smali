.class public Lcom/google/android/music/sync/google/MusicUpstreamReader;
.super Lcom/google/android/music/sync/common/UpstreamReader;
.source "MusicUpstreamReader.java"


# instance fields
.field private final mAccountId:I

.field private final mStore:Lcom/google/android/music/store/Store;

.field private final mTag:Ljava/lang/String;

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .parameter "queue"
    .parameter "context"
    .parameter
    .parameter "logTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
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
    .line 34
    .local p3, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p4}, Lcom/google/android/music/sync/common/UpstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;Ljava/lang/String;)V

    .line 35
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    .line 37
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    .line 38
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mAccountId:I

    .line 39
    return-void
.end method

.method private fillQueueWithEntryChanges()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 216
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/google/android/music/store/PlayList$Item;->getItemsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    const/4 v5, 0x0

    .line 219
    .local v5, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 222
    new-instance v3, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v3}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 223
    .local v3, item:Lcom/google/android/music/store/PlayList$Item;
    new-instance v4, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v4}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 224
    .local v4, precedingItem:Lcom/google/android/music/store/PlayList$Item;
    new-instance v2, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 225
    .local v2, followingItem:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v3, v0}, Lcom/google/android/music/store/PlayList$Item;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 226
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v6

    .line 227
    .local v6, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7, v4}, Lcom/google/android/music/store/PlayList$Item;->findPrecedingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 229
    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mPrecedingEntryClientId:Ljava/lang/String;

    .line 231
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/music/store/PlayList$Item;->findFollowingItem(Landroid/database/sqlite/SQLiteDatabase;ZLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 233
    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList$Item;->getClientId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mFollowingEntryClientId:Ljava/lang/String;

    .line 235
    :cond_2
    invoke-direct {p0, v6, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 236
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 240
    .end local v2           #followingItem:Lcom/google/android/music/store/PlayList$Item;
    .end local v3           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v4           #precedingItem:Lcom/google/android/music/store/PlayList$Item;
    .end local v6           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_3
    if-eqz v0, :cond_4

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v0, 0x0

    .line 244
    :cond_4
    if-eqz v1, :cond_5

    .line 245
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    return v5

    .line 240
    .end local v5           #recordsRead:I
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_6

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v0, 0x0

    .line 244
    :cond_6
    if-eqz v1, :cond_7

    .line 245
    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    throw v7
.end method

.method private fillQueueWithEntryTombstones()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 154
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 155
    invoke-static {v1}, Lcom/google/android/music/store/PlayList$Item;->getItemTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 160
    new-instance v2, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    .line 161
    .local v2, item:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList$Item;->populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V

    .line 162
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v4

    .line 163
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    .line 164
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 169
    .end local v2           #item:Lcom/google/android/music/store/PlayList$Item;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_1
    if-eqz v0, :cond_2

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_2
    if-eqz v1, :cond_3

    .line 174
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return v3

    .line 169
    .end local v3           #recordsRead:I
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    const/4 v0, 0x0

    .line 173
    :cond_4
    if-eqz v1, :cond_5

    .line 174
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    throw v5
.end method

.method private fillQueueWithPlaylistChanges()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 183
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/google/android/music/store/PlayList;->getPlaylistsToSync(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 189
    new-instance v2, Lcom/google/android/music/store/PlayList;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 190
    .local v2, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V

    .line 191
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    .line 192
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 193
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    const-string v6, "Found a playlist with no name. Not syncing this change upstream."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 202
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_1
    if-eqz v0, :cond_2

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_2
    if-eqz v1, :cond_3

    .line 207
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return v3

    .line 197
    .restart local v2       #playList:Lcom/google/android/music/store/PlayList;
    .restart local v4       #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_4
    :try_start_1
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v3           #recordsRead:I
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v0, 0x0

    .line 206
    :cond_5
    if-eqz v1, :cond_6

    .line 207
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    throw v5
.end method

.method private fillQueueWithPlaylistTombstones()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 125
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/google/android/music/store/PlayList;->getPlaylistTombstones(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, recordsRead:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 131
    new-instance v2, Lcom/google/android/music/store/PlayList;

    invoke-direct {v2}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 132
    .local v2, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/PlayList;->populateFromTombstoneProjectionCursor(Landroid/database/Cursor;)V

    .line 133
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    .line 134
    .local v4, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    .line 135
    invoke-direct {p0, v4, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 140
    .end local v2           #playList:Lcom/google/android/music/store/PlayList;
    .end local v4           #syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_1
    if-eqz v0, :cond_2

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v0, 0x0

    .line 144
    :cond_2
    if-eqz v1, :cond_3

    .line 145
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    return v3

    .line 140
    .end local v3           #recordsRead:I
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    const/4 v0, 0x0

    .line 144
    :cond_4
    if-eqz v1, :cond_5

    .line 145
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    throw v5
.end method

.method private fillQueueWithTrackStats()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 74
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 75
    .local v2, recordsRead:I
    :try_start_0
    iget v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mAccountId:I

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lcom/google/android/music/store/MusicFile;->getPlaycountsToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    invoke-static {v0}, Lcom/google/android/music/sync/google/model/TrackStat;->parse(Landroid/database/Cursor;)Lcom/google/android/music/sync/google/model/TrackStat;

    move-result-object v3

    .line 79
    .local v3, stat:Lcom/google/android/music/sync/google/model/TrackStat;
    iget-object v4, v3, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    if-gtz v4, :cond_1

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    const-string v5, "Found a trackstat with no valid track id or zero play count. Not syncing this change upstream."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v3           #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 92
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4

    .line 85
    .restart local v3       #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :cond_1
    :try_start_1
    invoke-direct {p0, v3, v1}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_0

    .line 91
    .end local v3           #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :cond_2
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 92
    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return v2
.end method

.method private putItemInQueue(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .parameter "item"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 102
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;

    invoke-virtual {v2, p1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    const/4 v2, 0x1

    return v2

    .line 107
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 108
    .local v0, e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    const-string v1, "The upstream sender has killed the upstream queue, so there\'s no point in having the reader continue."

    .line 110
    .local v1, msg:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    invoke-direct {v2, v1, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v0           #e:Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    .end local v1           #msg:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 115
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v3, "Interrupted while putting item into upload queue: "

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public fillQueue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithEntryTombstones()I

    move-result v1

    .line 44
    .local v1, entryTombstoneCount:I
    iget-boolean v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_0

    .line 45
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upstream reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " playlist entry tombstone(s) found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithPlaylistTombstones()I

    move-result v3

    .line 49
    .local v3, playlistTombstoneCount:I
    iget-boolean v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_1

    .line 50
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upstream reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " playlist tombstone(s) found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithPlaylistChanges()I

    move-result v2

    .line 54
    .local v2, playlistCount:I
    iget-boolean v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_2

    .line 55
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upstream reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " playlist change(s) found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithEntryChanges()I

    move-result v0

    .line 59
    .local v0, entryCount:I
    iget-boolean v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_3

    .line 60
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upstream reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " playlist entry change(s) found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    invoke-direct {p0}, Lcom/google/android/music/sync/google/MusicUpstreamReader;->fillQueueWithTrackStats()I

    move-result v4

    .line 64
    .local v4, trackStatCount:I
    iget-boolean v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_4

    .line 65
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upstream reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " track stat change(s) found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_4
    return-void
.end method
