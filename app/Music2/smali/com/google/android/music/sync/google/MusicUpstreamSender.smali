.class public Lcom/google/android/music/sync/google/MusicUpstreamSender;
.super Lcom/google/android/music/sync/common/UpstreamSender;
.source "MusicUpstreamSender.java"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAccountHash:I

.field private final mClient:Lcom/google/android/music/sync/api/MusicApiClient;

.field private final mEnableTrackStatsUpSync:Z

.field private final mStore:Lcom/google/android/music/store/Store;

.field private final mTag:Ljava/lang/String;

.field private final mUseVerboseLogging:Z

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/google/android/music/sync/api/MusicApiClient;Z)V
    .locals 2
    .parameter "queue"
    .parameter "upstreamPageSize"
    .parameter "context"
    .parameter
    .parameter "logTag"
    .parameter "client"
    .parameter "enableTrackStatsUpSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/music/sync/api/MusicApiClient;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p4, protocolState:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/UpstreamSender;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$UpstreamQueue;ILjava/lang/String;)V

    .line 89
    iput-object p5, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    .line 90
    invoke-static {p5}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    .line 91
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    .line 92
    iput-object p6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    .line 94
    const-class v0, Landroid/accounts/Account;

    const-string v1, "account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    .line 95
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    .line 96
    iput-boolean p7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mEnableTrackStatsUpSync:Z

    .line 97
    return-void
.end method

