.class public Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
.super Ljava/lang/Object;
.source "MusicDownstreamMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/MusicDownstreamMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicBlockMerger"
.end annotation


# instance fields
.field private mCacheFilepaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final mMusicFile:Lcom/google/android/music/store/MusicFile;

.field private final mPlayList:Lcom/google/android/music/store/PlayList;

.field private final mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

.field private final mRemoteAccount:I

.field private final mTag:Ljava/lang/String;

.field private mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;I)V
    .locals 1
    .parameter "db"
    .parameter "useVerboseLogging"
    .parameter "logTag"
    .parameter "remoteAccount"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 186
    iput-boolean p2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    .line 187
    iput-object p3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v0}, Lcom/google/android/music/store/MusicFile;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    .line 189
    new-instance v0, Lcom/google/android/music/store/PlayList;

    invoke-direct {v0}, Lcom/google/android/music/store/PlayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    .line 190
    new-instance v0, Lcom/google/android/music/store/PlayList$Item;

    invoke-direct {v0}, Lcom/google/android/music/store/PlayList$Item;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    .line 191
    iput p4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private processMergeEntryImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z
    .locals 7
    .parameter "serverEntry"
    .parameter "clientEntry"

    .prologue
    const/4 v6, 0x0

    .line 213
    :try_start_0
    iget-boolean v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v2, :cond_2

    .line 214
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting plentry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList$Item;->compileItemDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/PlayList$Item;->deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 280
    :goto_0
    const/4 v2, 0x1

    .line 283
    :goto_1
    return v2

    .line 227
    :cond_2
    if-nez p2, :cond_6

    .line 228
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList$Item;->reset()V

    .line 229
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {p1, v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->formatAsPlayListItem(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    .line 230
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList$Item;->setSourceAccount(I)V

    .line 233
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 237
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->reset()V

    .line 238
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 241
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    if-nez v2, :cond_3

    .line 242
    const-string v2, "MusicSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying into insert a playlist entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    invoke-virtual {v4}, Lcom/google/android/music/store/PlayList$Item;->getSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into a playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that doesn\'t exist locally"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 246
    goto :goto_1

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/store/PlayList$Item;->setListId(J)V

    .line 250
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_4

    .line 251
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting plentry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_5

    .line 256
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList$Item;->compileItemInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 259
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlaylistItem:Lcom/google/android/music/store/PlayList$Item;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList$Item;->insertItem(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 281
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 282
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v3, "Unable to merge a playlist entry.  Skipping entry."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v6

    .line 283
    goto/16 :goto_1

    .line 262
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->getEncapsulatedItem()Lcom/google/android/music/store/PlayList$Item;

    move-result-object v1

    .line 264
    .local v1, item:Lcom/google/android/music/store/PlayList$Item;
    invoke-virtual {p1, v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->formatAsPlayListItem(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    .line 265
    iget v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList$Item;->setFileSourceAccount(I)V

    .line 267
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_7

    .line 268
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating plentry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_7
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_8

    .line 273
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList$Item;->compileItemUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 276
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList$Item;->setNeedsSync(Z)V

    .line 277
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList$Item;->update(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processMergePlaylistImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylist;Lcom/google/android/music/sync/google/model/SyncablePlaylist;)Z
    .locals 7
    .parameter "serverPlaylist"
    .parameter "clientPlaylist"

    .prologue
    const/4 v6, 0x0

    .line 290
    :try_start_0
    iget-boolean v2, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v2, :cond_2

    .line 291
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlaylistDeleteStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/PlayList;->deleteBySourceInfo(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 338
    :goto_0
    const/4 v2, 0x1

    .line 342
    :goto_1
    return v2

    .line 302
    :cond_2
    if-nez p2, :cond_5

    .line 303
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayList;->reset()V

    .line 304
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    invoke-virtual {p1, v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->formatAsPlayList(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 305
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 306
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 308
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_4

    .line 313
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 316
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mPlayList:Lcom/google/android/music/store/PlayList;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2, v3}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 341
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v3, "Unable to merge a playlist.  Skipping entry."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v6

    .line 342
    goto :goto_1

    .line 319
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :cond_5
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->getEncapsulatedPlayList()Lcom/google/android/music/store/PlayList;

    move-result-object v1

    .line 321
    .local v1, playList:Lcom/google/android/music/store/PlayList;
    invoke-virtual {p1, v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->formatAsPlayList(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    .line 322
    iget v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 325
    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v2, :cond_6

    .line 326
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating playlist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with local id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_6
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 334
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->setNeedsSync(Z)V

    .line 335
    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/PlayList;->update(Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processMergeTrackImpl(Lcom/google/android/music/sync/google/model/Track;Lcom/google/android/music/sync/google/model/Track;)Z
    .locals 7
    .parameter "serverTrack"
    .parameter "clientTrack"

    .prologue
    .line 349
    :try_start_0
    iget-boolean v3, p1, Lcom/google/android/music/sync/google/model/Track;->mIsDeleted:Z

    if-eqz v3, :cond_3

    .line 350
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicFile;->deleteAndGetLocalCacheFilepath(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, filepath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 360
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    if-nez v3, :cond_1

    .line 361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    .line 363
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2           #filepath:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 400
    :goto_1
    return v3

    .line 367
    :cond_3
    if-nez p2, :cond_6

    .line 368
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {v3}, Lcom/google/android/music/store/MusicFile;->reset()V

    .line 369
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    invoke-virtual {p1, v3}, Lcom/google/android/music/sync/google/model/Track;->formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 371
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    iget v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 372
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_4

    .line 373
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_4
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_5

    .line 377
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/MusicFile;->compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 379
    :cond_5
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mMusicFile:Lcom/google/android/music/store/MusicFile;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/MusicFile;->insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J
    :try_end_0
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 399
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    const-string v4, "Unable to merge a track.  Skipping entry."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v3, 0x0

    goto :goto_1

    .line 382
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/Track;->getEncapsulatedMusicFile()Lcom/google/android/music/store/MusicFile;

    move-result-object v1

    .line 383
    .local v1, file:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {p1, v1}, Lcom/google/android/music/sync/google/model/Track;->formatAsMusicFile(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 384
    iget v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mRemoteAccount:I

    invoke-virtual {v1, v3}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 386
    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUseVerboseLogging:Z

    if-eqz v3, :cond_7

    .line 387
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with local id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_7
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_8

    .line 392
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 394
    :cond_8
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanupLocallyCachedFiles()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 426
    .local v0, filesToDelete:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mCacheFilepaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 428
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;-><init>(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 443
    .end local v0           #filesToDelete:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z
    .locals 2
    .parameter "serverEntity"
    .parameter "clientEntity"

    .prologue
    .line 196
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_0

    .line 197
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    const-class v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeTrackImpl(Lcom/google/android/music/sync/google/model/Track;Lcom/google/android/music/sync/google/model/Track;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    .line 199
    :cond_0
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v0, :cond_1

    .line 200
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergePlaylistImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylist;Lcom/google/android/music/sync/google/model/SyncablePlaylist;)Z

    move-result v0

    goto :goto_0

    .line 202
    :cond_1
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v0, :cond_2

    .line 203
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeEntryImpl(Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;)Z

    move-result v0

    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public safelyCloseStatements()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdateTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeleteTrackStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlaylistStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 411
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mInsertPlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mUpdatePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 413
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mDeletePlentryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 414
    return-void
.end method
