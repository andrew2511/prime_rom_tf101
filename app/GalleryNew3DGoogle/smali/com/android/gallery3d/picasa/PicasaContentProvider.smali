.class public final Lcom/android/gallery3d/picasa/PicasaContentProvider;
.super Lcom/android/gallery3d/picasa/TableContentProvider;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;,
        Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;,
        Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;
    }
.end annotation


# static fields
.field public static final ALBUMS_URI:Landroid/net/Uri;

.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CACHE_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final CACHE_PATHNAME_PROJECTION:[Ljava/lang/String;

.field private static final CACHE_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final ID_CACHE_FLAG_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final ID_CONTENT_URL_PROJECTION:[Ljava/lang/String;

.field private static final ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

.field private static final ID_EDITED_PROJECTION:[Ljava/lang/String;

.field private static final ID_SCREENNAIL_URL_PROJECTION:[Ljava/lang/String;

.field public static final PHOTOS_URI:Landroid/net/Uri;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;


# instance fields
.field private mActiveAccount:Landroid/accounts/Account;

.field private final mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

.field private mCacheDir:Ljava/lang/String;

.field private final mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;

.field private volatile mStopSync:Z

.field private mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v0, "content://com.android.gallery3d.picasa.contentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_edited"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_EDITED_PROJECTION:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_edited"

    aput-object v1, v0, v3

    const-string v1, "display_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cache_flag"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->CACHE_FLAG_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cache_status"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->CACHE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cache_pathname"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->CACHE_PATHNAME_PROJECTION:[Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "content_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_CONTENT_URL_PROJECTION:[Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "screennail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_SCREENNAIL_URL_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "cache_flag"

    aput-object v1, v0, v3

    const-string v1, "cache_status"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_CACHE_FLAG_STATUS_PROJECTION:[Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/TableContentProvider;-><init>()V

    .line 75
    new-instance v0, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/PhotoEntry;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 76
    new-instance v0, Lcom/android/gallery3d/picasa/AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/AlbumEntry;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    .line 981
    return-void
.end method

.method private cleanCache(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 716
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 717
    .local v11, keepSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 719
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_CACHE_FLAG_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 723
    .local v10, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 724
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 725
    .local v3, albumId:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 726
    .local v8, cacheFlag:I
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 727
    .local v9, cacheStatus:I
    invoke-static {v8}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->flagToTargetStatus(I)I

    move-result v6

    .line 728
    .local v6, targetStatus:I
    if-eq v8, v12, :cond_1

    if-ne v8, v13, :cond_3

    .line 730
    :cond_1
    if-eq v9, v6, :cond_2

    if-eq v9, v12, :cond_2

    .line 732
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    :cond_2
    move-object v1, p0

    move-object v2, v0

    move-object v5, v11

    .line 737
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->collectCacheFilesForAlbum(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashSet;I)V

    .line 741
    invoke-direct {p0, v0, v3, v4, v6}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->clearCacheStatusForPhotosInAlbum(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 761
    .end local v3           #albumId:J
    .end local v6           #targetStatus:I
    .end local v8           #cacheFlag:I
    .end local v9           #cacheStatus:I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 742
    .restart local v3       #albumId:J
    .restart local v6       #targetStatus:I
    .restart local v8       #cacheFlag:I
    .restart local v9       #cacheStatus:I
    :cond_3
    if-nez v8, :cond_0

    .line 744
    if-eqz v9, :cond_4

    if-eq v9, v12, :cond_4

    .line 746
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 751
    :cond_4
    invoke-direct {p0, v0, v3, v4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->clearCacheStatusForPhotosInAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 754
    if-eqz v9, :cond_0

    .line 755
    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 761
    .end local v3           #albumId:J
    .end local v6           #targetStatus:I
    .end local v8           #cacheFlag:I
    .end local v9           #cacheStatus:I
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 765
    invoke-direct {p0, v11}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteUnusedCacheFiles(Ljava/util/HashSet;)V

    .line 766
    return-void
.end method

.method private clearCacheStatusForPhotosInAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 7
    .parameter "db"
    .parameter "albumId"

    .prologue
    const/4 v6, 0x0

    .line 790
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 791
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    const-string v3, "cache_pathname"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "album_id=? AND (cache_pathname IS NOT NULL or cache_status<>0)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 798
    .local v0, rows:I
    if-lez v0, :cond_0

    .line 799
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyPhotoChange()V

    .line 801
    :cond_0
    return-void
.end method

.method private clearCacheStatusForPhotosInAlbum(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .locals 6
    .parameter "db"
    .parameter "albumId"
    .parameter "targetStatus"

    .prologue
    const/4 v5, 0x0

    .line 806
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 807
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "cache_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v4, "cache_pathname"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 813
    .local v2, whereArgs:[Ljava/lang/String;
    sget-object v3, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v4, "album_id=? AND cache_status<>?"

    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 815
    .local v0, rows:I
    if-lez v0, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyPhotoChange()V

    .line 818
    :cond_0
    return-void
.end method

.method private collectCacheFilesForAlbum(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashSet;I)V
    .locals 10
    .parameter "db"
    .parameter "albumId"
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, keepSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 770
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 774
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->CACHE_PATHNAME_PROJECTION:[Ljava/lang/String;

    const-string v3, "album_id=? AND cache_status=? AND cache_pathname IS NOT NULL"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 778
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 780
    .local v9, pathname:Ljava/lang/String;
    invoke-virtual {p4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 783
    .end local v9           #pathname:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 785
    return-void
.end method

.method private deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 882
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deletePhotosForAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 885
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/picasa/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 886
    return-void
.end method

.method private deleteCache(JJ)V
    .locals 3
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    .line 917
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheFileName(JJ)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, pathname:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 921
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PicasaContentProvider"

    invoke-static {v2, v1}, Lcom/android/gallery3d/picasa/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteCacheForAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "db"
    .parameter "albumId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 902
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 903
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "album_id=?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 908
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteCache(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 914
    return-void
.end method

.method private deletePhoto(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 1
    .parameter "db"
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    .line 897
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/gallery3d/picasa/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 898
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteCache(JJ)V

    .line 899
    return-void
.end method

.method private deletePhotosForAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 889
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteCacheForAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 892
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 893
    .local v0, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v2, "album_id=?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private deleteUnusedCacheFiles(Ljava/util/HashSet;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, keepSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, cacheDir:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, allDirs:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_3

    .line 825
    :try_start_0
    aget-object v8, v0, v4

    const-string v9, "picasa-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 826
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, dirName:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, allFiles:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 823
    .end local v1           #allFiles:[Ljava/lang/String;
    .end local v3           #dirName:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 829
    .restart local v1       #allFiles:[Ljava/lang/String;
    .restart local v3       #dirName:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    array-length v8, v1

    if-ge v5, v8, :cond_0

    .line 830
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, pathname:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 832
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 836
    .end local v1           #allFiles:[Ljava/lang/String;
    .end local v3           #dirName:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #pathname:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 837
    .local v7, t:Ljava/lang/Throwable;
    const-string v8, "PicasaContentProvider"

    invoke-static {v8, v7}, Lcom/android/gallery3d/picasa/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 840
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method private deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 857
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    .line 858
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_account=?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 863
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deletePhotosForAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 871
    sget-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v1, "sync_account=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 874
    sget-object v0, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 876
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyAlbumChange()V

    .line 877
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyPhotoChange()V

    .line 878
    return-void
.end method

.method private downloadPhoto(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "photoId"
    .parameter "url"
    .parameter "pathname"

    .prologue
    const/4 v8, 0x0

    .line 693
    const/4 v3, 0x0

    .line 694
    .local v3, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 696
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 699
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 700
    .local v0, buffer:[B
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 701
    .local v5, rc:I
    :goto_0
    if-lez v5, :cond_1

    .line 702
    iget-boolean v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_0

    .line 710
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 711
    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    move v6, v8

    .end local v0           #buffer:[B
    .end local v5           #rc:I
    :goto_1
    return v6

    .line 703
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #rc:I
    :cond_0
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 704
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v2, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    goto :goto_0

    .line 706
    :cond_1
    const/4 v6, 0x1

    .line 710
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 711
    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_1

    .line 707
    .end local v0           #buffer:[B
    .end local v5           #rc:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 710
    .local v1, ex:Ljava/io/IOException;
    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 711
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move v6, v8

    goto :goto_1

    .line 710
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 711
    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 710
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 707
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static flagToTargetStatus(I)I
    .locals 1
    .parameter "flag"

    .prologue
    .line 550
    packed-switch p0, :pswitch_data_0

    .line 556
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 552
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 554
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 845
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 849
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 847
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 848
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PicasaContentProvider"

    const-string v3, "Fail to getAvailableStorage"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/picasa/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getCacheDirName(J)Ljava/lang/String;
    .locals 2
    .parameter "albumId"

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picasa-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mCacheDir:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mCacheDir:Ljava/lang/String;

    .line 91
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mCacheDir:Ljava/lang/String;

    return-object v1

    .line 89
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCacheFileName(JJ)Ljava/lang/String;
    .locals 2
    .parameter "albumId"
    .parameter "photoId"

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picasa-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSyncEnabled(Ljava/lang/String;Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;)Z
    .locals 6
    .parameter "accountName"
    .parameter "context"

    .prologue
    .line 281
    iget-object v4, p1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    if-nez v4, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 284
    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 285
    .local v1, accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    array-length v3, v1

    .line 286
    .local v3, numAccounts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 287
    aget-object v0, v1, v2

    .line 288
    .local v0, account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    iget-object v4, v0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, v0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    const-string v5, "com.android.gallery3d.picasa.contentprovider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 292
    .end local v0           #account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :goto_1
    return v4

    .line 286
    .restart local v0       #account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v0           #account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private notifyAlbumChange()V
    .locals 4

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 656
    return-void
.end method

.method private notifyPhotoChange()V
    .locals 4

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 660
    return-void
.end method

.method private syncAlbumsForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Lcom/android/gallery3d/picasa/UserEntry;Landroid/content/SyncResult;)V
    .locals 22
    .parameter "context"
    .parameter "user"
    .parameter "syncResult"

    .prologue
    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 350
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_EDITED_PROJECTION:[Ljava/lang/String;

    const-string v8, "sync_account=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date_edited"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 353
    .local v16, cursor:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 356
    .local v19, localCount:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    move-object/from16 v18, v0

    .line 357
    .local v18, local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 358
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 360
    new-instance v6, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x1

    move-object/from16 v0, v16

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;-><init>(JJI)V

    aput-object v6, v18, v17

    .line 357
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 366
    sget-object v11, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 367
    .local v11, albumSchema:Lcom/android/gallery3d/picasa/EntrySchema;
    new-instance v8, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    invoke-direct {v8}, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;-><init>()V

    .line 368
    .local v8, key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    .line 369
    .local v15, accountManager:Landroid/accounts/AccountManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    move-object/from16 v16, v0

    .end local v16           #cursor:Landroid/database/Cursor;
    new-instance v6, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;

    move-object/from16 v7, p0

    move-object/from16 v9, v18

    move-object/from16 v10, p2

    move-object v12, v5

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    invoke-direct/range {v6 .. v14}, Lcom/android/gallery3d/picasa/PicasaContentProvider$1;-><init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;Lcom/android/gallery3d/picasa/UserEntry;Lcom/android/gallery3d/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)V

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaApi;->getAlbums(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/android/gallery3d/picasa/UserEntry;Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)I

    move-result v21

    .line 398
    .local v21, result:I
    packed-switch v21, :pswitch_data_0

    .line 406
    sget-object v6, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/Entry;)J

    .line 409
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 410
    aget-object v20, v18, v17

    .line 411
    .local v20, metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    move v6, v0

    if-nez v6, :cond_1

    .line 412
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    move-wide v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 413
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numDeletes:J

    .line 409
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 400
    .end local v20           #metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 419
    :goto_2
    :pswitch_1
    return-void

    .line 418
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    goto :goto_2

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private syncCacheForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;JLandroid/content/SyncResult;)V
    .locals 23
    .parameter "context"
    .parameter "account"
    .parameter "albumId"
    .parameter "syncResult"

    .prologue
    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 564
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/android/gallery3d/picasa/PicasaContentProvider;->CACHE_FLAG_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 567
    .local v19, cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 569
    .local v18, cachingFlag:I
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 570
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 573
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 576
    if-nez v18, :cond_2

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 573
    :catchall_0
    move-exception v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v6

    .line 578
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->flagToTargetStatus(I)I

    move-result v17

    .line 582
    .local v17, targetStatus:I
    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 587
    .local v9, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x3

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_3

    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_CONTENT_URL_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    .line 592
    .local v7, idUrlProjection:[Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "album_id=? AND cache_status<>?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 595
    if-eqz v19, :cond_1

    .line 597
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_4

    .line 632
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 587
    .end local v7           #idUrlProjection:[Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_SCREENNAIL_URL_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    goto :goto_1

    .line 601
    .restart local v7       #idUrlProjection:[Ljava/lang/String;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheDirName(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v20

    .line 603
    .local v20, dirName:Ljava/lang/String;
    :try_start_3
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 609
    const/4 v6, 0x1

    :try_start_4
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p3

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 611
    const/16 v21, 0x0

    .line 613
    .local v21, stopped:Z
    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    move v6, v0

    if-eqz v6, :cond_8

    .line 615
    const/16 v21, 0x1

    .line 628
    :cond_6
    :goto_2
    if-nez v21, :cond_7

    .line 629
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 632
    :cond_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 604
    .end local v21           #stopped:Z
    :catch_0
    move-exception v6

    move-object/from16 v22, v6

    .line 605
    .local v22, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v6, "PicasaContentProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #idUrlProjection:[Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create cache dir: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 632
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 618
    .end local v22           #t:Ljava/lang/Throwable;
    .restart local v7       #idUrlProjection:[Ljava/lang/String;
    .restart local v21       #stopped:Z
    :cond_8
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 619
    .local v14, photoId:J
    const/4 v6, 0x1

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, url:Ljava/lang/String;
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p3

    .line 620
    invoke-direct/range {v10 .. v17}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncOnePhoto(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;JJLjava/lang/String;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    if-nez v6, :cond_5

    .line 622
    const/16 v21, 0x1

    .line 623
    goto :goto_2

    .line 632
    .end local v7           #idUrlProjection:[Ljava/lang/String;
    .end local v14           #photoId:J
    .end local v16           #url:Ljava/lang/String;
    .end local v20           #dirName:Ljava/lang/String;
    .end local v21           #stopped:Z
    :catchall_1
    move-exception v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private syncCacheForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 534
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 535
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v2

    .line 536
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_account=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 539
    .local v11, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-boolean v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 545
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 547
    return-void

    .line 541
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncCacheForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;JLandroid/content/SyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private syncOnePhoto(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;JJLjava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "albumId"
    .parameter "photoId"
    .parameter "url"
    .parameter "targetStatus"

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 665
    const/4 v2, 0x0

    .line 680
    :goto_0
    return v2

    .line 668
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getCacheFileName(JJ)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, pathname:Ljava/lang/String;
    invoke-direct {p0, p4, p5, p6, v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->downloadPhoto(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    const/4 v2, 0x0

    goto :goto_0

    .line 674
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v2, "cache_pathname"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyPhotoChange()V

    .line 680
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private syncPhotosForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/android/gallery3d/picasa/AlbumEntry;Landroid/content/SyncResult;)V
    .locals 31
    .parameter "context"
    .parameter "account"
    .parameter "album"
    .parameter "syncResult"

    .prologue
    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 448
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/AlbumEntry;->id:J

    move-wide/from16 v19, v0

    .line 449
    .local v19, albumId:J
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    .line 450
    .local v9, albumIdArgs:[Ljava/lang/String;
    sget-object v6, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ID_EDITED_INDEX_PROJECTION:[Ljava/lang/String;

    const-string v8, "album_id=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date_edited"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 452
    .local v24, cursor:Landroid/database/Cursor;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 456
    .local v28, localCount:I
    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    move-object/from16 v27, v0

    .line 457
    .local v27, local:[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    new-instance v26, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    invoke-direct/range {v26 .. v26}, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;-><init>()V

    .line 458
    .local v26, key:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 459
    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 461
    new-instance v10, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v6, 0x1

    move-object/from16 v0, v24

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v6, 0x2

    move-object/from16 v0, v24

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct/range {v10 .. v15}, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;-><init>(JJI)V

    aput-object v10, v27, v25

    .line 458
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 463
    :cond_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 464
    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 467
    sget-object v16, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 468
    .local v16, photoSchema:Lcom/android/gallery3d/picasa/EntrySchema;
    const/4 v6, 0x1

    new-array v12, v6, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v12, v6

    .line 469
    .local v12, displayIndex:[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    .line 470
    .local v23, accountManager:Landroid/accounts/AccountManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    move-object v6, v0

    new-instance v10, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;

    move-object/from16 v11, p0

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, p2

    move-object/from16 v17, v5

    move-object/from16 v18, p4

    invoke-direct/range {v10 .. v18}, Lcom/android/gallery3d/picasa/PicasaContentProvider$2;-><init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;[ILcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;[Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;Ljava/lang/String;Lcom/android/gallery3d/picasa/EntrySchema;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/SyncResult;)V

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaApi;->getAlbumPhotos(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/android/gallery3d/picasa/AlbumEntry;Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)I

    move-result v30

    .line 502
    .local v30, result:I
    packed-switch v30, :pswitch_data_0

    .line 512
    const/16 v25, 0x0

    .end local v9           #albumIdArgs:[Ljava/lang/String;
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 513
    aget-object v29, v27, v25

    .line 514
    .local v29, metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->survived:Z

    move v6, v0

    if-nez v6, :cond_1

    .line 515
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;->id:J

    move-wide/from16 v21, v0

    move-object/from16 v17, p0

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v22}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deletePhoto(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 516
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numDeletes:J

    .line 512
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 504
    .end local v29           #metadata:Lcom/android/gallery3d/picasa/PicasaContentProvider$EntryMetadata;
    .restart local v9       #albumIdArgs:[Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v6, v0

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    .line 505
    .end local v9           #albumIdArgs:[Ljava/lang/String;
    const-string v6, "PicasaContentProvider"

    const-string v7, "syncPhotosForAlbum error"

    invoke-static {v6, v7}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_2
    :pswitch_1
    return-void

    .line 521
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    .line 522
    sget-object v6, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/picasa/Entry;)J

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyAlbumChange()V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyPhotoChange()V

    goto :goto_2

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private syncPhotosForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 12
    .parameter "context"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 425
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/picasa/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_account=? AND photos_dirty=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 428
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v8, Lcom/android/gallery3d/picasa/AlbumEntry;

    invoke-direct {v8}, Lcom/android/gallery3d/picasa/AlbumEntry;-><init>()V

    .line 429
    .local v8, album:Lcom/android/gallery3d/picasa/AlbumEntry;
    const/4 v11, 0x0

    .local v11, i:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-eq v11, v9, :cond_2

    .line 430
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 431
    sget-object v1, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3, v8}, Lcom/android/gallery3d/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/picasa/Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-direct {p0, p1, p2, v8, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncPhotosForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/android/gallery3d/picasa/AlbumEntry;Landroid/content/SyncResult;)V

    .line 436
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 438
    const-string v1, "PicasaContentProvider"

    const-string v2, "syncPhotosForUser interrupted"

    invoke-static {v1, v2}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 441
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 442
    return-void
.end method

.method private syncUsers(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/android/gallery3d/picasa/UserEntry;
    .locals 11
    .parameter "context"
    .parameter "syncResult"

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 298
    iget-object v1, p1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 299
    .local v1, accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    array-length v6, v1

    .line 300
    .local v6, numUsers:I
    new-array v8, v6, [Lcom/android/gallery3d/picasa/UserEntry;

    .line 303
    .local v8, users:[Lcom/android/gallery3d/picasa/UserEntry;
    sget-object v7, Lcom/android/gallery3d/picasa/UserEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 304
    .local v7, schema:Lcom/android/gallery3d/picasa/EntrySchema;
    invoke-virtual {p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 305
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7, v3}, Lcom/android/gallery3d/picasa/EntrySchema;->queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 306
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 309
    :cond_0
    new-instance v4, Lcom/android/gallery3d/picasa/UserEntry;

    invoke-direct {v4}, Lcom/android/gallery3d/picasa/UserEntry;-><init>()V

    .line 310
    .local v4, entry:Lcom/android/gallery3d/picasa/UserEntry;
    invoke-virtual {v7, v2, v4}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    .line 315
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-eq v5, v6, :cond_1

    .line 316
    aget-object v9, v1, v5

    iget-object v9, v9, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 317
    aput-object v4, v8, v5

    .line 321
    :cond_1
    if-ne v5, v6, :cond_2

    .line 323
    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/gallery3d/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 324
    iget-object v9, v4, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-direct {p0, v3, v9}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 326
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 330
    .end local v4           #entry:Lcom/android/gallery3d/picasa/UserEntry;
    .end local v5           #i:I
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 333
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-eq v5, v6, :cond_6

    .line 334
    aget-object v4, v8, v5

    .line 335
    .restart local v4       #entry:Lcom/android/gallery3d/picasa/UserEntry;
    aget-object v0, v1, v5

    .line 336
    .local v0, account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    if-nez v4, :cond_4

    .line 337
    new-instance v4, Lcom/android/gallery3d/picasa/UserEntry;

    .end local v4           #entry:Lcom/android/gallery3d/picasa/UserEntry;
    invoke-direct {v4}, Lcom/android/gallery3d/picasa/UserEntry;-><init>()V

    .line 338
    .restart local v4       #entry:Lcom/android/gallery3d/picasa/UserEntry;
    iget-object v9, v0, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    iput-object v9, v4, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    .line 339
    aput-object v4, v8, v5

    .line 333
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 315
    .end local v0           #account:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 343
    .end local v4           #entry:Lcom/android/gallery3d/picasa/UserEntry;
    :cond_6
    return-object v8
.end method

.method private updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .locals 4
    .parameter "db"
    .parameter "albumId"
    .parameter "status"

    .prologue
    .line 647
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 650
    .local v1, whereArgs:[Ljava/lang/String;
    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 651
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyAlbumChange()V

    .line 652
    return-void
.end method

.method private updateAlbumCachingFlag(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .locals 4
    .parameter "db"
    .parameter "albumId"
    .parameter "flag"

    .prologue
    .line 638
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "cache_flag"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 641
    .local v1, whereArgs:[Ljava/lang/String;
    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->notifyAlbumChange()V

    .line 643
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/picasa/TableContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 98
    new-instance v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;

    const-string v2, "picasa.db"

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 101
    const-string v1, "com.android.gallery3d.picasa.contentprovider"

    const-string v2, "photos"

    const-string v3, "vnd.android.gallery3d.picasa.photo"

    sget-object v4, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/picasa/EntrySchema;)V

    .line 102
    const-string v1, "com.android.gallery3d.picasa.contentprovider"

    const-string v2, "albums"

    const-string v3, "vnd.android.gallery3d.picasa.album"

    sget-object v4, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/picasa/EntrySchema;)V

    .line 106
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;-><init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;Lcom/android/gallery3d/picasa/PicasaContentProvider$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PicasaContentProvider"

    const-string v2, "cannot get sync context"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;

    invoke-direct {v1, p1, v5}, Lcom/android/gallery3d/picasa/PicasaContentProvider$Database;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->setDatabase(Landroid/database/sqlite/SQLiteOpenHelper;)V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    .line 145
    .local v8, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.gallery3d.picasa.contentprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v3

    .line 184
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    .line 153
    .local v7, context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 154
    .local v10, type:Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 155
    .local v4, id:J
    invoke-virtual {v7}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 156
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "photos"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v9, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 159
    .local v9, photo:Lcom/android/gallery3d/picasa/PhotoEntry;
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, v1, v4, v5, v9}, Lcom/android/gallery3d/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/picasa/Entry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, v9, Lcom/android/gallery3d/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, v7, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    iget-object v2, v9, Lcom/android/gallery3d/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/picasa/PicasaApi;->deleteEntry(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 163
    iget-wide v2, v9, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deletePhoto(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 164
    iput-boolean v11, v7, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    move v0, v11

    .line 165
    goto :goto_0

    .line 169
    .end local v9           #photo:Lcom/android/gallery3d/picasa/PhotoEntry;
    :cond_2
    const-string v0, "albums"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

    .line 172
    .local v6, album:Lcom/android/gallery3d/picasa/AlbumEntry;
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/gallery3d/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/picasa/Entry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, v7, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    iget-object v2, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/picasa/PicasaApi;->deleteEntry(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-direct {p0, v1, v4, v5}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 177
    iput-boolean v11, v7, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    move v0, v11

    .line 178
    goto :goto_0

    .line 183
    .end local v6           #album:Lcom/android/gallery3d/picasa/AlbumEntry;
    :cond_3
    invoke-virtual {v7}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->finish()V

    move v0, v3

    .line 184
    goto :goto_0
.end method

.method public reloadAccounts()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 189
    return-void
.end method

.method public setActiveSyncAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    .line 193
    return-void
.end method

.method public setAlbumCachingFlag(JI)V
    .locals 2
    .parameter "albumId"
    .parameter "cachingFlag"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    .line 269
    .local v0, context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
    packed-switch p3, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 277
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->updateAlbumCachingFlag(Landroid/database/sqlite/SQLiteDatabase;JI)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stopCurrentSyncing()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    .line 84
    return-void
.end method

.method public syncPhotosAndCacheForAlbum(JZLandroid/content/SyncResult;)V
    .locals 7
    .parameter "albumId"
    .parameter "forceRefresh"
    .parameter "syncResult"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    .line 254
    .local v1, context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
    new-instance v6, Lcom/android/gallery3d/picasa/AlbumEntry;

    invoke-direct {v6}, Lcom/android/gallery3d/picasa/AlbumEntry;-><init>()V

    .line 255
    .local v6, album:Lcom/android/gallery3d/picasa/AlbumEntry;
    sget-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2, p1, p2, v6}, Lcom/android/gallery3d/picasa/EntrySchema;->queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/picasa/Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-boolean v0, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->login(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->isSyncEnabled(Ljava/lang/String;Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v6, p4}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncPhotosForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Lcom/android/gallery3d/picasa/AlbumEntry;Landroid/content/SyncResult;)V

    .line 259
    invoke-direct {p0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->cleanCache(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;)V

    .line 260
    iget-object v2, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    iget-wide v3, v6, Lcom/android/gallery3d/picasa/AlbumEntry;->id:J

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncCacheForAlbum(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;JLandroid/content/SyncResult;)V

    .line 264
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->finish()V

    .line 265
    return-void
.end method

.method public syncUsers(Landroid/content/SyncResult;)V
    .locals 1
    .parameter "syncResult"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncUsers(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/android/gallery3d/picasa/UserEntry;

    .line 197
    return-void
.end method

.method public syncUsersAndAlbums(ZLandroid/content/SyncResult;)V
    .locals 11
    .parameter "syncPhotosAndCache"
    .parameter "syncResult"

    .prologue
    .line 201
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mSyncContext:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;

    .line 205
    .local v1, context:Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncUsers(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Landroid/content/SyncResult;)[Lcom/android/gallery3d/picasa/UserEntry;

    move-result-object v5

    .line 208
    .local v5, users:[Lcom/android/gallery3d/picasa/UserEntry;
    const/4 v0, 0x0

    .line 209
    .local v0, activeUsername:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mActiveAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/picasa/PicasaApi;->canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    const/4 v2, 0x0

    .line 213
    .local v2, didSyncActiveUserName:Z
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v5

    .local v4, numUsers:I
    :goto_0
    if-eq v3, v4, :cond_1

    .line 214
    iget-boolean v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    if-eqz v6, :cond_4

    .line 231
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    if-nez v6, :cond_2

    .line 232
    invoke-direct {p0, v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->cleanCache(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;)V

    .line 233
    const/4 v3, 0x0

    array-length v4, v5

    :goto_1
    if-eq v3, v4, :cond_2

    .line 234
    iget-boolean v6, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mStopSync:Z

    if-eqz v6, :cond_7

    .line 245
    :cond_2
    if-nez v2, :cond_3

    .line 246
    iget-object v6, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 248
    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->finish()V

    .line 249
    return-void

    .line 215
    :cond_4
    if-eqz v0, :cond_6

    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 213
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_6
    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    const-string v7, "com.android.gallery3d.picasa.contentprovider"

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    const/4 v2, 0x1

    .line 220
    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    iget-object v7, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/picasa/PicasaApi;->setAuth(Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;)V

    .line 221
    aget-object v6, v5, v3

    invoke-direct {p0, v1, v6, p2}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncAlbumsForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Lcom/android/gallery3d/picasa/UserEntry;Landroid/content/SyncResult;)V

    .line 222
    if-eqz p1, :cond_5

    .line 223
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-direct {p0, v1, v6, p2}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncPhotosForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V

    goto :goto_2

    .line 235
    :cond_7
    if-eqz v0, :cond_9

    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 233
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    :cond_9
    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->account:Landroid/accounts/Account;

    const-string v7, "com.android.gallery3d.picasa.contentprovider"

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 241
    iget-object v6, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    iget-object v7, v1, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/picasa/PicasaApi;->setAuth(Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;)V

    .line 242
    aget-object v6, v5, v3

    iget-object v6, v6, Lcom/android/gallery3d/picasa/UserEntry;->account:Ljava/lang/String;

    invoke-direct {p0, v1, v6, p2}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncCacheForUser(Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;Ljava/lang/String;Landroid/content/SyncResult;)V

    goto :goto_3
.end method
