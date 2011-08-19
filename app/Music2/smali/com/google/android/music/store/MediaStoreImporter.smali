.class public Lcom/google/android/music/store/MediaStoreImporter;
.super Ljava/lang/Object;
.source "MediaStoreImporter.java"


# static fields
.field private static final AUDIO_ALBUM_ARTIST_INDEX:I = 0xc

.field private static final AUDIO_ALBUM_ID_INDEX:I = 0xb

.field private static final AUDIO_ALBUM_INDEX:I = 0x1

.field private static final AUDIO_ARTIST_INDEX:I = 0x2

.field private static final AUDIO_COLUMNS:[Ljava/lang/String; = null

.field private static final AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String; = null

.field private static final AUDIO_COMPOSER_INDEX:I = 0x3

.field private static final AUDIO_DATE_ADDED_INDEX:I = 0x4

.field private static final AUDIO_DURATION_INDEX:I = 0x5

.field private static final AUDIO_ID_COLUMNS:[Ljava/lang/String; = null

.field private static final AUDIO_ID_INDEX:I = 0x0

.field private static final AUDIO_MIME_TYPE_INDEX:I = 0x6

.field private static final AUDIO_SELECTION:Ljava/lang/String; = "is_music=1 OR is_podcast=1"

.field private static final AUDIO_SIZE_INDEX:I = 0x7

.field private static final AUDIO_TITLE_INDEX:I = 0x8

.field private static final AUDIO_TRACK_INDEX:I = 0x9

.field private static final AUDIO_YEAR_INDEX:I = 0xa

.field private static final COUNT_COLUMNS:[Ljava/lang/String; = null

.field private static final GENRE_COLUMNS:[Ljava/lang/String; = null

.field private static final GENRE_ID_INDEX:I = 0x0

.field private static final GENRE_MEMBER_COLUMNS:[Ljava/lang/String; = null

.field private static final GENRE_MEMBER_ID_INDEX:I = 0x0

.field private static final GENRE_NAME_INDEX:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MEDIA_STORE_FS_DEFAULT_VALUE:J = 0x0L

.field private static final MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String; = null

.field private static MEDIA_STORE_FS_ID_URI:Landroid/net/Uri; = null

.field private static final MEDIA_STORE_IMPORT_VERSION:J = 0x9L

.field private static final MEDIA_STORE_PLAYLIST_MEMBER_AUDIO_ID_INDEX:I = 0x0

.field private static final MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String; = null

.field private static final MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String; = null

.field private static final MUSIC_STORE_PLAYLIST_ITEM_ID_INDEX:I = 0x0

.field private static final MUSIC_STORE_PLAYLIST_ITEM_MUSIC_SOURCE_ID_INDEX:I = 0x1

.field private static final PLAYLIST_COLUMNS:[Ljava/lang/String; = null

.field private static final PLAYLIST_DATE_ADDED_INDEX:I = 0x2

.field private static final PLAYLIST_DATE_MODIFIED_INDEX:I = 0x3

.field private static final PLAYLIST_ID_INDEX:I = 0x0

.field private static final PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String; = null

.field private static final PLAYLIST_NAME_INDEX:I = 0x1

.field static final PREFERENCE_FILE:Ljava/lang/String; = "store.preferences"

.field private static final PREF_MEDIA_STORE_IMPORT_DB_VERSION:Ljava/lang/String; = "media.store.import.db.version"

.field private static final PREF_MEDIA_STORE_IMPORT_DB_VERSION_CHECK:Ljava/lang/String; = "media.store.import.db.version.check"

.field private static final PREF_MEDIA_STORE_IMPORT_FS_ID:Ljava/lang/String; = "media.store.import.fs_id"

.field private static final PREF_MEDIA_STORE_IMPORT_TIME:Ljava/lang/String; = "media.store.import.time"

.field private static final PREF_MEDIA_STORE_IMPORT_VERSION:Ljava/lang/String; = "media.store.import.version"

.field private static final TAG:Ljava/lang/String; = "MediaStoreImporter"

.field private static final UPDATE_POST_SYNC_MESSAGE_TYPE:I

.field private static final sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAddedMusicCount:I

.field private mAudioFilesInMediaStoreCount:I

.field private mContext:Landroid/content/Context;

.field private mCreatedPlaylistCount:I

.field private mDeletedMusicCount:I

.field private mDeletedPlaylistCount:I

.field private mDeletedPlaylistItemCount:I

.field private mImportChangesSinceDate:J

.field private mInsertedPlaylistItemCount:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mStore:Lcom/google/android/music/store/Store;

.field private mUpdatedMusicCount:I

.field private mUpdatedPlaylistCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    const-string v0, "MediaStoreImporter"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    .line 40
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "fsid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_ID_COLUMNS:[Ljava/lang/String;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "composer"

    aput-object v1, v0, v6

    const-string v1, "date_added"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "album_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS:[Ljava/lang/String;

    .line 82
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "composer"

    aput-object v1, v0, v6

    const-string v1, "date_added"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

    .line 113
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_COLUMNS:[Ljava/lang/String;

    .line 119
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

    .line 122
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    .line 133
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v4

    const-string v1, "MusicSourceId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String;

    .line 145
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 180
    return-void
.end method

.method private collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V
    .locals 8
    .parameter
    .parameter "mediaStoreCursor"
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 656
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 633
    .local v4, savedPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 634
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 635
    const/16 v5, 0xb

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 636
    .local v2, mediaStoreAlbumId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 637
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getMediaStoreAlbumArt(J)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 655
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #mediaStoreAlbumId:J
    :cond_3
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .line 643
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #mediaStoreAlbumId:J
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private getAllAudioCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 704
    const/4 v6, 0x0

    .line 705
    .local v6, count:I
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->COUNT_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 710
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 714
    :cond_0
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 717
    return v6

    .line 714
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getLocalPlaylistsFromMusicStore(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, ids:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 1215
    .local v8, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1217
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "LISTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MediaStoreId"

    aput-object v4, v2, v3

    const-string v3, "MediaStoreId NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1220
    if-eqz v8, :cond_0

    .line 1221
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1226
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1227
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1226
    :cond_0
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1227
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1229
    return-void
.end method

.method private getMediaDbVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 387
    .local v0, version:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 385
    .end local v0           #version:Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .restart local v0       #version:Ljava/lang/String;
    goto :goto_0
.end method

.method private getMediaStoreAudioCursor(Z)Landroid/database/Cursor;
    .locals 14
    .parameter "getAlbumArtist"

    .prologue
    const-wide/16 v12, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, selectionParams:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_1

    .line 423
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, time:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionParams:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    .line 425
    .restart local v4       #selectionParams:[Ljava/lang/String;
    const-string v3, "(is_music=1 OR is_podcast=1)  AND (date_added >=?  OR date_modified >=?  )"

    .line 435
    .end local v9           #time:Ljava/lang/String;
    .local v3, audioSelection:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 436
    .local v6, count:I
    const/4 v7, 0x0

    .line 438
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

    :goto_1
    const-string v5, "date_added"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 445
    if-nez v7, :cond_3

    .line 446
    const-string v0, "MediaStoreImporter"

    const-string v1, "Failed to get the cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_2
    return-object v7

    .line 432
    .end local v3           #audioSelection:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v3, "is_music=1 OR is_podcast=1"

    .restart local v3       #audioSelection:Ljava/lang/String;
    goto :goto_0

    .line 438
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS:[Ljava/lang/String;

    goto :goto_1

    .line 450
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 451
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v0, :cond_0

    .line 452
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_5

    .line 453
    const-string v0, "MediaStoreImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of new/modified songs in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 460
    .local v8, e:Ljava/lang/RuntimeException;
    if-nez p1, :cond_4

    .line 461
    const-string v0, "MediaStoreImporter"

    const-string v1, "Exception while executing media store query"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    :cond_4
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 464
    const/4 v7, 0x0

    goto :goto_2

    .line 455
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_5
    :try_start_2
    const-string v0, "MediaStoreImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of songs in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private static getMediaStoreFsId(Landroid/content/ContentResolver;)J
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 396
    const-wide/16 v7, 0x0

    .line 397
    .local v7, fsId:J
    sget-object v1, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 404
    :cond_0
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 406
    return-wide v7

    .line 404
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private haveNonMediaStorePlaylist(Ljava/lang/String;)Z
    .locals 12
    .parameter "playlistName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 974
    const/4 v9, 0x0

    .line 975
    .local v9, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 977
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "LISTS"

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String;

    const-string v3, "Name=? AND MediaStoreId IS NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 982
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 989
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v11

    :goto_0
    return v1

    .line 988
    :cond_0
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 989
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v1, v10

    goto :goto_0

    .line 988
    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 989
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method private importAudioFiles(Landroid/database/Cursor;)V
    .locals 25
    .parameter "cursor"

    .prologue
    .line 472
    const/16 v18, 0x0

    .line 473
    .local v18, success:Z
    const/4 v12, 0x0

    .line 474
    .local v12, musicInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v13, 0x0

    .line 475
    .local v13, musicUpdate:Landroid/database/sqlite/SQLiteStatement;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v4, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 479
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v9, importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v5}, Lcom/google/android/music/store/MusicFile;->compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 481
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_0

    .line 482
    invoke-static {v5}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 485
    :cond_0
    new-instance v14, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v14}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 486
    .local v14, normalizer:Lcom/google/android/music/store/TagNormalizer;
    new-instance v8, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v8}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 487
    .local v8, file:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v8, v14}, Lcom/google/android/music/store/MusicFile;->setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V

    .line 489
    const/16 v20, 0x1

    .line 492
    .local v20, updateRecentItems:Z
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 494
    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->reset()V

    .line 495
    const-wide/16 v15, -0x1

    .line 497
    .local v15, sourceId:J
    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 498
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 499
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    .line 500
    .local v17, sourceIdStr:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_2

    .line 504
    sget-object v21, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/store/MusicFile;->readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 509
    :cond_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 510
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 511
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 512
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 514
    const/16 v21, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    move-object v0, v8

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 515
    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object v0, v8

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 516
    const/16 v21, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setMimeType(Ljava/lang/String;)V

    .line 517
    const/16 v21, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object v0, v8

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 518
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 519
    const/4 v6, 0x0

    .line 520
    .local v6, discNumber:S
    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v19

    .line 522
    .local v19, track:S
    const/16 v21, 0x3e8

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 523
    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move v6, v0

    .line 524
    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v19, v0

    .line 526
    :cond_3
    invoke-virtual {v8, v6}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 527
    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 528
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v21

    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 529
    sget-object v21, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 530
    const/16 v21, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 532
    :cond_4
    const/16 v21, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 533
    .local v10, mediaStoreAlbumId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v10, v21

    if-eqz v21, :cond_a

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #discNumber:S
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 534
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mediastore:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 546
    :goto_1
    const/16 v21, 0x12c

    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setLocalCopyType(I)V

    .line 549
    const-string v21, "<unknown>"

    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 550
    const/16 v21, 0x0

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 552
    :cond_5
    const-string v21, "<unknown>"

    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 553
    const/16 v21, 0x0

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 558
    :cond_6
    const-string v21, "<unknown>"

    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 559
    const/16 v21, 0x0

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_7
    :try_start_1
    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_b

    .line 564
    invoke-virtual {v8, v13, v5}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    :goto_2
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    rem-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 577
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object v1, v5

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 580
    if-eqz v20, :cond_9

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->countRecentItems(Landroid/content/Context;)I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 589
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->importMediaStoreGenre(Lcom/google/android/music/store/TagNormalizer;Ljava/util/HashSet;)V

    .line 590
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 592
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 596
    const-wide/16 v21, 0xc8

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 602
    .end local v8           #file:Lcom/google/android/music/store/MusicFile;
    .end local v9           #importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v10           #mediaStoreAlbumId:J
    .end local v14           #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .end local v15           #sourceId:J
    .end local v17           #sourceIdStr:Ljava/lang/String;
    .end local v19           #track:S
    .end local v20           #updateRecentItems:Z
    :catchall_0
    move-exception v21

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 603
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v21

    .line 537
    .restart local v8       #file:Lcom/google/android/music/store/MusicFile;
    .restart local v9       #importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v10       #mediaStoreAlbumId:J
    .restart local v14       #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .restart local v15       #sourceId:J
    .restart local v17       #sourceIdStr:Ljava/lang/String;
    .restart local v19       #track:S
    .restart local v20       #updateRecentItems:Z
    :cond_a
    const/16 v21, 0x0

    :try_start_3
    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 567
    :cond_b
    :try_start_4
    invoke-virtual {v8, v12}, Lcom/google/android/music/store/MusicFile;->insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 570
    :catch_0
    move-exception v21

    move-object/from16 v7, v21

    .line 571
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    const-string v21, "MediaStoreImporter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to insert local file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lcom/google/android/music/store/MusicFile;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 585
    .end local v7           #e:Ljava/lang/Exception;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 599
    .end local v10           #mediaStoreAlbumId:J
    .end local v15           #sourceId:J
    .end local v17           #sourceIdStr:Ljava/lang/String;
    .end local v19           #track:S
    :cond_d
    const/16 v18, 0x1

    .line 602
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 603
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 606
    return-void
.end method

.method private importMediaStoreGenre(Lcom/google/android/music/store/TagNormalizer;Ljava/util/HashSet;)V
    .locals 24
    .parameter "normalizer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/TagNormalizer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    .local p2, audioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    :goto_0
    return-void

    .line 735
    :cond_0
    const/16 v18, 0x0

    .line 736
    .local v18, howManyGenres:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 739
    .local v14, genreCursor:Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 740
    :try_start_0
    const-string v3, "MediaStoreImporter"

    const-string v4, "Failed to get the genre cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_0

    .line 743
    :cond_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 744
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_2

    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of generes in MediaStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v3

    mul-int/lit8 v13, v3, 0x6

    .line 748
    .local v13, bufferSize:I
    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v0, v21

    move v1, v13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 749
    .local v21, selectionBuffer:Ljava/lang/StringBuffer;
    new-instance v23, Ljava/lang/StringBuffer;

    move-object/from16 v0, v23

    move v1, v13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 750
    .local v23, updateBuffer:Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 751
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 752
    .local v15, genreId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 754
    .local v17, genreName:Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "<unknown>"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 760
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/utils/MusicTagUtils;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 762
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/music/store/Store;->canonicalizeAndGenerateId(Lcom/google/android/music/store/TagNormalizer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v19

    .line 765
    .local v19, idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 766
    const-string v3, "_id"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 771
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-string v4, "external"

    move-object v0, v4

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

    if-nez v21, :cond_7

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 779
    .local v20, memberCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_6

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_8

    .line 822
    :cond_6
    :try_start_3
    invoke-static/range {v20 .. v20}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 826
    .end local v13           #bufferSize:I
    .end local v15           #genreId:J
    .end local v17           #genreName:Ljava/lang/String;
    .end local v19           #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v20           #memberCursor:Landroid/database/Cursor;
    .end local v21           #selectionBuffer:Ljava/lang/StringBuffer;
    .end local v23           #updateBuffer:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    .line 771
    .restart local v13       #bufferSize:I
    .restart local v15       #genreId:J
    .restart local v17       #genreName:Ljava/lang/String;
    .restart local v19       #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v21       #selectionBuffer:Ljava/lang/StringBuffer;
    .restart local v23       #updateBuffer:Ljava/lang/StringBuffer;
    :cond_7
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 783
    .restart local v20       #memberCursor:Landroid/database/Cursor;
    :cond_8
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 784
    :cond_9
    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 785
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 786
    .local v11, audioId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v11, v5

    if-eqz v3, :cond_9

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 791
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 804
    .end local v11           #audioId:J
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 806
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 807
    const/16 v22, 0x0

    .line 808
    .local v22, success:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 810
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p0

    move-object/from16 v6, v17

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/store/MediaStoreImporter;->setGenre(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 813
    const/16 v22, 0x1

    .line 815
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 817
    if-eqz v22, :cond_b

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 822
    .end local v22           #success:Z
    :cond_b
    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 800
    .restart local v11       #audioId:J
    :cond_c
    :try_start_9
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unexpected absence of audio "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 822
    .end local v11           #audioId:J
    :catchall_1
    move-exception v3

    :try_start_a
    invoke-static/range {v20 .. v20}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 815
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22       #success:Z
    :catchall_2
    move-exception v3

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 826
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #genreId:J
    .end local v17           #genreName:Ljava/lang/String;
    .end local v19           #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v20           #memberCursor:Landroid/database/Cursor;
    .end local v22           #success:Z
    :cond_d
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private importNow()Z
    .locals 29

    .prologue
    .line 227
    const/16 v22, 0x0

    .line 229
    .local v22, success:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 231
    .local v9, importStartTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "store.preferences"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 233
    .local v14, prefs:Landroid/content/SharedPreferences;
    const-string v23, "media.store.import.db.version"

    const-string v24, ""

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 235
    .local v18, previouslyImportedMediaDbVersion:Ljava/lang/String;
    move-object/from16 v12, v18

    .line 236
    .local v12, mediaDbVersion:Ljava/lang/String;
    const-string v23, "media.store.import.db.version.check"

    const/16 v24, 0x0

    move-object v0, v14

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 238
    .local v13, mediaDbVersionCheck:Z
    if-eqz v13, :cond_0

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaDbVersion()Ljava/lang/String;

    move-result-object v12

    .line 247
    :cond_0
    const-string v23, "media.store.import.time"

    const-wide/16 v24, 0x0

    move-object v0, v14

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 248
    const-string v23, "media.store.import.version"

    const-wide/16 v24, 0x0

    move-object v0, v14

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 249
    .local v19, previouslyImportedVersion:J
    const-string v23, "media.store.import.fs_id"

    const-wide/16 v24, 0x0

    move-object v0, v14

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 251
    .local v16, previouslyImportedFsId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreFsId(Landroid/content/ContentResolver;)J

    move-result-wide v4

    .line 253
    .local v4, currentFsId:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    cmp-long v23, v23, v25

    if-gez v23, :cond_4

    .line 254
    sget-boolean v23, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v23, :cond_1

    const-string v23, "MediaStoreImporter"

    const-string v24, "No valid media store import"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 273
    :cond_2
    :goto_0
    sget-object v23, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreAudioCursor(Z)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3

    sget-object v23, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 277
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreAudioCursor(Z)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    if-eqz v6, :cond_3

    .line 280
    const-string v23, "MediaStoreImporter"

    const-string v24, "Current system does not support album artist tag"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v23, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    :cond_3
    if-nez v6, :cond_7

    .line 286
    const-string v23, "MediaStoreImporter"

    const-string v24, "Failed to get the audio cursor"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v23, 0x0

    .line 374
    :goto_1
    return v23

    .line 256
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    const-wide/16 v23, 0x9

    cmp-long v23, v19, v23

    if-eqz v23, :cond_5

    .line 257
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MediaStore import needs an upgrade from version "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x9

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto :goto_0

    .line 260
    :cond_5
    cmp-long v23, v16, v4

    if-eqz v23, :cond_6

    .line 261
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "File system changed since previous import from "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto/16 :goto_0

    .line 264
    :cond_6
    if-eqz v13, :cond_2

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 266
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Media store database version has changed since previous import from \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\" to \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto/16 :goto_0

    .line 290
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 291
    .local v8, howManyFilesToImport:I
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 292
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_8

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->getAllAudioCount()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 296
    :cond_8
    const/16 v21, 0x0

    .line 299
    .local v21, removedPlaylistItemCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_9

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->deleteLocalMusic()V

    .line 303
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->importAudioFiles(Landroid/database/Cursor;)V

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_a

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->countLocalMusic()I

    move-result v11

    .line 310
    .local v11, localFilesInMusicStore:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v23, v0

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 311
    sget-boolean v23, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v23, :cond_a

    const-string v23, "MediaStoreImporter"

    const-string v24, "No need to delete local files"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v11           #localFilesInMusicStore:I
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v23, v0

    if-gtz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v23, v0

    if-gtz v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v23, v0

    if-lez v23, :cond_c

    .line 331
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/store/MediaStoreImporter;->setLocalMusicAlbumArtistBasedOnRemoteDup(Landroid/content/Context;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 335
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->importPlaylists()V

    .line 337
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v23, v0

    if-lez v23, :cond_e

    .line 338
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/android/music/store/PlayList;->removeLocalOrphanedItems(Landroid/content/Context;)I

    move-result v21

    .line 341
    :cond_e
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 342
    .local v15, prefsEdit:Landroid/content/SharedPreferences$Editor;
    const-string v23, "media.store.import.time"

    move-object v0, v15

    move-object/from16 v1, v23

    move-wide v2, v9

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v23, "media.store.import.version"

    const-wide/16 v24, 0x9

    move-object v0, v15

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v23, "media.store.import.fs_id"

    move-object v0, v15

    move-object/from16 v1, v23

    move-wide v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 346
    if-eqz v13, :cond_f

    .line 347
    const-string v23, "media.store.import.db.version"

    move-object v0, v15

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    const-string v23, "media.store.import.db.version.check"

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    :cond_f
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v22

    .line 353
    if-nez v22, :cond_10

    .line 354
    const-string v23, "MediaStoreImporter"

    const-string v24, "Failed to update preference file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_10
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 361
    if-eqz v22, :cond_11

    .line 362
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-nez v25, :cond_14

    const-string v25, "full"

    :goto_3
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Added music: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Updated music: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Deleted music: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Created playlists: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Updated playlists: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Deleted playlists: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Inserted playlist items: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Deleted playlist items: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Removed orphaned playlist items: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move/from16 v23, v22

    .line 374
    goto/16 :goto_1

    .line 312
    .end local v15           #prefsEdit:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #localFilesInMusicStore:I
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v23, v0

    move v0, v11

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v23, v0

    sub-int v7, v11, v23

    .line 315
    .local v7, expectedDeletions:I
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Need to delete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " local files"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->removeDeletedAudioFiles()V

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v23, v0

    move v0, v7

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 318
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Expected to delete "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " files but actually deleted "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 358
    .end local v7           #expectedDeletions:I
    .end local v11           #localFilesInMusicStore:I
    :catchall_0
    move-exception v23

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v23

    .line 323
    .restart local v11       #localFilesInMusicStore:I
    :cond_13
    :try_start_2
    const-string v23, "MediaStoreImporter"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Music store has "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v25, v0

    sub-int v25, v25, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " less files than media store after import"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 362
    .end local v11           #localFilesInMusicStore:I
    .restart local v15       #prefsEdit:Landroid/content/SharedPreferences$Editor;
    :cond_14
    const-string v25, "incremental"

    goto/16 :goto_3
.end method

.method private importPlaylist(JLjava/lang/String;Ljava/lang/Long;Landroid/database/Cursor;)V
    .locals 22
    .parameter "mediaStorePlaylistId"
    .parameter "playlistName"
    .parameter "musicStorePlaylistId"
    .parameter "mediaStoreItemCursor"

    .prologue
    .line 1006
    new-instance v15, Lcom/google/android/music/store/PlayList;

    invoke-direct {v15}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 1007
    .local v15, list:Lcom/google/android/music/store/PlayList;
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 1008
    .local v16, playlistSourceId:Ljava/lang/String;
    const-wide/16 v17, 0x0

    .line 1010
    .local v17, startItemDeletionId:J
    const/16 v21, 0x0

    .line 1012
    .local v21, updated:Z
    if-eqz p4, :cond_0

    .line 1013
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/store/MediaStoreImporter;->matchPreviouslyImportedPlaylistItems(Landroid/database/Cursor;J)J

    move-result-wide v17

    .line 1017
    :cond_0
    const/16 v20, 0x0

    .line 1018
    .local v20, success:Z
    const/16 v19, 0x0

    .line 1019
    .local v19, statement:Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1021
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p4, :cond_4

    .line 1023
    :try_start_0
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1024
    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/PlayList;->setMediaStoreId(J)V

    .line 1025
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 1026
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/store/PlayList;->setSourceId(Ljava/lang/String;)V

    .line 1028
    invoke-static {v4}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 1029
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    .line 1032
    sget-boolean v5, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v5, :cond_1

    .line 1033
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Importing playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " songs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    :goto_0
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1090
    sget-boolean v5, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v5, :cond_2

    .line 1091
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "All items of playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already present."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_2
    :goto_1
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    const/16 v20, 0x1

    .line 1115
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1119
    if-eqz v20, :cond_3

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static/range {p4 .. p4}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1123
    :cond_3
    :goto_2
    return-void

    .line 1040
    :cond_4
    :try_start_1
    sget-object v5, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    move-object v3, v15

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1043
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playlist \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dissapeared while being imported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_2

    .line 1047
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1048
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playlist \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "was modified while being imported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1115
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_2

    .line 1052
    :cond_6
    :try_start_3
    invoke-virtual {v15}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1053
    sget-boolean v5, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v5, :cond_7

    .line 1054
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was renamed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_7
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1059
    invoke-static {v4}, Lcom/google/android/music/store/PlayList;->compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 1060
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/PlayList;->update(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 1062
    const/16 v21, 0x1

    .line 1065
    :cond_8
    const-wide/16 v5, 0x0

    cmp-long v5, v17, v5

    if-eqz v5, :cond_1

    .line 1066
    const/4 v5, 0x0

    move-object v0, v4

    move-wide/from16 v1, v17

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v14

    .line 1067
    .local v14, item:Lcom/google/android/music/store/PlayList$Item;
    if-nez v14, :cond_9

    .line 1068
    const-string v5, "MediaStoreImporter"

    const-string v6, "Unexpected disappearance of the item from the playlist."

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1115
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_2

    .line 1073
    :cond_9
    :try_start_4
    const-string v5, "LISTITEMS"

    const-string v6, "ListId=? AND ClientPosition>=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v15}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v14}, Lcom/google/android/music/store/PlayList$Item;->getClientPosition()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1080
    .local v13, deletedItemsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    move v5, v0

    add-int/2addr v5, v13

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    .line 1081
    if-lez v13, :cond_1

    if-nez v21, :cond_1

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 1083
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1094
    .end local v13           #deletedItemsCount:I
    .end local v14           #item:Lcom/google/android/music/store/PlayList$Item;
    :cond_a
    invoke-virtual {v15}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v5

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p5

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I

    move-result v12

    .line 1099
    .local v12, appended:I
    if-lez v12, :cond_c

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    move v5, v0

    add-int/2addr v5, v12

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    .line 1105
    :cond_b
    :goto_3
    if-eqz p4, :cond_2

    if-nez v21, :cond_2

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 1107
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 1101
    :cond_c
    if-gez v12, :cond_b

    .line 1102
    const-string v5, "MediaStoreImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reached size limit in playlist \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1115
    .end local v12           #appended:I
    :catchall_0
    move-exception v5

    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v5
.end method

.method private importPlaylists()V
    .locals 22

    .prologue
    .line 851
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 853
    .local v21, previouslyImported:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->getLocalPlaylistsFromMusicStore(Ljava/util/Map;)V

    .line 860
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide v3, v0

    const-wide/16 v5, 0x3e8

    div-long v12, v3, v5

    .line 861
    .local v12, importDateInSeconds:J
    const/4 v11, 0x0

    .line 862
    .local v11, howManyLists:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 867
    .local v14, listCursor:Landroid/database/Cursor;
    if-nez v14, :cond_2

    .line 868
    :try_start_0
    const-string v3, "MediaStoreImporter"

    const-string v4, "Failed to get the playlist cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 971
    :cond_0
    :goto_1
    return-void

    .line 857
    .end local v11           #howManyLists:I
    .end local v12           #importDateInSeconds:J
    .end local v14           #listCursor:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/music/store/PlayList;->deleteAllMediaStorePlaylists(Landroid/content/Context;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_0

    .line 871
    .restart local v11       #howManyLists:I
    .restart local v12       #importDateInSeconds:J
    .restart local v14       #listCursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 872
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_3

    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of playlists in MediaStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_3
    const/4 v3, 0x1

    if-ge v11, v3, :cond_5

    .line 876
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :cond_4
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 965
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_1

    .line 878
    :cond_5
    :goto_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 880
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 881
    .local v16, mediaStorePlaylistId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 882
    .local v20, playlistName:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 883
    .local v9, addedDate:J
    const-wide/16 v18, 0x0

    .line 885
    .local v18, modifyDate:J
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 886
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 888
    :cond_6
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 889
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 906
    :cond_7
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 907
    :cond_8
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_5

    const-string v3, "MediaStoreImporter"

    const-string v4, "Skipping import of playlist with empty name"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 962
    .end local v9           #addedDate:J
    .end local v16           #mediaStorePlaylistId:J
    .end local v18           #modifyDate:J
    .end local v20           #playlistName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    .line 913
    .restart local v9       #addedDate:J
    .restart local v16       #mediaStorePlaylistId:J
    .restart local v18       #modifyDate:J
    .restart local v20       #playlistName:Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->haveNonMediaStorePlaylist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 914
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_5

    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping import of playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because non-media store playlist with same name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "already exits"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 921
    :cond_a
    const/4 v15, 0x0

    .line 935
    .local v15, mediaStoreItemCursor:Landroid/database/Cursor;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-string v4, "external"

    move-object v0, v4

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "play_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v8

    .line 944
    .end local v15           #mediaStoreItemCursor:Landroid/database/Cursor;
    .local v8, mediaStoreItemCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_c

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 945
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .local v7, musicStorePlaylistId:Ljava/lang/Long;
    move-object/from16 v3, p0

    move-wide/from16 v4, v16

    move-object/from16 v6, v20

    .line 947
    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/store/MediaStoreImporter;->importPlaylist(JLjava/lang/String;Ljava/lang/Long;Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 956
    .end local v7           #musicStorePlaylistId:Ljava/lang/Long;
    :cond_b
    :goto_3
    :try_start_6
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 950
    :cond_c
    :try_start_7
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_b

    .line 951
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping import of empty playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 956
    :catchall_1
    move-exception v3

    :goto_4
    :try_start_8
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v8           #mediaStoreItemCursor:Landroid/database/Cursor;
    .restart local v15       #mediaStoreItemCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    move-object v8, v15

    .end local v15           #mediaStoreItemCursor:Landroid/database/Cursor;
    .restart local v8       #mediaStoreItemCursor:Landroid/database/Cursor;
    goto :goto_4
.end method

.method static isAlbumArtistSupported()Z
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isMediaStoreImportValid(Landroid/content/Context;)Z
    .locals 15
    .parameter "context"

    .prologue
    const-wide/16 v13, 0x9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    .line 1189
    const-string v9, "store.preferences"

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1190
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v9, "media.store.import.time"

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1191
    .local v2, currentImportedDate:J
    const-string v9, "media.store.import.version"

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1192
    .local v6, currentImportedVersion:J
    const-string v9, "media.store.import.fs_id"

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1195
    .local v4, currentImportedFsId:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreFsId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 1197
    .local v0, currentFsId:J
    const-wide/16 v9, 0x1

    cmp-long v9, v2, v9

    if-gez v9, :cond_1

    .line 1198
    sget-boolean v9, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v9, :cond_0

    const-string v9, "MediaStoreImporter"

    const-string v10, "No valid media store import"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v9, v12

    .line 1210
    :goto_0
    return v9

    .line 1200
    :cond_1
    cmp-long v9, v6, v13

    if-eqz v9, :cond_2

    .line 1201
    const-string v9, "MediaStoreImporter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MediaStore import needs an upgrade from version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v12

    .line 1203
    goto :goto_0

    .line 1204
    :cond_2
    cmp-long v9, v4, v0

    if-eqz v9, :cond_3

    .line 1205
    const-string v9, "MediaStoreImporter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File system changed since previous import from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v12

    .line 1207
    goto :goto_0

    .line 1210
    :cond_3
    const/4 v9, 0x1

    goto :goto_0
.end method

.method private matchPreviouslyImportedPlaylistItems(Landroid/database/Cursor;J)J
    .locals 17
    .parameter "mediaCursor"
    .parameter "musicStorePlaylistId"

    .prologue
    .line 1140
    const-wide/16 v13, 0x0

    .line 1141
    .local v13, musicItemIdToDelete:J
    const/4 v12, 0x0

    .line 1142
    .local v12, musicCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1144
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "LISTITEMS"

    sget-object v4, Lcom/google/android/music/store/MediaStoreImporter;->MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String;

    const-string v5, "ListId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "ServerOrder, ClientPosition"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1151
    if-eqz v12, :cond_2

    .line 1152
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1153
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1154
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1156
    .local v10, audioId:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1158
    .local v15, musicSourceId:J
    cmp-long v3, v10, v15

    if-eqz v3, :cond_0

    .line 1161
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1162
    invoke-interface {v12}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1173
    .end local v10           #audioId:J
    .end local v15           #musicSourceId:J
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1174
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1175
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 1181
    :cond_2
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v3, v0

    invoke-virtual {v3, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1185
    return-wide v13

    .line 1168
    :cond_3
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v3

    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object v4, v0

    invoke-virtual {v4, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method private removeDeletedAudioFiles()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 659
    new-instance v9, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x40

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 660
    .local v9, selectionBuffer:Ljava/lang/StringBuffer;
    const-string v0, "SourceAccount"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_ID_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 665
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 675
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 685
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 679
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 680
    .local v8, length:I
    const/4 v0, 0x1

    sub-int v0, v8, v0

    const-string v1, ")"

    invoke-virtual {v9, v0, v8, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    .end local v8           #length:I
    :goto_1
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 689
    const/4 v10, 0x0

    .line 690
    .local v10, success:Z
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 692
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    const-string v0, "MUSIC"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 693
    const/4 v10, 0x1

    .line 695
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, v7, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 698
    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    if-lez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 701
    :cond_1
    return-void

    .line 682
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #success:Z
    :cond_2
    :try_start_3
    const-string v0, "MediaStoreImporter"

    const-string v1, "Deleting all local music"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 695
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #success:Z
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v7, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0
.end method

.method static requestMediaStoreVersionCheck(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 391
    const-string v1, "store.preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "media.store.import.db.version.check"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    return-void
.end method

.method private setGenre(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "genreName"
    .parameter "genreId"
    .parameter "canonicalGenreName"
    .parameter "ids"

    .prologue
    .line 833
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 834
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "Genre"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v2, "GenreId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 836
    const-string v2, "CanonicalGenre"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GenreId=0 AND SourceAccount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SourceId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, where:Ljava/lang/String;
    const-string v2, "MUSIC"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method static setLocalMusicAlbumArtistBasedOnRemoteDup(Landroid/content/Context;)I
    .locals 15
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 1248
    sget-object v12, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_0

    move v12, v13

    .line 1353
    :goto_0
    return v12

    .line 1258
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v9

    .line 1259
    .local v9, store:Lcom/google/android/music/store/Store;
    const/4 v2, 0x0

    .line 1260
    .local v2, count:I
    const/4 v1, 0x0

    .line 1261
    .local v1, c:Landroid/database/Cursor;
    invoke-virtual {v9}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1264
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT DISTINCT local.Id, remote.AlbumArtist FROM MUSIC as local, MUSIC as remote  WHERE local.CanonicalName=remote.CanonicalName AND local.CanonicalAlbum=remote.CanonicalAlbum AND local.DiscNumber=remote.DiscNumber AND local.TrackNumber=remote.TrackNumber AND abs(local.Duration - remote.Duration) < 5000 AND local.SourceAccount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "local."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "AlbumArtistOrigin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " OR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "local."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "AlbumArtistId"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "remote."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "SourceAccount"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "remote."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "AlbumArtistOrigin"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1305
    if-eqz v1, :cond_1

    .line 1306
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 1309
    :cond_1
    invoke-virtual {v9, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1312
    const/4 v3, 0x0

    .line 1313
    const/4 v11, 0x0

    .line 1314
    .local v11, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v10, 0x0

    .line 1316
    .local v10, success:Z
    if-lez v2, :cond_2

    .line 1317
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1318
    invoke-static {v3}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 1320
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1321
    .local v8, resolver:Landroid/content/ContentResolver;
    new-instance v5, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v5}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 1322
    .local v5, file:Lcom/google/android/music/store/MusicFile;
    const/4 v2, 0x0

    .line 1323
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1324
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1325
    .local v6, id:J
    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1327
    .local v0, albumArtist:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/music/store/MusicFile;->load(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1328
    invoke-virtual {v5, v0}, Lcom/google/android/music/store/MusicFile;->forceAlbumArtist(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v5, v11, v3}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1330
    add-int/lit8 v2, v2, 0x1

    .line 1331
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v12

    if-nez v12, :cond_4

    rem-int/lit16 v12, v2, 0x200

    if-nez v12, :cond_3

    .line 1332
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v9, v3, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1333
    const/4 v3, 0x0

    .line 1334
    sget-object v12, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1335
    invoke-virtual {v9}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1336
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1338
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 1339
    .local v4, e:Lcom/google/android/music/store/DataNotFoundException;
    :try_start_3
    sget-boolean v12, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v12, :cond_3

    .line 1340
    const-string v12, "MediaStoreImporter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Local music file with id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " disappeared"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1346
    .end local v0           #albumArtist:Ljava/lang/String;
    .end local v4           #e:Lcom/google/android/music/store/DataNotFoundException;
    .end local v5           #file:Lcom/google/android/music/store/MusicFile;
    .end local v6           #id:J
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v12

    if-eqz v3, :cond_5

    .line 1347
    invoke-virtual {v9, v3, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1349
    :cond_5
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1350
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v12

    .line 1309
    .end local v10           #success:Z
    .end local v11           #update:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v12

    invoke-virtual {v9, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v12

    .line 1344
    .restart local v5       #file:Lcom/google/android/music/store/MusicFile;
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #success:Z
    .restart local v11       #update:Landroid/database/sqlite/SQLiteStatement;
    :cond_6
    const/4 v10, 0x1

    .line 1346
    if-eqz v3, :cond_7

    .line 1347
    invoke-virtual {v9, v3, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1349
    :cond_7
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1350
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v12, v2

    .line 1353
    goto/16 :goto_0
.end method

.method public static updateLocalMusicBasedOnRemoteContentAsync(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1360
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 1362
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 1364
    new-instance v2, Lcom/google/android/music/store/MediaStoreImporter$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/MediaStoreImporter$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 1369
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1370
    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 1371
    return-void
.end method


# virtual methods
.method declared-synchronized doImport(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 194
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    .line 206
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 208
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    .line 213
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->createDatabase()V

    .line 215
    invoke-direct {p0}, Lcom/google/android/music/store/MediaStoreImporter;->importNow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 218
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    .line 218
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invalidateMediaStoreImport(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1233
    const-string v1, "store.preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1234
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "media.store.import.time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1235
    const-string v1, "media.store.import.version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1236
    const-string v1, "media.store.import.fs_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1238
    return-void
.end method
