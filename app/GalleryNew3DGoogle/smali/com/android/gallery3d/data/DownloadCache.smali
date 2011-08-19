.class public Lcom/android/gallery3d/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DownloadCache$TaskProxy;,
        Lcom/android/gallery3d/data/DownloadCache$DownloadTask;,
        Lcom/android/gallery3d/data/DownloadCache$Entry;,
        Lcom/android/gallery3d/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mAssociateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/android/gallery3d/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    sget-object v0, Lcom/android/gallery3d/data/DownloadEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 50
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hash_code"

    aput-object v2, v1, v4

    const-string v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 57
    const-string v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    .line 66
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V
    .locals 2
    .parameter "application"
    .parameter "root"
    .parameter "capacity"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/gallery3d/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    .line 84
    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 85
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 86
    iput-wide p3, p0, Lcom/android/gallery3d/data/DownloadCache;->mCapacity:J

    .line 87
    new-instance v0, Lcom/android/gallery3d/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/DownloadCache$DatabaseHelper;-><init>(Lcom/android/gallery3d/data/DownloadCache;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/DownloadCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/DownloadCache;)Lcom/android/gallery3d/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/DownloadCache;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/android/gallery3d/data/DownloadCache$Entry;
    .locals 21
    .parameter "stringUrl"

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/util/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v17

    .line 93
    .local v17, hash:J
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x1

    aput-object p1, v9, v5

    .line 94
    .local v9, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v6, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/android/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v8, Lcom/android/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 97
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    new-instance v16, Ljava/io/File;

    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v16, file:Ljava/io/File;
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 100
    .local v19, id:J
    const/4 v14, 0x0

    .line 101
    .local v14, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    move-object v5, v0

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-object v14, v0

    .line 103
    if-nez v14, :cond_0

    .line 104
    new-instance v15, Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/android/gallery3d/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v14           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .local v15, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v15

    .line 107
    .end local v15           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v14       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v5, v14

    .line 113
    .end local v14           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .end local v16           #file:Ljava/io/File;
    .end local v19           #id:J
    :goto_0
    return-object v5

    .line 107
    .restart local v14       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v16       #file:Ljava/io/File;
    .restart local v19       #id:J
    :catchall_0
    move-exception v6

    :goto_1
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 111
    .end local v14           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .end local v16           #file:Ljava/io/File;
    .end local v19           #id:J
    :catchall_1
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 113
    const/4 v5, 0x0

    goto :goto_0

    .line 107
    .restart local v15       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v16       #file:Ljava/io/File;
    .restart local v19       #id:J
    :catchall_2
    move-exception v6

    move-object v14, v15

    .end local v15           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v14       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    goto :goto_1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 19
    .parameter "maxDeleteFileCount"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mCapacity:J

    move-wide v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    sget-object v4, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/android/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/android/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 191
    .local v12, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-lez p1, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mCapacity:J

    move-wide v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 193
    .local v13, id:J
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, url:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 195
    .local v16, size:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    move-object v3, v0

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 199
    .local v11, containsKey:Z
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    if-nez v11, :cond_1

    .line 201
    add-int/lit8 p1, p1, -0x1

    .line 202
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-wide v3, v0

    sub-long v3, v3, v16

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 203
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    sget-object v4, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 211
    .end local v11           #containsKey:Z
    .end local v13           #id:J
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #size:J
    .end local v18           #url:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    .end local v12           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 199
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #id:J
    .restart local v15       #path:Ljava/lang/String;
    .restart local v16       #size:J
    .restart local v18       #url:Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    .end local v13           #id:J
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #size:J
    .end local v18           #url:Ljava/lang/String;
    :cond_2
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method private declared-synchronized initialize()V
    .locals 9

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 231
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mInitialized:Z

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 239
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 247
    iget-wide v0, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/android/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    goto :goto_0

    .line 245
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 7
    .parameter "url"
    .parameter "file"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 217
    .local v1, size:J
    iget-wide v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    .line 219
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, hashCode:Ljava/lang/String;
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "hash_code"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "content_url"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v4, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    iget-object v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 216
    .end local v0           #hashCode:Ljava/lang/String;
    .end local v1           #size:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateLastAccess(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 179
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;
    .locals 7
    .parameter "jc"
    .parameter "url"

    .prologue
    .line 142
    iget-boolean v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/data/DownloadCache;->initialize()V

    .line 144
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, stringUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    monitor-enter v4

    .line 148
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    invoke-virtual {v5, v2}, Lcom/android/gallery3d/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 149
    .local v0, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    if-eqz v0, :cond_1

    .line 150
    iget-wide v5, v0, Lcom/android/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 151
    monitor-exit v4

    move-object v4, v0

    .line 175
    :goto_0
    return-object v4

    .line 153
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {v1}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;-><init>()V

    .line 157
    .local v1, proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    iget-object v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 158
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    iget-wide v5, v0, Lcom/android/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v5, v6}, Lcom/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 161
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v0

    goto :goto_0

    .line 153
    .end local v0           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .end local v1           #proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 166
    .restart local v0       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v1       #proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    .line 167
    .local v3, task:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    if-nez v3, :cond_3

    .line 168
    new-instance v3, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;

    .end local v3           #task:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcom/android/gallery3d/data/DownloadCache;Ljava/lang/String;)V

    .line 169
    .restart local v3       #task:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    iget-object v5, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v5, p0, Lcom/android/gallery3d/data/DownloadCache;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->access$002(Lcom/android/gallery3d/data/DownloadCache$DownloadTask;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 172
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/android/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 173
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v4

    goto :goto_0

    .line 173
    .end local v3           #task:Lcom/android/gallery3d/data/DownloadCache$DownloadTask;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public lookup(Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;
    .locals 6
    .parameter "url"

    .prologue
    .line 117
    iget-boolean v3, p0, Lcom/android/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/data/DownloadCache;->initialize()V

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, stringUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/android/gallery3d/util/LruCache;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 123
    .local v0, entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    if-eqz v0, :cond_1

    .line 124
    iget-wide v4, v0, Lcom/android/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 125
    monitor-exit v3

    move-object v3, v0

    .line 138
    :goto_0
    return-object v3

    .line 127
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {v1}, Lcom/android/gallery3d/data/DownloadCache$TaskProxy;-><init>()V

    .line 131
    .local v1, proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    iget-object v3, p0, Lcom/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 132
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    iget-wide v4, v0, Lcom/android/gallery3d/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    .line 135
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    goto :goto_0

    .line 127
    .end local v0           #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .end local v1           #proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 137
    .restart local v0       #entry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    .restart local v1       #proxy:Lcom/android/gallery3d/data/DownloadCache$TaskProxy;
    :cond_2
    :try_start_3
    monitor-exit v3

    .line 138
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method
