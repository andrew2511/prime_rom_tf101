.class public Lcom/google/android/music/store/RecentItemsManager;
.super Ljava/lang/Object;
.source "RecentItemsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/RecentItemsManager$Service;,
        Lcom/google/android/music/store/RecentItemsManager$Receiver;
    }
.end annotation


# static fields
.field public static final MAX_ITEMS_TO_DISPLAY:I = 0x32

.field private static final MAX_ITEMS_TO_KEEP:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RecentItemsManager"

.field private static final UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlaylist(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addAlbum(Landroid/content/Context;J)V

    return-void
.end method

.method private static addAlbum(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 105
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 113
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 116
    :cond_0
    return-void

    .line 110
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentAlbumId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 144
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 145
    return-void
.end method

.method private static addPlaylist(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "playlistId"

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 121
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/google/android/music/store/RecentItemsManager;->addPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v2, 0x1

    .line 126
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 129
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 132
    :cond_0
    return-void

    .line 126
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method private static addPlaylist(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "playlistId"

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "RecentListId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v1, "ItemDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "RECENT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 157
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    return-void
.end method

.method private static addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 200
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    const/16 v16, 0x0

    .line 206
    .local v16, count:I
    const-wide/16 v17, 0x0

    .line 208
    .local v17, oldestItemDate:J
    const-string v9, "RECENT"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ItemDate"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "ItemDate ASC"

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 212
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 213
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 214
    .end local v16           #count:I
    .local v10, count:I
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v11

    .end local v17           #oldestItemDate:J
    .local v11, oldestItemDate:J
    move-wide/from16 v18, v11

    .end local v11           #oldestItemDate:J
    .local v18, oldestItemDate:J
    move/from16 v17, v10

    .line 217
    .end local v10           #count:I
    .local v17, count:I
    :goto_0
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 220
    const-string v9, "MUSIC"

    .end local v9           #c:Landroid/database/Cursor;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "AlbumId"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "FileDate"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "AlbumId"

    const/4 v14, 0x0

    const-string v15, "FileDate DESC"

    const/16 v16, 0xc8

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 225
    .local v9, albumCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 258
    :goto_1
    return-void

    .line 217
    .end local v18           #oldestItemDate:J
    .local v9, c:Landroid/database/Cursor;
    .restart local v16       #count:I
    .local v17, oldestItemDate:J
    :catchall_0
    move-exception p0

    move-object/from16 v10, p0

    move/from16 p0, v16

    .end local v16           #count:I
    .local p0, count:I
    :goto_2
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v10

    .line 230
    .local v9, albumCursor:Landroid/database/Cursor;
    .local v17, count:I
    .restart local v18       #oldestItemDate:J
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 231
    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 232
    .local v10, mostRecentlyAddedAlbumDate:J
    const/16 v12, 0xc8

    move/from16 v0, v17

    move v1, v12

    if-lt v0, v1, :cond_1

    cmp-long v10, v10, v18

    if-lez v10, :cond_3

    .line 242
    .end local v10           #mostRecentlyAddedAlbumDate:J
    :cond_1
    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 243
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v10, insertValues:Landroid/content/ContentValues;
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 245
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 246
    const-string v11, "RecentAlbumId"

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v11, "ItemDate"

    const/4 v12, 0x1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v11, "RECENT"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 256
    .end local v10           #insertValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception p0

    .end local p0           #db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw p0

    .line 252
    .restart local v10       #insertValues:Landroid/content/ContentValues;
    .restart local p0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/store/RecentItemsManager;->enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    .end local v10           #insertValues:Landroid/content/ContentValues;
    :cond_3
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_1

    .line 217
    .end local v18           #oldestItemDate:J
    .local v9, c:Landroid/database/Cursor;
    .local v10, count:I
    .local v17, oldestItemDate:J
    :catchall_2
    move-exception p0

    move-object/from16 v20, p0

    move/from16 p0, v10

    .end local v10           #count:I
    .local p0, count:I
    move-object/from16 v10, v20

    goto :goto_2

    .restart local v16       #count:I
    .local p0, db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    move-wide/from16 v20, v17

    .end local v17           #oldestItemDate:J
    .local v20, oldestItemDate:J
    move-wide/from16 v18, v20

    .end local v20           #oldestItemDate:J
    .restart local v18       #oldestItemDate:J
    move/from16 v17, v16

    .end local v16           #count:I
    .local v17, count:I
    goto/16 :goto_0
.end method

.method private static countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 10
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 165
    const/4 v9, 0x0

    .line 166
    .local v9, count:I
    const-string v1, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(1)"

    aput-object v0, v2, v3

    const-string v3, "LISTS.Id NOT NULL OR MUSIC.AlbumId NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 171
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 175
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 178
    return v9

    .line 175
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static countRecentItems(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->hasRecentView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 94
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 96
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->countItems(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
.end method

.method private static deleteItemsAndCloseCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 304
    if-nez p1, :cond_0

    move v1, v2

    .line 321
    :goto_0
    return v1

    .line 309
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 311
    .local v0, idsToDelete:Ljava/lang/StringBuffer;
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 321
    .end local v0           #idsToDelete:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v1

    .line 314
    .restart local v0       #idsToDelete:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "RECENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecentId IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 321
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v0           #idsToDelete:Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v1, v2

    goto :goto_0
.end method

.method private static enforceMaxItemsLimit(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-static {p0}, Lcom/google/android/music/store/RecentItemsManager;->removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    const-string v1, "RECENT"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "RecentId"

    aput-object v4, v2, v0

    const-string v7, "ItemDate DESC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",10000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 271
    .local v9, c:Landroid/database/Cursor;
    invoke-static {p0, v9}, Lcom/google/android/music/store/RecentItemsManager;->deleteItemsAndCloseCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I

    .line 272
    return-void
.end method

.method private static removeInvalidItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 276
    const-string v1, "RECENT"

    const-string v2, "(RecentListId NOT NULL AND NOT EXISTS(SELECT LISTS.Id FROM LISTS WHERE LISTS.Id=RecentListId)) OR (RecentAlbumId NOT NULL AND NOT EXISTS(SELECT MUSIC.AlbumId FROM MUSIC WHERE MUSIC.AlbumId=RecentAlbumId))"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, howManyDeleted:I
    if-lez v0, :cond_0

    .line 291
    const-string v1, "RecentItemsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid recent items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method static update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "db"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->hasRecentView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Lcom/google/android/music/store/RecentItemsManager;->addRecentlyAddedAlbums(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public static updateRecentItems(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->hasRecentView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 72
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/music/store/RecentItemsManager;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
.end method

.method public static updateRecentItemsAsync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 52
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 54
    new-instance v2, Lcom/google/android/music/store/RecentItemsManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/RecentItemsManager$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 59
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/RecentItemsManager;->UPDATE_RECENT_ITEMS_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 62
    return-void
.end method