.method private cleanupBatchMutations(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 154
    .local p1, subBlock:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    .local p2, batchMutateResponse:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;>;"
    const/4 v4, 0x0

    .line 155
    .local v4, isTxnSuccessful:Z
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v9}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 156
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 157
    .local v1, conflictCount:I
    const/4 v8, 0x0

    .line 159
    .local v8, tooManyItemsCount:I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 160
    .local v5, listSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_4

    .line 161
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 162
    .local v6, mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;

    .line 163
    .local v7, response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    sget-object v9, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->TOO_MANY_ITEMS:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    iget-object v10, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mResponseCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    add-int/lit8 v8, v8, 0x1

    .line 168
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/google/android/music/store/PlayList$Item;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 170
    :cond_0
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->isDeleted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 171
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    :goto_1
    sget-object v9, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->CONFLICT:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;

    iget-object v10, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mResponseCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_2
    invoke-interface {v6}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 173
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 188
    .end local v3           #i:I
    .end local v5           #listSize:I
    .end local v6           #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v7           #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v10, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v9

    .line 176
    .restart local v3       #i:I
    .restart local v5       #listSize:I
    .restart local v6       #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .restart local v7       #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :cond_3
    :try_start_1
    iget-object v9, v7, Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;->mId:Ljava/lang/String;

    invoke-interface {v6, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v6, v2}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v6           #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v7           #response:Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    :cond_4
    const/4 v4, 0x1

    .line 188
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v9, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 190
    if-lez v8, :cond_5

    .line 191
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    if-ne v8, v11, :cond_6

    const-string v11, "1 entry"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " rejected due to the constituent playlist being too large."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    if-eqz v1, :cond_7

    .line 195
    new-instance v0, Lcom/google/android/music/sync/api/ConflictException;

    invoke-direct {v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>()V

    .line 196
    .local v0, ce:Lcom/google/android/music/sync/api/ConflictException;
    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 197
    throw v0

    .line 191
    .end local v0           #ce:Lcom/google/android/music/sync/api/ConflictException;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 199
    :cond_7
    return-void
.end method

.method private cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "mutation"
    .parameter "db"

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, tombstoneTable:Ljava/lang/String;
    const/4 v0, 0x0

    .line 244
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_2

    .line 245
    const-string v1, "LIST_TOMBSTONES"

    .line 246
    const-string v0, "Id"

    .line 251
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Removing playlist entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    return-void

    .line 247
    :cond_2
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_0

    .line 248
    const-string v1, "LISTITEM_TOMBSTONES"

    .line 249
    const-string v0, "Id"

    goto :goto_0
.end method

.method private cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "mutation"
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, table:Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_2

    .line 205
    const-string v1, "LISTS"

    .line 206
    const-string v0, "Id"

    .line 211
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Undirtying inserted entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 215
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "SourceId"

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "SourceAccount"

    iget v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    return-void

    .line 207
    :cond_2
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_0

    .line 208
    const-string v1, "LISTITEMS"

    .line 209
    const-string v0, "Id"

    goto :goto_0
.end method

.method private cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "mutation"
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, table:Ljava/lang/String;
    const/4 v0, 0x0

    .line 225
    .local v0, idColName:Ljava/lang/String;
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_2

    .line 226
    const-string v1, "LISTS"

    .line 227
    const-string v0, "Id"

    .line 232
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Upstream sender: Undirtying updated entity."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 236
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 239
    return-void

    .line 228
    :cond_2
    instance-of v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_0

    .line 229
    const-string v1, "LISTITEMS"

    .line 230
    const-string v0, "Id"

    goto :goto_0
.end method

.method private deletePlaylist(J)V
    .locals 5
    .parameter "localId"

    .prologue
    const/4 v4, 0x1

    .line 500
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 503
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 506
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 508
    return-void

    .line 505
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 506
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private deletePlaylistEntry(J)V
    .locals 5
    .parameter "localId"

    .prologue
    const/4 v4, 0x1

    .line 511
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 512
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 514
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/PlayList$Item;->deleteById(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 517
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 519
    return-void

    .line 516
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 517
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
.end method

.method private fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    .line 485
    new-instance v1, Lcom/google/android/music/store/PlayList;

    invoke-direct {v1}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 486
    .local v1, parentPlaylist:Lcom/google/android/music/store/PlayList;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 488
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList$Item;->getListId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 489
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getSourceId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 490
    :cond_0
    const/4 v2, 0x0

    .line 494
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 496
    :goto_0
    return v2

    .line 492
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 496
    const/4 v2, 0x1

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method private handleDeleteEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .locals 6
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 828
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 829
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending deleted playlist entry to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 851
    :goto_0
    const/4 v2, 0x0

    .line 852
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 854
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    const/4 v2, 0x1

    .line 857
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 859
    return-void

    .line 833
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 835
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist entry delete.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 836
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 837
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist entry delete."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 839
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 840
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist entry delete."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 841
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 842
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a bad request (400) error code for a playlist entry delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 845
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a forbidden (401) error code for a playlist entry delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 848
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a not found (404) error code for a playlist entry delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 857
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleDeletePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .locals 6
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 792
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 793
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending deleted playlist to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 815
    :goto_0
    const/4 v2, 0x0

    .line 816
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 818
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupDelete(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    const/4 v2, 0x1

    .line 821
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 823
    return-void

    .line 797
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 799
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist delete.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 800
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 801
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist delete."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 803
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 804
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist delete."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 805
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 806
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a bad request (400) error code for a playlist delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 809
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a forbidden (401) error code for a playlist delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 812
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Server returned a not found (404) error code for a playlist delete.  Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleInsertEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .locals 6
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 640
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream sender: Found an inserted playlist entry whose parent has no remote id.  Skipping it until the next sync."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 647
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_2

    .line 648
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending inserted playlist entry to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 676
    :goto_1
    iget-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 677
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "An inserted playlist entry was returned without a server id.  Skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 653
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist entry insert."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 655
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 657
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist entry insert.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 658
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 659
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist entry insert."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 660
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 661
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_3

    .line 662
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    :cond_3
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_1

    .line 666
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 667
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_4

    .line 668
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    :cond_4
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_1

    .line 672
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 673
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Unexpected 404 on playlist entry insert.  Skipping."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 680
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :cond_5
    const/4 v2, 0x0

    .line 681
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 683
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    const/4 v2, 0x1

    .line 686
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleInsertPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .locals 6
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 592
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending inserted playlist to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 621
    :goto_0
    iget-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "An inserted playlist was returned without a server id.  Skipping."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_1
    return-void

    .line 597
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 598
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist insert."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 600
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 602
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist insert.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 603
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 604
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist insert."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 605
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 606
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    :cond_1
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_0

    .line 611
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 612
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on insert. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :cond_2
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_0

    .line 617
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 618
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Unexpected 404 on playlist insert.  Skipping."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 625
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :cond_3
    const/4 v2, 0x0

    .line 626
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 628
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupInsert(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    const/4 v2, 0x1

    .line 631
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleMutations(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 318
    .local p1, subBlock:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->validateEntryParents(Ljava/util/List;)V

    .line 320
    const/4 v8, 0x0

    .line 321
    .local v8, retryUnbatched:Z
    const/4 v5, 0x0

    .line 323
    .local v5, mutateResponses:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;>;"
    :try_start_0
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v10, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {v9, v10, p1}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItems(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 343
    :goto_0
    if-nez v8, :cond_1

    .line 344
    invoke-direct {p0, p1, v5}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupBatchMutations(Ljava/util/List;Ljava/util/List;)V

    .line 382
    :cond_0
    return-void

    .line 324
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 325
    .local v2, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "At least one record was found with invalid data while handling a batched mutations."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v8, 0x1

    .line 342
    goto :goto_0

    .line 328
    .end local v2           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 329
    .local v2, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v9, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Http code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on handling batched playlist mutations."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 331
    .end local v2           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 332
    .local v2, e:Ljava/io/IOException;
    new-instance v9, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v10, "IO error on handing batched mutations."

    invoke-direct {v9, v10, v2}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 333
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    move-object v2, v9

    .line 334
    .local v2, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "Bad-request returned while handling batched mutations."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    const/4 v8, 0x1

    .line 342
    goto :goto_0

    .line 336
    .end local v2           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v9

    move-object v2, v9

    .line 337
    .local v2, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "Forbidden returned while handling batched mutations."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const/4 v8, 0x1

    .line 342
    goto :goto_0

    .line 339
    .end local v2           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v9

    move-object v2, v9

    .line 340
    .local v2, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "Not-found returned while handling batched mutations."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const/4 v8, 0x1

    goto :goto_0

    .line 347
    .end local v2           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :cond_1
    iget-boolean v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v9, :cond_2

    .line 348
    iget-object v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v10, "Handling playlist mutations individually due to one or more errors."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    const/4 v1, 0x0

    .line 351
    .local v1, conflictCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 353
    .local v6, mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_start_1
    instance-of v9, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v9, :cond_6

    .line 354
    const-class v9, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 355
    .local v7, playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    iget-boolean v9, v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v9, :cond_4

    .line 356
    invoke-direct {p0, v7}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleDeletePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    :try_end_1
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 372
    .end local v7           #playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :catch_6
    move-exception v9

    move-object v0, v9

    .line 373
    .local v0, ce:Lcom/google/android/music/sync/api/ConflictException;
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ConflictException;->getConflictCount()I

    move-result v9

    add-int/2addr v1, v9

    goto :goto_1

    .line 357
    .end local v0           #ce:Lcom/google/android/music/sync/api/ConflictException;
    .restart local v7       #playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_4
    :try_start_2
    iget-object v9, v7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 358
    invoke-direct {p0, v7}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleUpdatePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V

    goto :goto_1

    .line 360
    :cond_5
    invoke-direct {p0, v7}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleInsertPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V

    goto :goto_1

    .line 362
    .end local v7           #playlist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :cond_6
    instance-of v9, v6, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v9, :cond_3

    .line 363
    const-class v9, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 364
    .local v3, entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    iget-boolean v9, v3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v9, :cond_7

    .line 365
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleDeleteEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V

    goto :goto_1

    .line 366
    :cond_7
    iget-object v9, v3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 367
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleUpdateEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V

    goto :goto_1

    .line 369
    :cond_8
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleInsertEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    :try_end_2
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 376
    .end local v3           #entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .end local v6           #mutation:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :cond_9
    if-lez v1, :cond_0

    .line 377
    new-instance v0, Lcom/google/android/music/sync/api/ConflictException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " conflicts detected during individual mutations"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v0       #ce:Lcom/google/android/music/sync/api/ConflictException;
    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 380
    new-instance v9, Lcom/google/android/music/sync/api/ConflictException;

    invoke-direct {v9, v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private handleUpdateEntry(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)V
    .locals 6
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 741
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upstream sender: Found an updated playlist entry whose parent has no remote id.  Skipping it until the next sync."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mAbsolutePosition:Ljava/lang/String;

    .line 747
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_2

    .line 748
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending updated playlist entry to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 779
    :goto_1
    const/4 v2, 0x0

    .line 780
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 782
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    const/4 v2, 0x1

    .line 785
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_0

    .line 752
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 754
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist entry update.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 755
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 756
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist entry update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 758
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 759
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist entry update."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 760
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 761
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_3

    .line 762
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_1

    .line 766
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 767
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_4

    .line 768
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_1

    .line 772
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 773
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_5

    .line 774
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 404 on update. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    :cond_5
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylistEntry(J)V

    goto :goto_1

    .line 785
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private handleUpdatePlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylist;)V
    .locals 6
    .parameter "playlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ConflictException;
        }
    .end annotation

    .prologue
    .line 693
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Sending updated playlist to cloud."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    sget-object v5, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    invoke-interface {v3, v4, p1, v5}, Lcom/google/android/music/sync/api/MusicApiClient;->mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 725
    :goto_0
    const/4 v2, 0x0

    .line 726
    .local v2, isTxnSuccessful:Z
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 728
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->cleanupUpdate(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    const/4 v2, 0x1

    .line 731
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 733
    return-void

    .line 698
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isTxnSuccessful:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 700
    .local v1, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Invalid data on playlist update.  Skipping item."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 701
    .end local v1           #e:Lcom/google/android/music/store/InvalidDataException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 702
    .local v1, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v3, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on upstream playlist update."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 704
    .end local v1           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 705
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v4, "IO error on upstream playlist update."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 706
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 707
    .local v1, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_1

    .line 708
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 400 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_0

    .line 712
    .end local v1           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_4
    move-exception v3

    move-object v1, v3

    .line 713
    .local v1, e:Lcom/google/android/music/sync/api/ForbiddenException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_2

    .line 714
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 403 on update. Restoring from server."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V

    goto :goto_0

    .line 718
    .end local v1           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_5
    move-exception v3

    move-object v1, v3

    .line 719
    .local v1, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v3, :cond_3

    .line 720
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Upstream sender: Server returned 404 on update. Removing local copy."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    :cond_3
    iget-wide v3, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->deletePlaylist(J)V

    goto :goto_0

    .line 731
    .end local v1           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #isTxnSuccessful:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private reportTrackStats(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 387
    .local p1, entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Track stats list is null or empty. Skip reporting."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mEnableTrackStatsUpSync:Z

    if-nez v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Track stats up sync is disabled. This is a no-op."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->resetTrackStats(Ljava/util/List;)V

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, rollbackPlayStats:Z
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {v2, v3, p1}, Lcom/google/android/music/sync/api/MusicApiClient;->reportTrackStats(Landroid/accounts/Account;Ljava/util/List;)V

    .line 402
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    if-eqz v2, :cond_4

    .line 403
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TrackStats to the server."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/music/sync/api/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_d

    .line 427
    :cond_4
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 406
    .local v0, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    const/4 v1, 0x1

    .line 409
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    .end local v0           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 428
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Rolling back local play counts due to soft errors."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    .line 436
    :cond_5
    :goto_1
    throw v2

    .line 410
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 411
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 412
    :try_start_4
    new-instance v2, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v3, "IO error on reporting track stats."

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 413
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 414
    .local v0, e:Lcom/google/android/music/sync/api/BadRequestException;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Bad request returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_5
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 431
    :catch_4
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 415
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 416
    .local v0, e:Lcom/google/android/music/sync/api/ForbiddenException;
    :try_start_6
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Forbidden returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_7
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 431
    :catch_6
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 418
    .local v0, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    :try_start_8
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Not-found returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 427
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_9
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 431
    :catch_8
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v2

    move-object v0, v2

    .line 420
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    :try_start_a
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Not-modified returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 427
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_b
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 431
    :catch_a
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 421
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v2

    move-object v0, v2

    .line 422
    .local v0, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_c
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Conflicts returned while reporting track stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 427
    if-eqz v1, :cond_1

    .line 428
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Rolling back local play counts due to soft errors."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_d
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->rollbackPlayStats(Ljava/util/List;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_0

    .line 431
    :catch_c
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v3, "Errors rolling back local play counts."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 424
    .local v0, e:Lcom/google/android/music/sync/common/SyncHttpException;
    :try_start_e
    new-instance v2, Lcom/google/android/music/sync/common/HardSyncException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/music/sync/common/SyncHttpException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on reporting track stats."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 431
    .end local v0           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_e
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v4, "Errors rolling back local play counts."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private resetTrackStats(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 443
    .local v4, trackIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 444
    .local v3, item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    const-class v5, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v5}, Lcom/google/android/music/sync/google/model/TrackStat;->getLocalId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v3           #item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :cond_0
    const/4 v2, 0x0

    .line 448
    .local v2, isTxnSuccessful:Z
    const/4 v0, 0x0

    .line 450
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 451
    invoke-static {v0, v4}, Lcom/google/android/music/store/MusicFile;->resetPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    const/4 v2, 0x1

    .line 454
    if-eqz v0, :cond_1

    .line 455
    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v5, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 458
    :cond_1
    return-void

    .line 454
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 455
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_2
    throw v5
.end method

.method private restoreItemFromServer(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)V
    .locals 10
    .parameter "clientItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v6, 0x0

    .line 530
    .local v6, serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    const/4 v5, 0x0

    .line 532
    .local v5, justDeleteTheLocalCopy:Z
    :try_start_0
    instance-of v7, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v7, :cond_3

    .line 533
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 556
    :goto_0
    if-eqz v5, :cond_0

    .line 558
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    check-cast v6, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8

    .line 565
    .restart local v6       #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setIsDeleted(Z)V

    .line 566
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 571
    .local v0, blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 572
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 574
    .local v4, isTxnSuccessful:Z
    :try_start_2
    new-instance v1, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    iget-boolean v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mUseVerboseLogging:Z

    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccountHash:I

    invoke-direct {v1, v2, v7, v8, v9}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    .end local v0           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .local v1, blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    :try_start_3
    invoke-virtual {v1, v6, p1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 577
    const/4 v4, 0x1

    .line 579
    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 582
    :cond_1
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 583
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 584
    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    .line 587
    .end local v1           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #isTxnSuccessful:Z
    :cond_2
    return-void

    .line 534
    :cond_3
    :try_start_4
    instance-of v7, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v7, :cond_2

    .line 535
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mClient:Lcom/google/android/music/sync/api/MusicApiClient;

    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mAccount:Landroid/accounts/Account;

    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/music/sync/api/MusicApiClient;->getPlaylistEntry(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/music/sync/common/SyncHttpException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/music/sync/api/BadRequestException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/music/sync/api/ForbiddenException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v6

    goto :goto_0

    .line 539
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 540
    .local v3, e:Landroid/accounts/AuthenticatorException;
    new-instance v7, Landroid/accounts/AuthenticatorException;

    const-string v8, "Unable to restore item due to auth error."

    invoke-direct {v7, v8, v3}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 541
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 542
    .local v3, e:Lcom/google/android/music/sync/common/SyncHttpException;
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v8, "Unable to restore item due to http error."

    invoke-direct {v7, v8, v3}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 543
    .end local v3           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 544
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v8, "Unable to restore item due to io error."

    invoke-direct {v7, v8, v3}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 545
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 546
    .local v3, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v8, "Received not-modified in response to a restore."

    invoke-direct {v7, v8, v3}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 547
    .end local v3           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    :catch_4
    move-exception v7

    move-object v3, v7

    .line 549
    .local v3, e:Lcom/google/android/music/sync/api/BadRequestException;
    const/4 v5, 0x1

    .line 555
    goto :goto_0

    .line 550
    .end local v3           #e:Lcom/google/android/music/sync/api/BadRequestException;
    :catch_5
    move-exception v7

    move-object v3, v7

    .line 552
    .local v3, e:Lcom/google/android/music/sync/api/ForbiddenException;
    const/4 v5, 0x1

    .line 555
    goto :goto_0

    .line 553
    .end local v3           #e:Lcom/google/android/music/sync/api/ForbiddenException;
    :catch_6
    move-exception v7

    move-object v3, v7

    .line 554
    .local v3, e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v3           #e:Lcom/google/android/music/sync/api/ResourceNotFoundException;
    .end local v6           #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catch_7
    move-exception v7

    move-object v3, v7

    .line 561
    .local v3, e:Ljava/lang/InstantiationException;
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v7, v3}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 562
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_8
    move-exception v7

    move-object v3, v7

    .line 563
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v7, v3}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 579
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #isTxnSuccessful:Z
    .restart local v6       #serverItem:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v0, :cond_4

    .line 580
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 582
    :cond_4
    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v8, v2, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 583
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 584
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    :cond_5
    throw v7

    .line 579
    .end local v0           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .restart local v1       #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    .restart local v0       #blockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    goto :goto_1
.end method

.method private rollbackPlayStats(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, subBlock:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 462
    .local v4, playCounts:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 463
    .local v3, item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    const-class v6, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/sync/google/model/TrackStat;

    .line 464
    .local v5, stat:Lcom/google/android/music/sync/google/model/TrackStat;
    invoke-virtual {v5}, Lcom/google/android/music/sync/google/model/TrackStat;->getLocalId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/music/sync/google/model/TrackStat;->getIncrementalPlays()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    .end local v3           #item:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    .end local v5           #stat:Lcom/google/android/music/sync/google/model/TrackStat;
    :cond_0
    const/4 v2, 0x0

    .line 468
    .local v2, isTxnSuccessful:Z
    const/4 v0, 0x0

    .line 470
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 471
    invoke-static {v0, v4}, Lcom/google/android/music/store/MusicFile;->setPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    const/4 v2, 0x1

    .line 474
    if-eqz v0, :cond_1

    .line 475
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v6, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 478
    :cond_1
    return-void

    .line 474
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    .line 475
    iget-object v7, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v7, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_2
    throw v6
.end method

.method private validateEntryParents(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, subBlock:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;>;"
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-nez v5, :cond_1

    .line 301
    :cond_0
    return-void

    .line 272
    :cond_1
    const/4 v2, 0x0

    .line 273
    .local v2, indexesToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 274
    .local v4, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 275
    const-class v5, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 276
    .local v0, entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    iget-object v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 274
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->fillInRemoteIdOfParentPlaylist(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 283
    if-nez v2, :cond_4

    .line 284
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #indexesToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 286
    .restart local v2       #indexesToRemove:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    .end local v0           #entry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :cond_5
    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 293
    .local v3, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected processUpstreamEntityBlock(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Lcom/google/android/music/sync/common/ConflictDetectedException;
        }
    .end annotation

    .prologue
    .line 116
    .local p1, block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    new-instance v7, Lcom/google/android/music/sync/google/ListPartitioner;

    invoke-direct {v7}, Lcom/google/android/music/sync/google/ListPartitioner;-><init>()V

    .line 118
    .local v7, partitioner:Lcom/google/android/music/sync/google/ListPartitioner;,"Lcom/google/android/music/sync/google/ListPartitioner<Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    const-class v8, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 119
    const-class v8, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 120
    const-class v8, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v7, v8}, Lcom/google/android/music/sync/google/ListPartitioner;->addPartitioningClass(Ljava/lang/Class;)V

    .line 121
    const/4 v6, 0x0

    .line 123
    .local v6, listOfSubblocks:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;>;"
    :try_start_0
    invoke-virtual {v7, p1}, Lcom/google/android/music/sync/google/ListPartitioner;->partition(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, conflictCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 131
    .local v3, entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 132
    .local v4, firstItem:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    instance-of v8, v4, Lcom/google/android/music/sync/google/model/TrackStat;

    if-eqz v8, :cond_0

    .line 133
    invoke-direct {p0, v3}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->reportTrackStats(Ljava/util/List;)V

    goto :goto_0

    .line 124
    .end local v1           #conflictCount:I
    .end local v3           #entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    .end local v4           #firstItem:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 125
    .local v2, e:Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Lcom/google/android/music/sync/google/MusicUpstreamSender;->mTag:Ljava/lang/String;

    const-string v9, "Unable to partition the client changes into playlists and playlist entries:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v8, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v8, v2}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 137
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #conflictCount:I
    .restart local v3       #entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    .restart local v4       #firstItem:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-class v8, Ljava/util/List;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/google/android/music/sync/google/MusicUpstreamSender;->handleMutations(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 139
    .local v0, ce:Lcom/google/android/music/sync/api/ConflictException;
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/ConflictException;->getConflictCount()I

    move-result v8

    add-int/2addr v1, v8

    goto :goto_0

    .line 142
    .end local v0           #ce:Lcom/google/android/music/sync/api/ConflictException;
    .end local v3           #entitySublist:Ljava/util/List;,"Ljava/util/List<+Lcom/google/android/music/sync/common/QueueableSyncEntity;>;"
    .end local v4           #firstItem:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :cond_1
    if-eqz v1, :cond_2

    .line 143
    new-instance v8, Lcom/google/android/music/sync/common/ConflictDetectedException;

    invoke-direct {v8}, Lcom/google/android/music/sync/common/ConflictDetectedException;-><init>()V

    throw v8

    .line 145
    :cond_2
    return-void
.end method
