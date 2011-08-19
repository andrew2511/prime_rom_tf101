.class public Lcom/google/android/music/store/KeepOnUpdater;
.super Ljava/lang/Object;
.source "KeepOnUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/KeepOnUpdater$SyncListener;
    }
.end annotation


# static fields
.field private static final AVERAGE_LONG_LEN:I = 0xb

.field private static final COLUMN_IN_LEN:I = 0x10

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final NO_NULL_COLUMN_HACK:Ljava/lang/String; = null

.field private static final NO_WHERE_ARGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KeepOnUpdater"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "KeepOnUpdater"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    .line 39
    sput-object v1, Lcom/google/android/music/store/KeepOnUpdater;->NO_WHERE_ARGS:[Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/google/android/music/store/KeepOnUpdater;->NO_NULL_COLUMN_HACK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->updateKeeponTables(Landroid/content/Context;Z)V

    return-void
.end method

.method private static addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "keepOnIds"

    .prologue
    .line 186
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->getMissingKeeponAlbumIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 188
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 189
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 190
    .local v3, insertValues:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 192
    .local v0, albumId:J
    const-string v4, "AlbumId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v4, "KEEPON"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #albumId:J
    .end local v3           #insertValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4

    :cond_0
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 199
    return-void
.end method

.method public static deleteAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "AlbumId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ArtistId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I
    .locals 5
    .parameter "db"
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x0

    .line 347
    :goto_0
    return v2

    .line 341
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 342
    .local v0, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0xb

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .local v1, whereClause:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {v1, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 347
    const-string v2, "KEEPON"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/KeepOnUpdater;->NO_WHERE_ARGS:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private static deleteInvalidKeeponEntries(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .parameter "db"

    .prologue
    .line 384
    const-string v0, "KEEPON"

    const-string v1, "(ListId NOT NULL AND NOT EXISTS (select 1 from LISTS where LISTS.Id=KEEPON.ListId)) OR (AlbumId NOT NULL AND NOT EXISTS (select 1 from MUSIC where MUSIC.AlbumId=KEEPON.AlbumId LIMIT 1)) OR (ArtistId NOT NULL AND NOT EXISTS (select 1 from MUSIC where MUSIC.AlbumArtistId=KEEPON.ArtistId LIMIT 1))"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static deleteInvalidShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .parameter "db"

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 407
    const/4 v8, 0x0

    .line 412
    .local v8, deleteCount:I
    const-string v1, "KEEPON"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "KeepOnId"

    aput-object v0, v2, v3

    const-string v0, "ListId"

    aput-object v0, v2, v5

    const-string v3, "ListId NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 416
    .local v9, keeponCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 417
    :try_start_0
    const-string v10, "KeepOnId=? AND MusicId NOT IN (select MUSIC.Id from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  where LISTITEMS.ListId=?)"

    .line 421
    .local v10, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    .line 422
    .local v11, selectionArgs:[Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 424
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 425
    const-string v0, "SHOULDKEEPON"

    const-string v1, "KeepOnId=? AND MusicId NOT IN (select MUSIC.Id from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  where LISTITEMS.ListId=?)"

    invoke-virtual {p0, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v8, v0

    goto :goto_0

    .line 429
    .end local v10           #selection:Ljava/lang/String;
    .end local v11           #selectionArgs:[Ljava/lang/String;
    :cond_0
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 435
    const-string v0, "SHOULDKEEPON"

    const-string v1, " ROWID IN (select SHOULDKEEPON.rowid from KEEPON, SHOULDKEEPON where KEEPON.AlbumId NOT NULL AND KEEPON.KeepOnId=SHOULDKEEPON.KeepOnId AND NOT EXISTS(select 1 from MUSIC where MUSIC.Id=SHOULDKEEPON.MusicId AND MUSIC.AlbumId=KEEPON.AlbumId))"

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    .line 449
    return v8

    .line 429
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .locals 5
    .parameter "db"
    .parameter "deleteInvalidItems"

    .prologue
    const/4 v4, 0x0

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, fileCleanupNeeded:Z
    const-string v2, "SHOULDKEEPON"

    const-string v3, "KeepOnId NOT IN (SELECT KeepOnId FROM KEEPON)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, deleted:I
    if-eqz p1, :cond_0

    .line 308
    invoke-static {p0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteInvalidShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    add-int/2addr v0, v2

    .line 311
    :cond_0
    if-lez v0, :cond_1

    .line 314
    invoke-static {p0}, Lcom/google/android/music/store/Store;->resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    if-lez v2, :cond_1

    .line 315
    const/4 v1, 0x1

    .line 319
    :cond_1
    if-eqz p1, :cond_2

    .line 322
    const-string v2, "SHOULDKEEPON"

    const-string v3, "SHOULDKEEPON.MusicId IN (SELECT MusicId FROM SHOULDKEEPON LEFT JOIN MUSIC ON (SHOULDKEEPON.MusicId=MUSIC.Id) WHERE MUSIC.Id IS NULL)"

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    :cond_2
    return v1
.end method

.method public static deletePlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)I
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ListId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteByIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getMissingKeeponAlbumIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "db"
    .parameter "keepOnIds"

    .prologue
    .line 211
    const-string v1, "KEEPON"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ArtistId"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArtistId NOT NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, keepOnArtists:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 218
    :cond_0
    const/4 p0, 0x0

    .line 228
    .end local p0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 231
    .end local v0           #keepOnArtists:Landroid/database/Cursor;
    :goto_1
    return-object p0

    .line 211
    .restart local p0
    .restart local p1
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 220
    .restart local v0       #keepOnArtists:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 221
    .local p1, artistBuffer:Ljava/lang/StringBuffer;
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 228
    .end local p1           #artistBuffer:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception p0

    .end local p0
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw p0

    .line 225
    .restart local p0
    .restart local p1       #artistBuffer:Ljava/lang/StringBuffer;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    .line 228
    .local p1, artistIds:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 231
    const/4 v1, 0x1

    const-string v2, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .end local v0           #keepOnArtists:Landroid/database/Cursor;
    const/4 v0, 0x0

    const-string v4, "MUSIC.AlbumId"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(MUSIC.AlbumArtistId IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "MUSIC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ArtistId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #artistIds:Ljava/lang/String;
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "KEEPON.KeepOnId"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_1
.end method

.method public static insertAlbums(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "AlbumId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static insertArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ArtistId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "keepOnId"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO SHOULDKEEPON(MusicId,KeepOnId)\nSELECT DISTINCT MUSIC.Id,KEEPON.KeepOnId\nFROM KEEPON\n JOIN MUSIC ON (KEEPON.AlbumId = MUSIC.AlbumId)  WHERE MUSIC.SourceAccount<> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND KEEPON.KeepOnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    return-void

    .line 250
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "keepOnId"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO SHOULDKEEPON(MusicId,KeepOnId)\nSELECT DISTINCT MUSIC.Id,KEEPON.KeepOnId\nFROM KEEPON\n JOIN LISTITEMS ON (KEEPON.ListId = LISTITEMS.ListId) \n JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE MUSIC.SourceAccount<> 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND KEEPON.KeepOnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    return-void

    .line 266
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .parameter "db"
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 360
    .local v3, newIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 379
    :cond_0
    return-object v3

    .line 364
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v6, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 367
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v7, "KEEPON"

    sget-object v8, Lcom/google/android/music/store/KeepOnUpdater;->NO_NULL_COLUMN_HACK:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 374
    .local v4, rowid:J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-eqz v7, :cond_2

    .line 375
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    goto :goto_0
.end method

.method public static insertPlaylists(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const-string v0, "ListId"

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/KeepOnUpdater;->insertIdsInColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "requestFileCleanup"

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, update:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 465
    const-string v1, "deleteCachedFiles"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void
.end method

.method public static startFresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    sget-boolean v0, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "KeepOnUpdater"

    const-string v1, "Starting SHOULDKEEPON from scratch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/music/store/KeepOnUpdater;->updateKeeponTables(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method private static updateKeeponTables(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "deleteOldData"

    .prologue
    const/4 v8, 0x1

    .line 152
    sget-boolean v5, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "KeepOnUpdater"

    const-string v6, "Updating SHOULDKEEPON"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v2, 0x0

    .line 155
    .local v2, filePathCleanupNeeded:Z
    const/4 v4, 0x0

    .line 156
    .local v4, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 157
    .local v3, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/music/store/KeepOnUpdater;->deleteInvalidKeeponEntries(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, deletedShouldKeepOnCount:I
    if-eqz p1, :cond_1

    .line 162
    const-string v5, "SHOULDKEEPON"

    const-string v6, "1"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 165
    :cond_1
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/google/android/music/store/KeepOnUpdater;->addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 166
    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 167
    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 168
    if-eqz p1, :cond_5

    .line 169
    if-lez v1, :cond_2

    .line 170
    invoke-static {v0}, Lcom/google/android/music/store/Store;->resetLocalCopyForOrphanedShouldKeepOnMusic(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_4

    move v2, v8

    .line 177
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 179
    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 181
    sget-boolean v5, Lcom/google/android/music/store/KeepOnUpdater;->LOGV:Z

    if-eqz v5, :cond_3

    const-string v5, "KeepOnUpdater"

    const-string v6, "Update of SHOULDKEEPON complete"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_3
    invoke-static {p0, v2}, Lcom/google/android/music/store/KeepOnUpdater;->sendShouldKeeponUpdatedBroadcast(Landroid/content/Context;Z)V

    .line 183
    return-void

    .line 170
    :cond_4
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 175
    :cond_5
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v0, v5}, Lcom/google/android/music/store/KeepOnUpdater;->deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 179
    .end local v1           #deletedShouldKeepOnCount:I
    :catchall_0
    move-exception v5

    invoke-virtual {v3, v0, v4}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v5
.end method

.method public static updateNeedToKeepOn(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    .locals 10
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, newKeepOnId:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 117
    const/4 v8, 0x0

    .line 119
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v1, strNewIds:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 121
    .local v0, newId:Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #newId:Ljava/lang/Long;
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    .end local v1           #strNewIds:Ljava/lang/StringBuilder;
    .end local p1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v8

    .end local v8           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_1
    invoke-static {p0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw p1

    .line 123
    .restart local v1       #strNewIds:Ljava/lang/StringBuilder;
    .restart local v8       #c:Landroid/database/Cursor;
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    .end local p1           #i$:Ljava/util/Iterator;
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    .local p1, newIds:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->addMissingAlbumsForKeepOnArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 126
    const-string v1, "KEEPON"

    .end local v1           #strNewIds:Ljava/lang/StringBuilder;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "KeepOnId"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "AlbumId"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "ArtistId"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "ListId"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeepOnId IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #newIds:Ljava/lang/String;
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 132
    .end local v8           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    :cond_1
    :goto_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 134
    .local v0, newId:J
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromAlbums(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_2

    .line 144
    .end local v0           #newId:J
    :catchall_1
    move-exception p0

    move-object v9, p0

    move-object p0, p1

    .end local p1           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-object p1, v9

    goto :goto_1

    .line 136
    .restart local v0       #newId:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/KeepOnUpdater;->insertFromPlaylists(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 144
    .end local v0           #newId:J
    :cond_3
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 147
    .end local p1           #c:Landroid/database/Cursor;
    :cond_4
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/music/store/KeepOnUpdater;->deleteOrphanedShouldKeeponItems(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result p0

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    return p0
.end method
